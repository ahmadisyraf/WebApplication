using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void button_Click(object sender, EventArgs e)
    {

        if(TextBox1.Text == "")
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Font.Name = "Times new roman";
            Label1.Text = "Enter email";
        }
        else if(TextBox2.Text == "") 
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Font.Name = "Times new roman";
            Label2.Text = "Enter password";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[userTable] ([userEmail],[userPassword]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("index.aspx");
            con.Close();
        }
    }
}