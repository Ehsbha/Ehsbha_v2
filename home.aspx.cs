using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Ehsbha_SP
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                try
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                    conn.Open();
                    String name = "select facilityName from users where userId='" + Session["User"].ToString() + "'" ;
                    SqlCommand com = new SqlCommand(name, conn);
                    fName.Text ="Facility Name: " + Convert.ToString(com.ExecuteScalar());
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Erroe: "+ ex);
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void setting_Click(object sender, EventArgs e)
        {
            Response.Redirect("setting.aspx");
        }

        protected void langueg_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeArabic.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("startPage.aspx");
        }

        protected void homePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void addInvoicePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("addInvoice.aspx");
        }

        protected void formPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("form.aspx");
        }

        protected void summaryPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("summary.aspx");
        }

        protected void contactPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}