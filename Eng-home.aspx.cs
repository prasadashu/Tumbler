using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Eng_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        lblStudID.Text = Request.QueryString["id"];

    }

    protected void btnPasswordChng_Click(object sender, EventArgs e)
    {
        Response.Redirect("Password-change.aspx?id=" + lblStudID.Text);
    }

    protected void btnLoginForm_Click(object sender, EventArgs e)
    {
        Response.Redirect("Indi-details.aspx?id=" + lblStudID.Text);
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnTutorialDnld_Click(object sender, EventArgs e)
    {
        Response.Redirect("File-access.aspx?id=" + lblStudID.Text);
    }
}