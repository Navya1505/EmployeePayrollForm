<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="EmployeePayrollWebform.WebForms.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
      <link href="../CSS%20StyleSheet/LoginPage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="sec1"> 
    <div class="signin">
        <h2>&ensp;&nbsp;SignIn</h2>
    </div>
        <div>
            <p>&nbsp;&ensp;&emsp; to Continue To Employee PayRoll</p>
        </div>
      
    <div>
        <asp:TextBox ID="TextBox1" placeholder="Email Or Phone" name="Email" runat="server" Width="300px" Height="30px"></asp:TextBox>

    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <div>
        <asp:TextBox ID="TextBox2" placeholder="Password" name="Password" runat="server" Width="300px" TextMode="Password" Height="30px"></asp:TextBox>
    </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <div>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />  
        &ensp;&nbsp;&emsp;&emsp; 
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="True" CssClass="text-decoration-none">Forgot Password?</asp:LinkButton>
    </div>
        <br />
        <div>
          <asp:Button ID="Button2" runat="server" class="btn signup"  Text="Create Account"   OnClick="Button2_Click" />
        &emsp;&nbsp;
        <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Login" Width="71px" OnClick="Button1_Click" />
    </div>
    <div>                         
        
               <asp:Label ID="Label1" class="labelError" ForeColor="Red" runat="server"></asp:Label>
        </div>          

    
    </div> 
  </asp:Content>
