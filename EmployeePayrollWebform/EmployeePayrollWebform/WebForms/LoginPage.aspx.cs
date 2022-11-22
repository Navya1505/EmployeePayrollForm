using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;

namespace EmployeePayrollWebform.WebForms
{
    public partial class LoginPage : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (AuthenticateUser(TextBox1.Text, TextBox2.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            }
            else
            {
                Response.Redirect("HomePage.aspx");
                Label1.Text = "Login Succesful";
            }
        }
       

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
        static string str = ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        protected bool AuthenticateUser(string Email,string Password)
        {

            SqlCommand com = new SqlCommand("LogInCredentials", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Email", TextBox1.Text);
            com.Parameters.AddWithValue("@Password", TextBox2.Text);
            this.con.Open();
            int ReturnCode = (int)com.ExecuteScalar();
            return ReturnCode == 1;
        }
    }
    }



      

    
