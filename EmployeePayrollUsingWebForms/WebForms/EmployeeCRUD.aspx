<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCRUD.aspx.cs" Inherits="EmployeePayrollUsingWebForms.WebForms.EmployeeCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 37px;
        }
        .auto-style3 {
            height: 31px;
        }
        .auto-style4 {
            height: 40px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #000000">Employee Payroll</td>
            </tr>
            <%--<tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Emp ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="300px" Height="30px"></asp:TextBox>
                &nbsp;</td>
            </tr>--%>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="300px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="300px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="200px" Height="30px">
                        <asp:ListItem Value="Male"></asp:ListItem>
                        <asp:ListItem Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Department"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="306px" Height="35px">
                        <asp:ListItem Value="HR"></asp:ListItem>
                        <asp:ListItem Value="Sales"></asp:ListItem>
                        <asp:ListItem Value="Marketing"></asp:ListItem>
                        <asp:ListItem Value="Engineer"></asp:ListItem>
                        <asp:ListItem Value="Manager"></asp:ListItem>
                        <asp:ListItem Value="Accounts"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Start Date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="300px" Height="30px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label7" runat="server" Text="Salary"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Width="300px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Notes"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="300px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style3"></td>
            </tr>
            <tr>
                <td colspan="2" style="font-weight: 700">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#6600FF" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Add" Width="90px" Height="35px" />
                    <%--&nbsp;<asp:Button ID="Button2" runat="server" BackColor="#0066FF" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" Width="90px" Height="40px" />
                    &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#FF3399" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" Text="Delete" Width="90px" OnClientClick="return confirm('Are you sure ... you want to delete this employee record ?');" Height="40px" />--%>
                &nbsp;<asp:Button ID="Button4" runat="server" BackColor="#CC9900" Font-Size="Medium" ForeColor="White" OnClick="Button4_Click" Text="Clear" Width="90px" Height="35px" />
                <%--&nbsp;<asp:Button ID="Button5" runat="server" BackColor="#99FF66" Font-Size="Medium" ForeColor="#6600CC" OnClick="Button5_Click" Text="Search" Width="90px" Height="35px" />--%>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Font-Size="Medium" Width="995px" AllowCustomPaging="True" AllowPaging="True" HorizontalAlign="Center" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical"  AutoGenerateColumns="False" DataKeyNames="EmpId" OnRowEditing="GridView1_RowEditing" style="font-weight: 700" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        
                        <Columns>
                            <asp:BoundField DataField="EmpId" HeaderText="ID" ReadOnly="True" />
                            <asp:BoundField DataField="EmpName" HeaderText="Name" />
                            <asp:BoundField DataField="EmpEmail" HeaderText="Email" />
                            <asp:BoundField DataField="EmpGender" HeaderText="Gender" />
                            <asp:BoundField DataField="EmpDepartment" HeaderText="Department" />
                            <asp:BoundField DataField="EmpStartDate" HeaderText="SatartDate" />
                            <asp:BoundField DataField="EmpSalary" HeaderText="Salary" />
                            <asp:BoundField DataField="EmpNotes" HeaderText="Notes" />
                            <asp:CommandField ButtonType="Button" ShowEditButton="True" >
                            <ControlStyle BackColor="Blue" ForeColor="White" />
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                            <ControlStyle BackColor="Red" Font-Size="Medium" ForeColor="White" />
                            </asp:CommandField>
                        </Columns>
                        
                        <EditRowStyle HorizontalAlign="Center" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>

<%--This part is to filter the incoming data based on user requirement
for ex. Search by employee name--%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>    
    $(document).ready(function () {
        $('#TextBox2').on('keyup', function () {
            const searchText = $(this).val();
            $('#GridView1 tbody tr').each(function () {
                const rowData = $(this).text();
                if (rowData.includes(searchText)) {
                    $(this).show();
                }
                else {
                    $(this).hide();
                }
            });
        });
    });
</script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script> 
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>  
<script >
    $(function () {
        $("#TextBox5").datepicker();
    });  
</script>
