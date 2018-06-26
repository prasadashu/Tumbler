using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsPostBack)
        //    return;

        lblAdmin.Text = Request.QueryString["id"];

        string str = "SELECT * FROM tblStudent ORDER BY StudID";

        ADOHelper obj = new ADOHelper();
        SqlDataReader dr = obj.GetDataReader(str);

        string htm;

        htm = "<table border = 3>";
        htm = htm + "<tr>";
        htm = htm + "<th>StudID</th>";
        htm = htm + "<th>Name</th>";
        htm = htm + "<th>DOB</th>";
        htm = htm + "<th>DOJ</th>";
        htm = htm + "<th>Course</th>";
        htm = htm + "<th>...</th>";
        htm = htm + "</tr>";

        if(dr.HasRows)
        {
            do
            {
                htm = htm + "<tr>";
                htm = htm + "<td>" + dr["StudID"].ToString() + "</td>";
                htm = htm + "<td>" + dr["Name"].ToString() + "</td>";
                htm = htm + "<td>" + dr["DOB"].ToString() + "</td>";
                htm = htm + "<td>" + dr["DOJ"].ToString() + "</td>";
                htm = htm + "<td>" + dr["Course"].ToString() + "</td>";
                htm = htm + "<td><a href='Indi-details.aspx?id=" + dr["StudID"].ToString() + "&id1=" + lblAdmin.Text + "'>View</td>";
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