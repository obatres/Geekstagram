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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["GEEK"].ToString());
            con.Open();
                String consulta = "insert into usuario values ('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "');";
            if (TextBox2.Text == TextBox3.Text)
            {
                SqlCommand cmd = new SqlCommand(consulta, con);
                cmd.ExecuteNonQuery();
            }

            con.Close();


        }
    }
}