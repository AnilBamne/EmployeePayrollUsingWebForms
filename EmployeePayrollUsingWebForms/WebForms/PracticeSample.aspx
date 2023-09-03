<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PracticeSample.aspx.cs" Inherits="EmployeePayrollUsingWebForms.EmoloyeeRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/EmployeeRegistration.css" rel="stylesheet" />
    <style type="text/css">
        #Select1 {
            width: 188px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-content">
        <h3>Employee Registration Form</h3>
       <div class="row">
           <label class="row-name">Name</label>
           <input class="input" type="text" />
       </div>
        <div class="row">
            <label class="row-name">Gender </label>
            <div>
                <input id="Radio1" type="radio" name="gender" value="Male" /><label>Male</label>
                <input id="Radio2" type="radio" name="gender" value="Female" /><label>Female</label>
            </div>
        </div>
        <div class="row">
            <label class="row-name">Department</label>
            <select class="input">
                <option>HR</option>
                <option>Sales</option>
                <option>Dev</option>
                <option>QA</option>
                <option>Marketing</option>
            </select>
        </div>
        <div class="row">
            <label class="row-name">Salary</label>
            <input class="input" type="number"/>
        </div>
        <div class="row">
            <label class="row-name">Start date</label>
            <input class="input" type="date" />
        </div>
        <div class="row">
            <label class="row-name">Notes</label>
            <input class="input" type="text" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
