using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Password_change : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        lblUsername.Text = Request.QueryString["id"];
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        SqlConnection cn = new SqlConnection("Data Source=ICHARION;Initial Catalog=dbLogin;Integrated Security=True;");
        cn.Open();

        string sql = "SELECT * FROM tblLogin WHERE UserID = '" + lblUsername.Text + "'";

        SqlCommand cmd = new SqlCommand(sql, cn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        //lblUsername.Text = dr["UserID"].ToString();
        lblPassword.Text = dr["Password"].ToString();

        dr.Close();

        if(txtOldPassword.Text == lblPassword.Text && txtNewPassword.Text == txtConfirmPassword.Text)
        {
            string stl = "UPDATE tblLogin SET Password = '" + txtNewPassword.Text + "' WHERE UserID = '" + lblUsername.Text + "'";

            SqlCommand upcmd = new SqlCommand(stl, cn);
            upcmd.ExecuteNonQuery();

            Reset();

            ShowMsg("Password updated successfully");

            cn.Close();
        }



    }

    private void ShowMsg(string str)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "msg", "alert('" + str + "');", true);
    }

    private void Reset()
    {
        txtConfirmPassword.Text = String.Empty;
        txtOldPassword.Text = String.Empty;
        txtNewPassword.Text = String.Empty;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Reset();
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        string strAdmin = "admin";

        if (lblUsername.Text.ToString() == strAdmin)
            Response.Redirect("Admin-home.aspx?id=" + lblUsername.Text);
        else
            Response.Redirect("Eng-home.aspx?id=" + lblUsername.Text);
    }
}