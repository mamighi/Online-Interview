using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class Employee_Pages_InterviewDetails : System.Web.UI.Page
{
    string candidate;
    int int_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        int_id=Int32.Parse(Session["intId"].ToString().TrimEnd());
        getInterviewdet();
    }
    protected void getInterviewdet()
    {
        Employee_pros pros = new Employee_pros();
        List<string> details = pros.getInterviewById(int_id);
        candidate = details[0];
        Label14.Text = pros.getPositionName(Int32.Parse(details[1]));
        Label16.Text = details[2];
        Label18.Text = details[3];
        Label20.Text = details[5];
        Label22.Text = details[6];
        Label26.Text = details[7];
        Account ac = new Account();
        List<string> cand_det = new List<string>();
        cand_det = ac.getUserDetails(candidate);
        Label3.Text = cand_det[0];
        Label5.Text = cand_det[1].Substring(0,9);
        Label7.Text = cand_det[2];
        Candidate_pros cpros = new Candidate_pros();
        List<string> skills = new List<string>();
        skills = cpros.getSkills(candidate);
        if (skills.Count != 0)
        {
            TextBox1.Text = skills[0];
            TextBox2.Text = skills[1];
            Label12.Text = skills[2];
            TextBox3.Text = skills[3];
        }

        List<string> fileName = new List<string>();
        fileName = cpros.getFilesName(candidate);
        Label36.Text = fileName[0];
        Label38.Text = fileName[1];
        Label40.Text = fileName[2];
        Label42.Text = fileName[3];
        Interview_pros ipros = new Interview_pros();
        List<string> scors = ipros.getInterviewScore(int_id);
        if (scors.Count == 5)
        {
            Label27.Text = scors[0];
            Label29.Text = scors[1];
            Label31.Text = scors[2];
            Label33.Text = scors[3];
            TextBox4.Text = scors[4];
        }
        if(Label26.Text.TrimEnd().Equals("PENDING"))
        {
            ImageButton2.Visible = true;
            ImageButton3.Visible = true;

        }


    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label36.Text;
        if (!fileName.Contains("."))
            return;
        string tempPath = System.IO.Path.GetTempPath();
        string dpath = tempPath + "\\" + fileName;
        byte[] data = pros.get_cer(candidate, "cv");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;

        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
        Response.BinaryWrite(data);
    }



    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label38.Text;
        if (!fileName.Contains("."))
            return;
        string tempPath = System.IO.Path.GetTempPath();
        string dpath = tempPath + "\\" + fileName;
        byte[] data = pros.get_cer(candidate, "cer1");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;

        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
        Response.BinaryWrite(data);
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label40.Text;
        if (!fileName.Contains("."))
            return;
        string tempPath = System.IO.Path.GetTempPath();
        string dpath = tempPath + "\\" + fileName;
        byte[] data = pros.get_cer(candidate, "cer2");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;

        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
        Response.BinaryWrite(data);
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label42.Text;
        if (!fileName.Contains("."))
            return;
        string tempPath = System.IO.Path.GetTempPath();
        string dpath = tempPath + "\\" + fileName;
        byte[] data = pros.get_cer(candidate, "cer3");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;

        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document";
        Response.BinaryWrite(data);
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Interview_pros pros = new Interview_pros();
        pros.changeResult(int_id, "Accepted");

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Interview_pros pros = new Interview_pros();
        pros.changeResult(int_id, "Rejected");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string winFeatures = "toolbar=no,status=no,menubar=no,location=center,scrollbars=no,resizable=no,height=550,width=700";
        ClientScript.RegisterStartupScript(this.GetType(), "newWindow", string.Format("<script type='text/javascript'>window.open('{0}', 'yourWin', '{1}');</script>", "FormAnswer.aspx", winFeatures));
     //   ClientScript.RegisterStartupScript(this.GetType(), "newWindow", String.Format("<script>window.open('{0}');</script>", "FormAnswer.aspx"));
      //  Response.Redirect("FormAnswer.aspx");
    }
}