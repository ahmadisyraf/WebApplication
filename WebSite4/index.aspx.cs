 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void button_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

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
            try
            {
                string userEmail = TextBox1.Text;
                string userPassword = TextBox2.Text;
                con.Open();
                string qry = "SELECT * FROM userTable WHERE userEmail='" + userEmail + "' AND userPassword='" + userPassword + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Response.Redirect("userhomepage.aspx?userEmail=" + TextBox1.Text);
                }
                else
                {
                    Label3.ForeColor = System.Drawing.Color.Red;
                    Label3.Font.Name = "Times new roman";
                    Label3.Text = "Wrong email or password";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
      
    }
