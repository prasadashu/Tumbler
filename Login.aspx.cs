using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       if(txtUserID.Text.Length==0)
       {
           ShowMsg("Invalid username");
           txtUserID.Focus();
           return;
       }

        if(txtPassword.Text.Length==0)
        {
            ShowMsg("Invalid password");
            txtPassword.Focus();
            return;
        }

        SqlConnection cn = new SqlConnection("Data Source=ICHARION;Initial Catalog=dbLogin;Integrated Security=True");
        cn.Open();

        string sql = "SELECT * FROM tblLogin WHERE UserID = '" + txtUserID.Text + "' AND Password='" + txtPassword.Text + "'";

        SqlCommand cmd = new SqlCommand(sql, cn);

        SqlDataReader dr;

        dr = cmd.ExecuteReader();
        dr.Read();

        if(dr.HasRows)
        {
            if(txtUserID.Text == "admin")
            {
                Response.Redirect("Admin-home.aspx?id=" + txtUserID.Text);
            }
            else
            {
                Response.Redirect("Eng-home.aspx?id=" + txtUserID.Text);
            }
        }
        else
        {
            ShowMsg("Invalid login ID");
        }
        dr.Close();
        cn.Close();

    }

    private void ShowMsg(string msg)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "msg", "alert('" + msg + "');", true);
    }

}