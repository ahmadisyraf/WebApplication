using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class userhomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String userEmail = Request.QueryString["userEmail"];
        Label1.Text = "You currently logged in as " + userEmail;
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
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

    }   
}