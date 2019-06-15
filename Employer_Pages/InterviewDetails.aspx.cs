using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_InterviewDetails : System.Web.UI.Page
{
    int int_Id;
    int poid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        int_Id = Int32.Parse(Session["intId"].ToString().TrimEnd());
        filldata();
    }
    protected void filldata()
    {
        Candidate_pros pros = new Candidate_pros();
        List<string> idetails = pros.getInterviewById(int_Id);
        Employee_pros epros = new Employee_pros();
        Label14.Text = epros.getPositionName(Int32.Parse(idetails[1]));
        poid = Int32.Parse(idetails[1]);
        Label16.Text = idetails[2];
        Label18.Text = idetails[3];
        Label20.Text = idetails[5];
        Label22.Text = idetails[6];
        Label29.Text = idetails[7];
        Label26.Text = idetails[8];

        if(Label22.Text.Equals("0"))
        {
            Label22.Text = "Not Done";
            Button1.Visible = true;
        }
        if (Label29.Text.TrimEnd().Equals("NOT_DONE"))
        {
            Button2.Visible = true;
        }

        Account ac = new Account();
        Label3.Text = ac.get_name(idetails[0]);
        List<string> company = ac.getCompanyDetails(idetails[0]);
        Label27.Text = company[0];
        Label28.Text = company[1];
        TextBox1.Text = company[2];
        Label7.Text = company[3];



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["inter"] = int_Id;
        Session["pos"] = poid;
        Response.Redirect("TakeTest.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["pos"] = poid;
        Session["inter"] = int_Id;
        Response.Redirect("FillForm.aspx");

    }
}