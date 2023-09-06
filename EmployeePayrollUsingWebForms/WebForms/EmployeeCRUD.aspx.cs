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
                Reset();
                GetEmpList();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        void GetEmpList()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("exec spGetAllEmp ", connection);
                connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();
                adapter.Fill(table);
                GridView1.DataSource = table;
                GridView1.DataBind();
                connection.Close();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        int id = int.Parse(TextBox1.Text);
        //        string name = TextBox2.Text, email = TextBox3.Text, gender = RadioButtonList1.SelectedValue;
        //        string department = DropDownList1.SelectedValue.ToString(), notes = TextBox4.Text;
        //        DateTime startDate = DateTime.Parse(TextBox5.Text);
        //        int salary = int.Parse(TextBox6.Text);

        //        SqlCommand cmd = new SqlCommand("exec spUpdateEmp '" + id + "','" + name + "','" + email + "','" + gender + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "'", connection);
        //        connection.Open();
        //        cmd.ExecuteNonQuery();
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.');", true);
        //        connection.Close();
        //        GetEmpList();
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    try
        //    {
        //        int id = int.Parse(TextBox1.Text);

        //        SqlCommand cmd = new SqlCommand("exec spDeleteEmp '" + id + "'", connection);
        //        connection.Open();
        //        cmd.ExecuteNonQuery();
        //        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.');", true);
        //        connection.Close();
        //        GetEmpList();
        //    }
        //    catch (Exception ex)
        //    {

        //        throw ex;
        //    }
        //}

        void Reset()
        {
            TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = string.Empty;
            DropDownList1.ClearSelection();
            RadioButtonList1.ClearSelection();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                 TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = string.Empty;
                DropDownList1.ClearSelection();
                RadioButtonList1.ClearSelection();
                GetEmpList();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    int id = int.Parse(TextBox1.Text);
            //    string query = "select * from EmployeeTable where EmpId=@id";
            //    SqlCommand cmd = new SqlCommand(query, connection);
            //    cmd.Parameters.AddWithValue("@id", id);
            //    connection.Open();
            //    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            //    DataTable table = new DataTable();
            //    adapter.Fill(table);
            //    GridView1.DataSource = table;
            //    GridView1.DataBind();
            //    connection.Close();
            //}
            //catch (Exception ex)
            //{

            //    throw ex;
            //}
        }

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetEmpList();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string gender = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string department = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            DateTime startDate = Convert.ToDateTime(((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text);
            int salary = Convert.ToInt32(((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text);
            string notes = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

            SqlCommand cmd = new SqlCommand("exec spUpdateEmp '" + id + "','" + name + "','" + email + "','" + gender + "','" + department + "','" + startDate + "','" + salary + "','" + notes + "'", connection);
            connection.Open();
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.');", true);
            connection.Close();
            GridView1.EditIndex = -1;
            GetEmpList();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetEmpList();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

                SqlCommand cmd = new SqlCommand("exec spDeleteEmp '" + id + "'", connection);
                connection.Open();
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.');", true);
                //Response.Write("<script> alert('Data is deleted)");
                connection.Close();
                GridView1.EditIndex = -1;
                GetEmpList();
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}