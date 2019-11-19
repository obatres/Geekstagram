using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Geekstagram
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GEEK"].ToString());
            con.Open();
            String consultaU = "select TOP 1 username from usuario where username ='"+TextBox1.Text+"';";
            SqlCommand cmdU = new SqlCommand(consultaU, con);
            String user = cmdU.ExecuteScalar().ToString();
            String consultaP = "select TOP 1 pass from usuario where username ='" + TextBox1.Text + "';" ;
            SqlCommand cmdP = new SqlCommand(consultaP, con);
            String pass = cmdP.ExecuteScalar().ToString();
            if (TextBox1.Text==user && TextBox2.Text==pass)
            {

                Session["user"] = TextBox1.Text;
                Response.Redirect("SubirFoto.aspx");
            }
            //Label3.Text = user+pass;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroUsuario.aspx");
        }
    }
}