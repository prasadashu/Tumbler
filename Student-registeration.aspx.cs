using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
            return;

        ddlCategory.Items.Add(new ListItem("General", "1"));
        ddlCategory.Items.Add(new ListItem("SC", "2"));
        ddlCategory.Items.Add(new ListItem("ST", "3"));
        ddlCategory.Items.Add(new ListItem("OBC", "4"));

        ddlGender.Items.Add(new ListItem("Male", "1"));
        ddlGender.Items.Add(new ListItem("Female", "2"));

        rdCourse.Items.Add(new ListItem("Railway","1"));
        rdCourse.Items.Add(new ListItem("SSC","2"));
        rdCourse.Items.Add(new ListItem("UPSC","3"));

        //SelectMaxValue();

        lblAdminID.Text = Request.QueryString["id"];
         
   }

    protected void btnDOB_Click(object sender, EventArgs e)
    {
        calDOB.Visible = true;
        btnDOB.Visible = false;
    }

    protected void btnDOJ_Click(object sender, EventArgs e)
    {
        calDOJ.Visible = true;
        btnDOJ.Visible = false;
    }

    protected void calDOB_SelectionChanged(object sender, EventArgs e)
    {
        txtDOB.Text = calDOB.SelectedDate.ToString("dd/MM/yyyy");
        calDOB.Visible = false;
        btnDOB.Visible = true;
    }
    protected void calDOJ_SelectionChanged(object sender, EventArgs e)
    {
        txtDOJ.Text = calDOJ.SelectedDate.ToString("dd/MM/yyyy");
        calDOJ.Visible = false;
        btnDOJ.Visible = true;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SelectMaxValue();
                      
        SqlConnection cn = new SqlConnection("Data Source=ICHARION;Initial Catalog=dbLogin;Integrated Security=True");
        cn.Open();

        string pass = txtName.Text.ToLower().Substring(0,3) + txtStudID.Text;

        txtPassword.Text = pass;

        string str = "INSERT INTO tblStudent(StudID, Name, Gender, Guard_Name, Category, Religion, Nationality, Marital_Stat, Hgh_Qual, Course, Address, Contact_No, EmailID, DOJ, DOB) VALUES('" + txtStudID.Text + "','" + txtName.Text + "', '" + ddlGender.SelectedItem.Text + "','" + txtGuard_Name.Text + "','" + ddlCategory.SelectedItem.Text + "','" + txtReligion.Text + "','" + txtNationality.Text + "','" + txtMarital_Stat.Text + "','" + Hgh_Qual.Text + "','" + rdCourse.SelectedItem.Text + "','" + txtAddress.Text + "','" + txtConatct_No.Text + "','" + txtEmailID.Text + "','" + txtDOJ.Text + "','" + txtDOB.Text + "')";
        string sri = "INSERT INTO tblLogin(UserID, Password) VALUES('" + txtStudID.Text + "', '" + txtPassword.Text + "')";

        SqlCommand cmd = new SqlCommand(str, cn);
        
        if (CheckFileUpload())
        {
            cmd.ExecuteNonQuery();
            
            cmd = new SqlCommand(sri, cn);
            cmd.ExecuteNonQuery();

            cn.Close();

            ShowMsg("Student ID is: " + txtStudID.Text);

            Reset();

            SelectMaxValue();

        }

    }

    private void ShowMsg(string str)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "msg", "alert('" + str + "');", true);
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

        if (FileUpload1.PostedFile.ContentLength > 100000)
        {
            ShowMsg("File size too big");
            FileUpload1.Focus();
            return false;
        }

        if (Extension == ".jpg" || Extension == ".jpeg" || Extension == ".gif" || Extension == ".png")
        {
            Filename = txtStudID.Text + Extension;
            
            FileUpload1.PostedFile.SaveAs(Server.MapPath("UserImage\\") + Filename);
            return true;
        }


        ShowMsg("Incorrect file type");
        FileUpload1.Focus();
        return false;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Reset();
    }

    private void Reset()
    {
        txtName.Text = String.Empty;
        txtGuard_Name.Text = String.Empty;
        txtDOB.Text = String.Empty;
        txtReligion.Text = String.Empty;
        txtNationality.Text = String.Empty;
        txtMarital_Stat.Text = String.Empty;
        txtConatct_No.Text = String.Empty;
        txtEmailID.Text = String.Empty;
        txtAddress.Text = String.Empty;
        Hgh_Qual.Text = String.Empty;
        txtDOJ.Text = String.Empty;
        txtStudID.Text = String.Empty;
    }

    private void SelectMaxValue()
    {
        int id;

        ADOHelper obj = new ADOHelper();
        SqlDataReader dr = obj.GetDataReader("SELECT MAX(StudID) as StudID FROM tblStudent");

        if(dr["StudID"] != DBNull.Value)
        {
            id = Convert.ToInt32(dr["StudID"]);
            id = id + 1;

            txtStudID.Text = (id.ToString());
        }
        else
        {
            id = 1;

            txtStudID.Text = (id.ToString());
        }

       
    }
    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin-home.aspx?id=" + lblAdminID.Text);
    }
}