using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using Microsoft.VisualBasic;
using System.Windows.Forms.VisualStyles;
using System.Web.UI.HtmlControls;
using System.Windows.Forms.Layout;
using System.Windows.Forms.DataVisualization;

namespace Ehsbha_SP
{
    public partial class settingArabic : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                try
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                    conn.Open();
                    String name = "select facilityName from users where userId='" + Session["User"].ToString() + "'";
                    SqlCommand com = new SqlCommand(name, conn);
                    string names = Convert.ToString(com.ExecuteScalar());
                    fName.Text = "Facility Name: " + names;



                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Erroe: " + ex);
                }

            }
            else
            {
                Response.Redirect("loginA.aspx");
            }

        }

        protected void setting_Click(object sender, EventArgs e)
        {
            Response.Redirect("settingArabic.aspx");
        }

        protected void langueg_Click(object sender, EventArgs e)
        {
            Response.Redirect("setting.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("startPageA.aspx");
        }

        protected void homePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeArabic.aspx");
        }

        protected void addInvoicePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("addInvoiceArabic.aspx");
        }

        protected void formPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("formArabic.aspx");
        }

        protected void summaryPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("summaryArabic.aspx");
        }

        protected void contactPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactArabic.aspx");
        }

        protected void updating(object sender, EventArgs e)
        {

            SqlDataSource2.Update();

        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
        }
        protected void GridView1_RowUpdating(object sender, EventArgs e)
        {

            //Finding the controls from Gridview for the row which is going to update  
            TextBox facilityName = GridView1.Rows[0].FindControl("facilityName") as TextBox;
            TextBox email = GridView1.Rows[0].FindControl("email") as TextBox;
            TextBox phone = GridView1.Rows[0].FindControl("phone") as TextBox;
            RadioButtonList taxPeriod = GridView1.Rows[0].FindControl("taxPeriod") as RadioButtonList;

            //updating the record  
            SqlDataSource2.UpdateCommand = ("Update users set facilityName='" + facilityName.Text + "', email='" + email.Text + "', phone='" + phone.Text + "', taxPeriod='" + taxPeriod.SelectedValue + "' where userId=" + Session["User"]);

            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;

        }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
        }

        protected void deleting(object sender, EventArgs e)
        {
            MsgBoxResult correctionsQ = Interaction.MsgBox("Do you sure about deleting your account? ", MsgBoxStyle.YesNo);

            if (correctionsQ == MsgBoxResult.Yes)
            {
                SqlDataSource2.DeleteCommand = "DELETE FROM [users] WHERE [userId] = @userId";
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                conn.Open();
                String deleteS = "delete from sale where userId='" + Session["User"].ToString() + "'";
                SqlCommand com = new SqlCommand(deleteS, conn);
                com.ExecuteNonQuery();
                String deleteP = "delete from purchase where userId='" + Session["User"].ToString() + "'";
                com = new SqlCommand(deleteP, conn);
                com.ExecuteNonQuery();

                conn.Close();
                Session["User"] = null;
                Response.Redirect("startPageA.aspx");

            }
            else
            {
                Response.Redirect("settingArabic.aspx");
            }

        }
    }
}