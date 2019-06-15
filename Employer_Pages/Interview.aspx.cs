using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_Interview : System.Web.UI.Page
{
    int int_id;
    int pos_id;
    DateTime int_time;
    int dur;
    protected void Page_Load(object sender, EventArgs e)
    {
        int_id = Int32.Parse(Session["inter"].ToString().TrimEnd());
        pos_id = Int32.Parse(Session["pos"].ToString().TrimEnd());
        fillInfo();
        Candidate_pros pros = new Candidate_pros();
        int_time = pros.getFirstInterviewTime(Session["user"].ToString().TrimEnd());
        getdt();
    }
    protected void fillInfo()
    {
        Employee_pros pros = new Employee_pros();
        Label3.Text = pros.getPositionName(pos_id);
        Label4.Text = pros.getRequierment(pos_id);
        Candidate_pros cpros = new Candidate_pros();
        List<string> det = cpros.getInterviewById(int_id);
        dur = Int32.Parse(det[4]);
        Account ac = new Account();
        List<string> d = ac.getCompanyDetails(det[0]);
        Label1.Text = d[0];
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
        TimeSpan finish = new TimeSpan(time.Days, time.Hours, time.Minutes + dur, time.Seconds);
        if (time.Days > 0)
        {
            TimeSpan ntime = new TimeSpan(time.Hours, time.Minutes, time.Seconds);
            Label19.Text = time.Days + " Day(s) " + ntime;

        }
        else
        {

            Label19.Text = getdt().ToString();
          
        }
        if (time.Days + time.Hours + time.Minutes + time.Seconds <= 0)
        {
            Label19.Visible = false;
            Label21.Text = "Started";
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        UpdateTimer();
    }

}