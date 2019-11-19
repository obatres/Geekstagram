using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Geekstagram
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user=Session["user"].ToString();

            Label2.Text = user;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GEEK"].ToString());
            con.Open();
            String consulta = "insert into foto values ('" + TextBox1.Text + "','" + TextBox2.Text+"');";
            SqlCommand cmd = new SqlCommand(consulta, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["user"] = user;
            Response.Redirect("RegistroUsuario.aspx");
            
        }
    }
}