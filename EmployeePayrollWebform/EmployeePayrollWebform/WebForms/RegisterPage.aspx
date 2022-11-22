<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="EmployeePayrollWebform.WebForms.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
            <link href="../CSS%20StyleSheet/Register.css" rel="stylesheet" />
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="sec1">
        <div class="sec2">
        
            <h2>Create An Account</h2>
        </div>
        <div class="sec3">
            <p>to Continue To Employee Payroll</p>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TextBox2" name="First name" placeholder="First name" runat="server" Width="196px" Height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Cannot be Empty" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox3" name="Last name" placeholder="Last name" runat="server" Width="196px" Height="30px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cannot be Empty" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
        <br />
        <div>

            <asp:TextBox ID="TextBox6" placeholder="Phone number" runat="server" Height="30px" Width="398px"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>

        </div>
        <br />
        <div>
            <asp:TextBox ID="TextBox1" runat="server" name="Email" placeholder="Email" Width="398px" Height="30px"  ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TextBox4" name="Password" placeholder="Enter Password" runat="server" Type="Password" Width="196px" Height="30px"></asp:TextBox>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Weak Password" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$" Display="Dynamic">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>

            <asp:TextBox ID="TextBox5" name="Password" placeholder="Confirm Password" runat="server" TextMode="Password" Width="196px" Height="30px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords are not same" ForeColor="Red" Display="Dynamic">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text=" Show Password"/>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            </div>
        <br />
         <div>
        <asp:LinkButton ID="LinkButton1" CssClass="lbtn" style="text-decoration:none" OnClick="LinkButton1_Click" runat="server" EnableTheming="True">Signin instead</asp:LinkButton>
        &emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;&emsp; &emsp; &emsp;
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Sign Up" OnClick="Button1_Click" />
    </div>
   <div>
    <asp:Label ID="Label1"  class="labelError" ForeColor="Red" runat="server" ></asp:Label>
        </div>
    </div>
</asp:Content>
