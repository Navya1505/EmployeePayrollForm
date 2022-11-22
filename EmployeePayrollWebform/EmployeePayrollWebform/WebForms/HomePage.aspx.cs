using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace EmployeePayrollWebform.WebForms
{
    public partial class HomePage : System.Web.UI.Page
    {
        static string str = ConfigurationManager.ConnectionStrings["UserDBConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(str);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeePayRoll.aspx");
        }
       
        
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int EmpId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

            conn.Open();
            SqlCommand command = new SqlCommand("delete from PayrollTable where EmPId='" + EmpId + "'", conn);
            int t = command.ExecuteNonQuery();
            conn.Close();
            if (t > 0)
            {
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }
        }
    }
}