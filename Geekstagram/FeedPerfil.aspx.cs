using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Geekstagram
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Session["user"].ToString();

            Label1.Text = " " + user;
        }
    }
}