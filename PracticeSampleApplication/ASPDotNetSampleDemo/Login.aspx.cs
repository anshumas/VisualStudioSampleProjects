using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPDotNetSampleDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dt= DataSourcesConnection.Login(username.Text, password.Text);
            if (dt.Rows.Count > 0)
                Response.Redirect("/home/");
        }
    }
}