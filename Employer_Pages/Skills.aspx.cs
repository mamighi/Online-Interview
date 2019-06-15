using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_Skills : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        if(!IsPostBack)
            get_skills();
    }
    protected void get_skills()
    {
        Candidate_pros pros = new Candidate_pros();
        List<string> skills = pros.getSkills(Session["user"].ToString().TrimEnd());
        try
        {
            TextBox1.Text = skills[0];
            TextBox2.Text = skills[1];
            TextBox3.Text = skills[2];
            TextBox4.Text = skills[3];
        }
        catch (Exception ex) { }

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        TextBox3.Enabled = true;
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        TextBox4.Enabled = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        TextBox1.Enabled = true;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        TextBox2.Enabled = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        pros.updateSkills(Session["user"].ToString().TrimEnd(), "skills", TextBox1.Text);
        TextBox1.Enabled = false;

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        pros.updateSkills(Session["user"].ToString().TrimEnd(), "interested", TextBox2.Text);
        TextBox2.Enabled = false;
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        pros.updateSkills(Session["user"].ToString().TrimEnd(), "education", TextBox3.Text);
        TextBox3.Enabled = false;
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        pros.updateSkills(Session["user"].ToString().TrimEnd(), "curren_job", TextBox4.Text);
        TextBox4.Enabled = false;
    }
}