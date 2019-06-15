using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_Home : System.Web.UI.Page
{
    DateTime int_time;
    int intid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Account ac = new Account();
            string name = ac.get_name(Session["user"].ToString().TrimEnd());
            Label1.Text = name.ToUpper();
            loadInterviews();
            loadPositions();
            


            setSessions();
            

            
        }
        Employee_pros pros = new Employee_pros();
        int_time = pros.getFirstIntTime(Session["user"].ToString().TrimEnd());
        getdt();
    }
    protected void loadInterviews()
    {
        Employee_pros pros = new Employee_pros();
        List<List<string>> det = pros.getInterviewDetails(Session["user"].ToString().TrimEnd());
        int pid=0;
        for(int i=0; i<det.Count;i++)
        {
            if (i > 4)
                return;

            for(int j=0;j<4;j++)
            {
                if (j == 1)
                {
                    Table1.Rows[i + 1].Cells[j].Text = pros.getPositionName(Int32.Parse(det[i][j]));
                    if(i==0)
                        pid=Int32.Parse(det[i][j]);

                }

                else
                    Table1.Rows[i + 1].Cells[j].Text = det[i][j];
                
            }

        }
        Label5.Text = Table1.Rows[1].Cells[0].Text;
        Label6.Text = Table1.Rows[1].Cells[1].Text;
        intid = pros.getInterviewId(Session["user"].ToString().TrimEnd(), Label5.Text, pid);
        Session["intid"] = intid;
    }
    protected void loadPositions()
    {
        Employee_pros pros = new Employee_pros();
        List<List<string>> det = pros.getPositionDetails(Session["user"].ToString().TrimEnd());
        for (int i = 0; i < det.Count; i++)
        {
            if (i > 4)
                return;

            for (int j = 0; j < 3; j++)
            {
                    Table2.Rows[i + 1].Cells[j].Text = det[i][j];
            }
        }
    }
    protected void setSessions()
    {
        Session["candidate"] = Label5.Text;
        Session["ConfId"] = Label5.Text;
    }
    protected TimeSpan getdt()
    {
        DateTime now = DateTime.UtcNow;
        now = now.AddHours(8);
        if (now > int_time)
        {
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;

        }
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
        if (getdt().Days > 0)
            Label2.Text = getdt().Days + " Days " + getdt().Hours + ":" + getdt().Minutes + ":" + getdt().Seconds;
        else
            Label2.Text = getdt().ToString();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        UpdateTimer();
    }


}