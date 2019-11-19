using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Geekstagram
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        String user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Session["user"].ToString();

            Label1.Text = "Bienvenid@: "+user;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = user;
            Response.Redirect("SubirFoto.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["user"] = user;
            Response.Redirect("FeedPerfil.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["user"] = "" ;
            Response.Redirect("LogIn.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["user"] = user;
            Response.Redirect("BuscarH.aspx");
        }
    }
}