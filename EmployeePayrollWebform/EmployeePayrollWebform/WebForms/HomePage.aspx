<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayrollWebform.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS%20StyleSheet/Homepage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heading">
        <p>Employee Details</p>
        <asp:Button ID="Button1" class="btn addUser" runat="server" OnClick="Button1_Click" Text="+  Add User" />
    </div>
    <br />
    <div class="grid">         
       <asp:GridView ID="GridView1" runat="server" BackColor="White" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="false" Width="1090px" ForeColor="Black" OnRowEditing="ImageButton1_Click" OnRowDeleting="ImageButton1_Click">
        <Columns>
            <asp:TemplateField HeaderText="" SortExpression="ImgUrl">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ImgUrl") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImgUrl") %>' />
                 </ItemTemplate>
            </asp:TemplateField>
             <asp:BoundField DataField="Empid" HeaderText="EMPID" InsertVisible="False" ReadOnly="True" SortExpression="Empid" />
             <asp:BoundField DataField="Name" HeaderText="NAME" SortExpression="Name" />
             <asp:BoundField DataField="Gender" HeaderText="GENDER" SortExpression="Gender" />
             <asp:BoundField DataField="Department" HeaderText="DEPARTMENT" SortExpression="Department" />
             <asp:BoundField DataField="Salary" HeaderText="SALARY" SortExpression="Salary" />
             <asp:BoundField DataField="StartDate" HeaderText="STARTDATE" SortExpression="StartDate" />
             <asp:CommandField ButtonType="Image"  CancelImageUrl="../images/cancel.png" DeleteImageUrl="../images/delete.png" EditImageUrl="../images/edit.png" HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="../images/save.png" />
         </Columns>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <HeaderStyle BackColor="#42515F" Font-Bold="True" ForeColor="White"  />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F7F7F7" />
           <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
           <SortedDescendingCellStyle BackColor="#E5E5E5" />
           <SortedDescendingHeaderStyle BackColor="#242121" />
           </asp:GridView>
    </div>  
    
</asp:Content>
