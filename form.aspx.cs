using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Windows.Forms;
using Microsoft.VisualBasic;



namespace Ehsbha_SP
{
    public partial class form : System.Web.UI.Page
    {
        DateTime firstDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
        DateTime lastDate;
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
                    fName.Text = "Facility Name: " + Convert.ToString(com.ExecuteScalar());

                    String date = "select taxPeriod from users where userId='" + Session["User"].ToString() + "'";
                    com = new SqlCommand(date, conn);
                    string period = Convert.ToString(com.ExecuteScalar());
                    conn.Close();
                    if (object.Equals(period,"Monthly"))
                    {
                        lastDate= firstDate.AddMonths(1).AddDays(-1);
                    }
                    else
                    {
                        lastDate = firstDate.AddMonths(4).AddDays(-1);
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("Erroe: " + ex);
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
            Response.Redirect("formArabic.aspx");
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

        protected void preperVAT_Click(object sender, EventArgs e)
        {
            double corections = 0.0;
            DialogResult correctionsQ=MessageBox.Show("Do you have any corrections? ", "Corrections", MessageBoxButtons.YesNo,MessageBoxIcon.Question, MessageBoxDefaultButton.Button1,MessageBoxOptions.DefaultDesktopOnly);
            if (correctionsQ == DialogResult.Yes)
            {
                string result=" ";
                SetFocus(result = Interaction.InputBox("Please enter correction value.. (it have to be less than -5000 or more than 5000)", "correction", "0.00"));
                if (Convert.ToDouble(result)<=-5000 || Convert.ToDouble(result)>=5000) {
                    corections = Convert.ToDouble(result);
                }
            }
            

            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                conn.Open();
                String saleAmountFor5 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'no' AND date BETWEEN '"+ firstDate +"' AND '"+ lastDate+"'";
                SqlCommand com = new SqlCommand(saleAmountFor5, conn);
                double saleAmount5 = Convert.ToDouble(com.ExecuteScalar());
                sAmount5.Text = Convert.ToString(saleAmount5);

                String saleAdjFor5 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAdjFor5, conn);
                double saleAdj5 = Convert.ToDouble(com.ExecuteScalar());
                sAdj5.Text = Convert.ToString(saleAdj5);
                double sale5 =(saleAmount5-saleAdj5)* 0.05;
                s5.Text = sale5.ToString();

                String saleAmountForCitizens = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Citizens)' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAmountForCitizens, conn);
                double saleAmountCitizens = Convert.ToDouble(com.ExecuteScalar());
                sAmountCitizens.Text = Convert.ToString(saleAmountCitizens);

                String saleAdjForCitizens = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Citizens)' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAdjForCitizens, conn);
                double saleAdjCitizens = Convert.ToDouble(com.ExecuteScalar());
                sAdjCitizens.Text = Convert.ToString(saleAdjCitizens);

                String saleAmountFor0 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (0)' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAmountFor0, conn);
                double saleAmount0 = Convert.ToDouble(com.ExecuteScalar());
                sAmount0.Text = Convert.ToString(saleAmount0);

                String saleAdjFor0 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (0)' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAdjFor0, conn);
                double saleAdj0 = Convert.ToDouble(com.ExecuteScalar());
                sAdj0.Text = Convert.ToString(saleAdj0);

