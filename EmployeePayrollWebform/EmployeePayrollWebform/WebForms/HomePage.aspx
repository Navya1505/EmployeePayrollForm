<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayrollWebform.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS%20StyleSheet/Homepage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="heading">
        <h2>Employee Details</h2>
        <asp:Button ID="Button1" class="btn addUser" runat="server" OnClick="Button1_Click" Text="+  Add User" />
    </div>
    <br />
    <div class="grid">         
       <asp:GridView ID="GridView1" runat="server" BackColor="White" CellPadding="4" GridLines="vertical"  HorizontalAlign="Center" AutoGenerateColumns="false" Width="1215px" ForeColor="Black"  DataSourceID="SqlDataSource1" AllowPaging="True"  OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Empid">
        <Columns>
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
        <div>
         
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserDBConnectionString %> " SelectCommand="SELECT  [Name], [Gender], [Department], [Salary], [StartDate], [EmpId] FROM [PayrollTable]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [PayrollTable] WHERE [EmpId] = @original_EmpId  AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Department] = @original_Department AND [Salary] = @original_Salary AND [StartDate] = @original_StartDate" InsertCommand="INSERT INTO [PayrollTable] [Name], [Gender], [Department], [Salary], [StartDate]) VALUES (@Name, @Gender, @Department, @Salary, @StartDate)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [PayrollTable]  [Name] = @Name, [Gender] = @Gender, [Department] = @Department, [Salary] = @Salary, [StartDate] = @StartDate WHERE [EmpId] = @original_EmpId AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Department] = @original_Department AND [Salary] = @original_Salary AND [StartDate] = @original_StartDate">
                <DeleteParameters>
                    <asp:Parameter Name="original_EmpId" Type="Int32" />
                   <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Depatment" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="String" />
                    <asp:Parameter Name="original_StartDate" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Salay" Type="String" />
                    <asp:Parameter Name="StartDate" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                 <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="Salary" Type="String" />
                    <asp:Parameter Name="StaryDate" Type="String" />
                    <asp:Parameter Name="original_EmpId" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Dpartment" Type="String" />
                    <asp:Parameter Name="original_Salary" Type="String" />
                    <asp:Parameter Name="original_StartDate" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </div>
    

    
</asp:Content>
