using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text == "")
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Font.Name = "Times new roman";
            Label1.Text = "Enter username";
        }
        else if(TextBox2.Text == "")
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Font.Name = "Times new roman";
            Label2.Text = "Enter password";
        }
        else
        {
            if(TextBox1.Text == "MalaysiaHealthCare2020" && TextBox2.Text == "covid19data")
            {
                Response.Redirect("adminhomepage.aspx");
            }
            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Font.Name = "Times new roman";
                Label3.Text = "Wrong username or password";
            }

        }
    }
}