using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminHomepage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void button_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Font.Name = "Times new roman";
            Label2.Text = "Enter state";
        }
        else if (TextBox2.Text == "")
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Font.Name = "Times new roman";
            Label3.Text = "Enter district";
        }
        else if (TextBox3.Text == "")
        {
            Label4.ForeColor = System.Drawing.Color.Red;
            Label4.Font.Name = "Times new roman";
            Label4.Text = "Enter premise";
        }
        else
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[casesTable] ([state],[district],[premise]) VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+"')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("adminhomepage.aspx");
            con.Close();
        }
    }
}