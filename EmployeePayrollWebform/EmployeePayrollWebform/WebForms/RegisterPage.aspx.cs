using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;

namespace EmployeePayrollWebform.WebForms
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                TextBox4.TextMode = TextBoxMode.SingleLine;
                TextBox5.TextMode = TextBoxMode.SingleLine;
            }
            else
            {
                TextBox4.TextMode = TextBoxMode.Password;
                TextBox5.TextMode = TextBoxMode.Password;
            }
        }
        static string str = ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(str);

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("SignUpDetails", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Firstname", TextBox2.Text);
            com.Parameters.AddWithValue("@Lastname", TextBox3.Text);
            com.Parameters.AddWithValue("@Email", TextBox1.Text);
            com.Parameters.AddWithValue("@Password", TextBox4.Text);
            com.Parameters.AddWithValue("@PhoneNumber", TextBox6.Text);
           
            //com.Parameters.AddWithValue("@RegisteredDate",DateTime.Now);
            this.con.Open();
            int ReturnCode = (int)com.ExecuteScalar();
            if (ReturnCode == -1)
            {
                Label1.Text = "Email Id already exists, Please use another Email";
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
            this.con.Close();
        }
    }
    }

