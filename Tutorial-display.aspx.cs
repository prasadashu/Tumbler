using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Tutorial_display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack)
        //    return;

        lblAdmin.Text = Request.QueryString["id"];

        string str = "SELECT * FROM tblTutorial ORDER BY TutorialID";

        ADOHelper obj = new ADOHelper();
        SqlDataReader dr = obj.GetDataReader(str);

        string htm;

        htm = "<table border = 3>";
        htm = htm + "<tr>";
        htm = htm + "<th>TutorialID</th>";
        htm = htm + "<th>Tutorial Title</th>";
        htm = htm + "<th>Description</th>";
        htm = htm + "<th>Subject</th>";
        htm = htm + "<th>Filename</th>";
        htm = htm + "</tr>";

        if (dr.HasRows)
        {
            do
            {
                htm = htm + "<tr>";
                htm = htm + "<td>" + dr["TutorialID"].ToString() + "</td>";
                htm = htm + "<td>" + dr["TutorialTitle"].ToString() + "</td>";
                htm = htm + "<td>" + dr["Description"].ToString() + "</td>";
                htm = htm + "<td>" + dr["Subject"].ToString() + "</td>";
                htm = htm + "<td>" + dr["Filename"].ToString() + "</td>";
                htm = htm + "</tr>";
            } while (dr.Read());
        }
        htm = htm + "</table>";
        dr.Close();

        PlaceHolder1.Controls.Add(new Literal { Text = htm });
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin-home.aspx?id=" + lblAdmin.Text);
    }
}