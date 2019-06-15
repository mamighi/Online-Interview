using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_Home : System.Web.UI.Page
{
    DateTime int_time;
    string int_id;
    string pos_id;
    protected void Page_Load(object sender, EventArgs e)
    {
            Session["cp"] = "Home.aspx";
            Account ac = new Account();
            string name = ac.get_name(Session["user"].ToString().TrimEnd());
            Label1.Text = name.ToUpper();
            Candidate_pros pros = new Candidate_pros();
            int_time = pros.getFirstInterviewTime(Session["user"].ToString().TrimEnd());
            getdt();
            getInterviewDetails();
    }
    protected TimeSpan getdt()
    {
        DateTime now = DateTime.UtcNow;
        now = now.AddHours(8);
        TimeSpan dif = (int_time - now);
        TimeSpan ret = new TimeSpan(dif.Days, dif.Hours, dif.Minutes, dif.Seconds, 0);
        return ret;
    }
    private void UpdateTimer()
    {
        TimeSpan time = getdt();
        if (time.Days < 0)
        {
            Label2.Text = "No Interview";
            return;
        }
        if (time.Days > 0)
        {
            TimeSpan ntime = new TimeSpan(time.Hours, time.Minutes, time.Seconds);
            Label2.Text = time.Days + " Day(s) " + ntime;
        }
        else
            Label2.Text = getdt().ToString();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        UpdateTimer();
    }
    protected void getInterviewDetails()
    {
        Candidate_pros pros = new Candidate_pros();
        List<string> details = pros.getFirstInterviewDetails(Session["user"].ToString().TrimEnd());
        if (details.Count == 0)
            return;
        Label14.Text = details[2] + " Minuts";
        Label15.Text = details[3];
        Label16.Text = details[4];
        int_id = details[5];
        Label12.Text = int_time.Date.ToString().Substring(0, 10);
        Label13.Text = int_time.TimeOfDay.ToString();
        Employee_pros pros2 = new Employee_pros();
        Label4.Text = pros2.getPositionName(Int32.Parse(details[1]));
        Label3.Text = pros.getCompanyName(details[0]);
    
        if (Label15.Text.TrimEnd().Equals("NOT_DONE"))
        {
            Button1.Visible = true;
            Label15.Text = "Not Taken";
        }
        else
        {
            Label15.Text = "DONE   Result: " + details[6] + "%";
        }
        if (Label16.Text.TrimEnd().Equals("NOT_DONE"))
        {
            Button2.Visible = true;
            Label16.Text = "Not Filled";
        }
        pos_id = details[1];
        Session["inter"] = int_id;
        Session["pos"] = pos_id;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("TakeTest.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Response.Redirect("FillForm.aspx");
    }
}