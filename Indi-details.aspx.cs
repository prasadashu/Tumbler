using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Indi_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        lblStudID.Text = Request.QueryString["id"];

        if(Request.QueryString["id1"] == null)
        {
            lblAdmin.Text = " ";
        }
        else
        {
            lblAdmin.Text = Request.QueryString["id1"];
        }

                
        string str = "SELECT * FROM tblStudent WHERE StudID = '" + lblStudID.Text + "'";

        ADOHelper obj = new ADOHelper();
        SqlDataReader dr = obj.GetDataReader(str);

        lblDtofBrth.Text = dr["DOB"].ToString();
        lblDtofJon.Text = dr["DOJ"].ToString();
        lblGuardName.Text = dr["Guard_Name"].ToString();
        lblMail.Text = dr["EmailID"].ToString();
        lblStudName.Text = dr["Name"].ToString();
        lblCourse.Text = dr["Course"].ToString();
        lblCategory.Text = dr["Category"].ToString();
        lblNationality.Text = dr["Nationality"].ToString();
        lblReligion.Text = dr["Religion"].ToString();

        dr.Close();

    }
    protected void btnHome_Click(object sender, EventArgs e)
    {
        string strAdmin = "admin";

        if (lblAdmin.Text.ToString() == strAdmin)
            Response.Redirect("Student-details.aspx?id=" + lblAdmin.Text);
        else
            Response.Redirect("Eng-home.aspx?id=" + lblStudID.Text);
    }
}