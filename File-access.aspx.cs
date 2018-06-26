using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class File_access : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;



        lblStudID.Text = Request.QueryString["id"];

        string str = "SELECT * FROM tblStudent WHERE StudID = '" + lblStudID.Text + "'";

        ADOHelper obj = new ADOHelper();
        SqlDataReader dr = obj.GetDataReader(str);

        lblCategory.Text = dr["Course"].ToString();

        dr.Close();



        GetTableData();
    }

    private void ShowMsg(string msg)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "msg", "alert('" + msg + "');", true);
    }

    private void GetTableData()
    {
        SqlConnection cn = new SqlConnection("Data Source = ICHARION; Initial Catalog = dbLogin; Integrated Security = True;");
        cn.Open();

        string query = "SELECT d.TutorialID, d.TutorialTitle, d.Description, d.Subject FROM tblTutorial d, tblTutorialCategory e WHERE CONVERT(VARCHAR, e.Category) = '" + lblCategory.Text + "' AND e.TutorialID = d.TutorialID ORDER BY TutorialID";

        SqlCommand cmd = new SqlCommand(query, cn);
        SqlDataReader dr = cmd.ExecuteReader();

        grdFiles.DataSource = dr;
        grdFiles.DataBind();

        dr.Close();
        cn.Close();
    }
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Eng-home.aspx?id=" + lblStudID.Text);
    }

    
    protected void grdFiles_SelectedIndexChanged(object sender, EventArgs e)
    {
        string TutorialID, Filename;

        TutorialID = grdFiles.SelectedRow.Cells[0].Text;

        string query = "SELECT * FROM tblTutorial WHERE TutorialID = '" + TutorialID + "'";

        ADOHelper obj = new ADOHelper();
        SqlDataReader dr = obj.GetDataReader(query);

        Filename = dr["Filename"].ToString();

        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Filename);
        Response.TransmitFile(Server.MapPath("Tutorials//") + Filename);
        Response.End();
    }
}