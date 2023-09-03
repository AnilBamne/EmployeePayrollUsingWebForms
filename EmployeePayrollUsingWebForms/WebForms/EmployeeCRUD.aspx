<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeCRUD.aspx.cs" Inherits="EmployeePayrollUsingWebForms.WebForms.EmployeeCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #000000">Employee Payroll</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Emp ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="Male"></asp:ListItem>
                        <asp:ListItem Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Department"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                        <asp:ListItem Value="HR"></asp:ListItem>
                        <asp:ListItem Value="Sales"></asp:ListItem>
                        <asp:ListItem Value="Marketing"></asp:ListItem>
                        <asp:ListItem Value="Engineer"></asp:ListItem>
                        <asp:ListItem Value="Manager"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Start Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Salary"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Notes"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#6600FF" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click" Text="Add" Width="100px" />
                    <asp:Button ID="Button2" runat="server" BackColor="#0066FF" Font-Size="Medium" ForeColor="White" OnClick="Button2_Click" Text="Update" Width="100px" />
                    <asp:Button ID="Button3" runat="server" BackColor="#FF3399" Font-Size="Medium" ForeColor="White" OnClick="Button3_Click" Text="Delete" Width="100px" OnClientClick="return confirm('Are you sure ... you want to delete this employee record ?');" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Font-Size="Medium" Width="1003px">
                        <HeaderStyle BackColor="#CC00CC" ForeColor="White" />
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
