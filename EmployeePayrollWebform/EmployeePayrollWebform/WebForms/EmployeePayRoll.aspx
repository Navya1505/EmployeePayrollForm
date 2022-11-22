<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="EmployeePayRoll.aspx.cs" Inherits="EmployeePayrollWebform.WebForms.EmployeePayRoll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS%20StyleSheet/EmployeePayRoll.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sec1">
    <div class="Header">
      
        <div>   
            <h3> Employee Payroll Form </h3>
        </div>
    
    <div>
        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>&emsp;&emsp;&emsp;&emsp;&emsp;
          <asp:TextBox ID="TextBox2" runat="server" Width="564px" height="18px"></asp:TextBox>
    </div>
    <div>
         <asp:Label ID="Label1" runat="server" Text="Profile image"></asp:Label>
         <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Width="612px" RepeatLayout="Flow" Height="44px" CellPadding="1" CellSpacing="1" CssClass="xyz">
                <asp:ListItem Value="../Assets/Female 1.png"><img src="../Assets/Female 1.png" alt="img1" /></asp:ListItem>
                <asp:ListItem Value="../Assets/Male 1.png"><img src="../Assets/Male 1.png" alt="img2"/></asp:ListItem>
                <asp:ListItem Value="../Assets/Female 2.png"><img src="../Assets/Female 2.png" alt="img3" /></asp:ListItem>
                <asp:ListItem Value="../Assets/Male 2.png"><img src="../Assets/Male 2.png" alt="img4" /></asp:ListItem>
            </asp:RadioButtonList>
    </div>
    <div>
         
      <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>&emsp;&ensp;&nbsp;
         <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="450px" RepeatLayout="Flow" CssClass="cba">
            <asp:ListItem Text=" Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text=" Female" Value="Female"></asp:ListItem>
            </asp:RadioButtonList>     
    </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Department"></asp:Label>&ensp;&nbsp;
           <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="1" CellSpacing="1" RepeatDirection="Horizontal" Width="640px" RepeatLayout="Flow" CssClass="abd" Height="20px">
                <asp:ListItem Text="&ensp;HR&emsp;" Value="HR"> </asp:ListItem>
                <asp:ListItem Text="&ensp;Sales&emsp;" Value="Sales"></asp:ListItem>
                <asp:ListItem Text="&ensp;Finance&emsp;" Value="Finance"></asp:ListItem>
                <asp:ListItem Text="&ensp;Engineer&emsp;" Value="Engineer"></asp:ListItem>
                <asp:ListItem  Text="&ensp;Others&emsp;" Value="Others"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
    </div>
    <div>
         <asp:Label ID="Label5" runat="server" Text="Salary"></asp:Label>
            &emsp;&emsp;&emsp; 
        
            <asp:DropDownList ID="DropDownList1" required="required" runat="server" Width="250px" Height="36px" ToolTip="Please Select Your Current Salary" >
                <asp:ListItem>Select Salary</asp:ListItem>
                <asp:ListItem Text="₹ 10,000" Value="10000"></asp:ListItem>
                <asp:ListItem Text="₹ 15,000" Value="15000"></asp:ListItem>
                <asp:ListItem Text="₹ 20,000" Value="20000"></asp:ListItem>
                <asp:ListItem Text="₹ 25,000" Value="25000"></asp:ListItem>
                <asp:ListItem Text="₹ 30,000" Value="30000"></asp:ListItem>
                <asp:ListItem Text="₹ 35,000" Value="35000"></asp:ListItem>
                <asp:ListItem Text="₹ 40,000" Value="40000"></asp:ListItem>
            </asp:DropDownList>
             
        
    </div>
    <div>   <label>Start Date</label>&emsp;&emsp;&emsp;&nbsp;
            <asp:DropDownList ID="ddlDay" type="days" runat="server" Height="36px" Width="90px">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlMonth" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" AutoPostBack="true">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlYear" runat="server" Height="36px" Width="90px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" AutoPostBack="true">              
            </asp:DropDownList>           
           

    </div>
    <div>
          <label>Notes</label>&emsp;&emsp;&emsp;&emsp;&emsp;
         <asp:TextBox ID="TextBox1" runat="server" placeholder="(optional)" width="665px" Height="110px" TextMode="MultiLine" style="margin-top: 37px; margin-right: 0px;"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" class="btn btn-outline-secondary" Text="Cancel" Width="150px" Height="40px" />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
             <asp:Button ID="Button2" runat="server" class="btn btn-outline-Sucess" Text="Submit" Width="151px"   OnClick="Button2_Click" Height="44px"  />&emsp;
            <asp:Button ID="Button3" runat="server" class="btn btn-outline-secondary" Text="Reset" Width="185px" Height="62px" style="margin-left: 71px; margin-top: 48px;" />
    </div>
         <div>
            <asp:Label ID="Label8" runat="server"></asp:Label>
        </div>
        </div>
    
</asp:Content>


