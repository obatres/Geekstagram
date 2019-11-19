using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Geekstagram
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Session["user"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = user;
            Response.Redirect("FeedPerfil.aspx");
        }
    }
}