using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        lblAdminID.Text = Request.QueryString["id"];

    }
    protected void btnStudReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student-registeration.aspx?id=" + lblAdminID.Text);
    }
    protected void btnPasswordChng_Click(object sender, EventArgs e)
    {
        Response.Redirect("Password-change.aspx?id=" + lblAdminID.Text);
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnTutorialUpld_Click(object sender, EventArgs e)
    {
        Response.Redirect("File-upload.aspx?id=" + lblAdminID.Text);
    }
    protected void btnStudDet_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student-details.aspx?id=" + lblAdminID.Text);
    }
    protected void btnTutDet_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tutorial-display.aspx?id=" + lblAdminID.Text);
    }
}