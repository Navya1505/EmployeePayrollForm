using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace EmployeePayrollWebform.WebForms
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = Session["form"];
            GridView1.DataBind();
        }
        public void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeePayRoll.aspx");
        }
        protected void ImageButton1_Click(object sender, EventArgs e)
        {
        }
    }

}