using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Ehsbha_SP
{
    public partial class startPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sign_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void langueg_Click(object sender, EventArgs e)
        {
            Response.Redirect("startPageA.aspx");
        }
    }
}