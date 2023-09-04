using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayrollUsingWebForms.WebForms
{
    public partial class EmployeeCRUD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetEmpList();
            }
        }
        SqlConnection connection=new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=SampleDB;Integrated Security=True;");
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Declaring variables and getting values from the form
                // int id=int.Parse(TextBox1.Text);
                string name = TextBox2.Text, email = TextBox3.Text, gender = RadioButtonList1.SelectedValue;
                string department = DropDownList1.SelectedValue.ToString(), notes = TextBox4.Text;
                DateTime startDate = DateTime.Parse(TextBox5.Text);
                int salary = int.Parse(TextBox6.Text);

                SqlCommand cmd = new SqlCommand("exec spAddEmp '" + name + "','" + email + "','" + gender + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "'", connection);
                connection.Open();
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Added.');", true);
                connection.Close();
                GetEmpList();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        void GetEmpList()
        {
            SqlCommand cmd = new SqlCommand("exec spGetAllEmp ", connection);
            connection.Open();
            SqlDataAdapter adapter= new SqlDataAdapter(cmd);
            DataTable table = new DataTable();
            adapter.Fill(table);
            GridView1.DataSource= table;
            GridView1.DataBind();
            connection.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id=int.Parse(TextBox1.Text);
            string name = TextBox2.Text, email = TextBox3.Text, gender = RadioButtonList1.SelectedValue;
            string department = DropDownList1.SelectedValue.ToString(), notes = TextBox4.Text;
            DateTime startDate = DateTime.Parse(TextBox5.Text);
            int salary = int.Parse(TextBox6.Text);

            SqlCommand cmd = new SqlCommand("exec spUpdateEmp '" + id + "','" + name + "','" + email + "','" + gender + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "'", connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.');", true);
            connection.Close();
            GetEmpList();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox1.Text);

            SqlCommand cmd = new SqlCommand("exec spDeleteEmp '" + id + "'",connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.');", true);
            connection.Close();
            GetEmpList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text=TextBox2.Text= TextBox3.Text = TextBox4.Text= TextBox5.Text= TextBox6.Text= string.Empty;
            DropDownList1.ClearSelection();
            RadioButtonList1.ClearSelection();
            GetEmpList();
        }
    }
}