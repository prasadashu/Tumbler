using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class File_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        ddlSubject.Items.Add(new ListItem("SELECT","0"));
        ddlSubject.Items.Add(new ListItem("G.K.", "1"));
        ddlSubject.Items.Add(new ListItem("English", "2"));
        ddlSubject.Items.Add(new ListItem("Maths", "3"));
        ddlSubject.Items.Add(new ListItem("History", "4"));

        chkCategory.Items.Add(new ListItem("Railway", "1"));
        chkCategory.Items.Add(new ListItem("SSC", "2"));
        chkCategory.Items.Add(new ListItem("UPSC", "3"));

        SelectMaxValue();

        lblAdmin.Text = Request.QueryString["id"];
        
    }

    private bool CheckFileUpload()
    {
        string Extension, Filename;

        Extension = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);


        if (FileUpload1.HasFile == false)
        {
            ShowMsg("Please select a file");
            FileUpload1.Focus();
            return false;
        }

        if (FileUpload1.PostedFile.ContentLength > 7000000)
        {
            ShowMsg("File size too big");
            FileUpload1.Focus();
            return false;
        }

        if (Extension == ".doc" || Extension == ".docx" || Extension == ".pdf" || Extension == ".txt")
        {
            Filename = txtTutorialID.Text + Extension;

            FileUpload1.PostedFile.SaveAs(Server.MapPath("Tutorials\\") + Filename);
            return true;
        }


        ShowMsg("Incorrect file type");
        FileUpload1.Focus();
        return false;
    }

    private void ShowMsg(string str)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "msg", "alert('" + str + "');", true);
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if(CheckFileUpload())
        {
            TblTutorialCategory();
            TblTutorialEntry();

            SelectMaxValue();

            Reset();
        }
    }

    private void SelectMaxValue()
    {
        int id;
        ADOHelper obj = new ADOHelper();
        SqlDataReader dr = obj.GetDataReader("SELECT MAX(TutorialID) as TutorialID FROM tblTutorial");

        

        if (dr["TutorialID"] != DBNull.Value)
        {
            id = int.Parse(dr["TutorialID"].ToString()) + 1;
            txtTutorialID.Text = id.ToString();
        }
        else
        {
            id = 1;
            txtTutorialID.Text = id.ToString();
        }
    }

    private void TblTutorialEntry()
    {
        string Filename, Extension;

        Extension = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        Filename = txtTutorialID.Text + Extension;

        string str = "INSERT INTO tblTutorial(TutorialID, TutorialTitle, Description, Subject, Filename) VALUES('" + txtTutorialID.Text + "', '" + txtTutorialTitle.Text + "', '" + txtDescription.Text + "', '" + ddlSubject.SelectedItem.Text + "','" + Filename + "')";

        SqlConnection cn = new SqlConnection("Data Source=ICHARION; Initial Catalog=dbLogin; Integrated Security=True;");
        cn.Open();

        SqlCommand cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();

        cn.Close();

        ShowMsg("File uploaded successfully");
    }

    private void TblTutorialCategory()
    {
        int item_chkd = 0;

        for(int i = 0; i < chkCategory.Items.Count; i++)
        {
            if(chkCategory.Items[i].Selected == true)
            {
                string csy = "INSERT INTO tblTutorialCategory(TutorialID, Category) VALUES('" + txtTutorialID.Text + "', '" + chkCategory.Items[i].Text + "')";

                SqlConnection cn = new SqlConnection("Data Source = ICHARION; Initial Catalog = dbLogin; Integrated Security = True;");
                cn.Open();

                SqlCommand cmd = new SqlCommand(csy, cn);
                cmd.ExecuteNonQuery();

                cn.Close();

                item_chkd = item_chkd + 1;
            }
        }

        if(item_chkd == 0)
        {
            ShowMsg("Please select a category");
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Reset();
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin-home.aspx?id=" + lblAdmin.Text);
    }

    private void Reset()
    {
        txtTutorialTitle.Text = String.Empty;
        txtDescription.Text = String.Empty;
    }
}