                String saleAmountForExports = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Exports)' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAmountForExports, conn);
                double saleAmountExports = Convert.ToDouble(com.ExecuteScalar());
                sAmountExport.Text = Convert.ToString(saleAmountExports);

                String saleAdjForExports = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Exports)' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAdjForExports, conn);
                double saleAdjExports = Convert.ToDouble(com.ExecuteScalar());
                sAdjExports.Text = Convert.ToString(saleAdjExports);

                String saleAmountForExempt = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAmountForExempt, conn);
                double saleAmountExempt = Convert.ToDouble(com.ExecuteScalar());
                sAmountExempt.Text = Convert.ToString(saleAmountExempt);

                String saleAdjForExempt = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleAdjForExempt, conn);
                double saleAdjExempt = Convert.ToDouble(com.ExecuteScalar());
                sAdjExempt.Text = Convert.ToString(saleAdjExempt);

                String saleTotalAmount = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleTotalAmount, conn);
                double saletotalAm = Convert.ToDouble(com.ExecuteScalar());
                sTotalAmount.Text = Convert.ToString(saletotalAm);

                String saleTotalAdj = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(saleTotalAdj, conn);
                double saletotalAd = Convert.ToDouble(com.ExecuteScalar());
                sTotalAdj.Text = Convert.ToString(saletotalAd);

                double sales = saletotalAm - saletotalAd;
                totalSale.Text = sales.ToString();



                String purchaseAmountFor5 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAmountFor5, conn);
                double purchaseAmount5 = Convert.ToDouble(com.ExecuteScalar());
                pAmount5.Text = Convert.ToString(purchaseAmount5);

                String purchaseAdjFor5 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAdjFor5, conn);
                double purchaseAdj5 = Convert.ToDouble(com.ExecuteScalar());
                pAdj5.Text = Convert.ToString(purchaseAdj5);

                double purchase5 = (purchaseAmount5 - purchaseAdj5) * 0.05;
                p5.Text = purchase5.ToString();

                String purchaseAmountForImports = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0% (Imports)' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAmountForImports, conn);
                double purchaseAmountImports = Convert.ToDouble(com.ExecuteScalar());
                pAmountImports.Text = Convert.ToString(purchaseAmountImports);

                String purchaseAdjForImports = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0% (Imports)' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAdjForImports, conn);
                double purchaseAdjImports = Convert.ToDouble(com.ExecuteScalar());
                pAdjImports.Text = Convert.ToString(purchaseAdjImports);

                double purchaseImports = (purchaseAmountImports - purchaseAdjImports) * 0.05;
                pImports.Text = purchaseImports.ToString();

                String purchaseAmountForRCM = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='RCM' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAmountForRCM, conn);
                double purchaseAmountRCM = Convert.ToDouble(com.ExecuteScalar());
                pAmountRCM.Text = Convert.ToString(purchaseAmountRCM);

                String purchaseAdjForRCM = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='RCM' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAdjForRCM, conn);
                double purchaseAdjRCM = Convert.ToDouble(com.ExecuteScalar());
                pAdjRCM.Text = Convert.ToString(purchaseAdjRCM);

                double purchaseRCM = (purchaseAmountRCM - purchaseAdjRCM) * 0.05;
                pRCM.Text = purchaseRCM.ToString();

                String purchaseAmountFor0 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0%' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAmountFor0, conn);
                double purchaseAmount0 = Convert.ToDouble(com.ExecuteScalar());
                pAmount0.Text = Convert.ToString(purchaseAmount0);

                String purchaseAdjFor0 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0%' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAdjFor0, conn);
                double purchaseAdj0 = Convert.ToDouble(com.ExecuteScalar());
                pAdj0.Text = Convert.ToString(purchaseAdj0);

                String purchaseAmountForExempt = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAmountForExempt, conn);
                double purchaseAmountExempt = Convert.ToDouble(com.ExecuteScalar());
                pAmountExempt.Text = Convert.ToString(purchaseAmountExempt);

                String purchaseAdjForExempt = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseAdjForExempt, conn);
                double purchaseAdjExempt = Convert.ToDouble(com.ExecuteScalar());
                pAdjExempt.Text = Convert.ToString(purchaseAdjExempt);


                String purchaseTotalAmount = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND adjasment= 'no' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseTotalAmount, conn);
                double purchasetotalAm = Convert.ToDouble(com.ExecuteScalar());
                pTotalAmount.Text = Convert.ToString(purchasetotalAm);

                String purchaseTotalAdj = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND adjasment= 'yes' AND date BETWEEN '" + firstDate + "' AND '" + lastDate+"'";
                com = new SqlCommand(purchaseTotalAdj, conn);
                double purchasetotalAd = Convert.ToDouble(com.ExecuteScalar());
                pTotalAdj.Text = Convert.ToString(purchasetotalAd);

                double purchases = purchasetotalAm - purchasetotalAd;
                totalPurchases.Text = purchases.ToString();

                double totalV = sales - purchases;
                totalVAT.Text = totalV.ToString();

                //15 carry لو طلع الاقرار بالسالب يبغاه الحين كاش ولا يرحلو للشهر الجاي؟ 

                String carryUser = "select coalesce(carry,0) from users where userId='" + Session["User"].ToString() + "'";
                com = new SqlCommand(carryUser, conn);
                double carry = Convert.ToDouble(com.ExecuteScalar());
                if (carry != 0)
                {
                    String updateCarry = "update users set carry= @carry where userId='" + Session["User"].ToString() + "'";
                    com = new SqlCommand(updateCarry, conn);
                    com.Parameters.AddWithValue("@carry", 0.00);
                    com.ExecuteNonQuery();
                }

                correction.Text = corections.ToString();
                carried.Text = carry.ToString();
                double netVal = totalV + corections + carry;
                net.Text = netVal.ToString();
                if (netVal < 0)
                {
                    DialogResult netM = MessageBox.Show("The value is negative, do you want forward it to the next month?  ", "", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                    if (netM == DialogResult.Yes)
                    {
                        string updateCarry = "update users set carry= @carry where userId='" + Session["User"].ToString() + "'";
                        com = new SqlCommand(updateCarry, conn);
                        com.Parameters.AddWithValue("@carry", netM);
                        com.ExecuteNonQuery();
                    }
                }
                
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Erroe: " + ex.ToString());
            }
        }
    }
}