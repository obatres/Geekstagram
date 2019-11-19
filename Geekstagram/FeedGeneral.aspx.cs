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
    }
}