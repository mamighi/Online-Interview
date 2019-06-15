using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Employee_Pages_Interview : System.Web.UI.Page
{
    string candidate, employee;
    int int_id;
    DateTime int_time;
    int dur;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        candidate = Session["candidate"].ToString().TrimEnd();
        employee = Session["user"].ToString().TrimEnd();
        int_id = Int32.Parse(Session["intid"].ToString().TrimEnd());
        get_info();
        Employee_pros pros = new Employee_pros();
        List<string> det=pros.getInterviewById(int_id);
        dur = Int32.Parse(det[4]);
        int_time = pros.getFirstIntTime(Session["user"].ToString().TrimEnd());
        getdt();

    }
    protected TimeSpan getdt()
    {
        DateTime now = DateTime.UtcNow;
        now = now.AddHours(8);
        TimeSpan dif = (int_time - now);
        TimeSpan ret = new TimeSpan(dif.Days, dif.Hours, dif.Minutes, dif.Seconds, 0);
        if (ret.Days + ret.Hours + ret.Minutes + ret.Seconds > 0)
            Button5.Enabled = false;
        else
        {
            
            Response.Redirect(Request.RawUrl); 
            Button5.Enabled = true;
        }
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
            TimeSpan n2time = new TimeSpan(finish.Hours, finish.Minutes, finish.Seconds);
            Label20.Text = finish.Days + " Day(s) " + n2time;
        }
        else
        {

            Label19.Text = getdt().ToString();
            Label20.Text = finish.ToString();
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
    protected void get_info()
    {
        Account ac = new Account();
        Label1.Text = ac.get_name(candidate);
        Employee_pros epros = new Employee_pros();
        int positionId = epros.getInterviewPositionId(int_id);
        Label3.Text = epros.getPositionName(positionId);
        Label4.Text = epros.getRequierment(positionId);
        Label2.Text = ac.getBd(candidate).ToString().Substring(0,9);
        Candidate_pros cpros = new Candidate_pros();
        List<string> skills = cpros.getSkills(candidate);
        TextBox1.Text = skills[0];
        TextBox2.Text = skills[2];
        TextBox3.Text=skills[1];
        Label11.Text = skills[3];
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label3.Text;
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
            Response.ContentType = "application/vnd.ms-word";
        Response.BinaryWrite(data);
    }
    protected void submitInfo()
    {
        int skill=0, knowledge=0, com=0, overal=0;
        string note="";

        //get skill
        if (RadioButton1.Checked) skill = 1;
        else if (RadioButton2.Checked) skill = 2;
        else if (RadioButton3.Checked) skill = 3;
        else if (RadioButton4.Checked) skill = 4;
        else if (RadioButton5.Checked) skill = 5;


        //get knowledge
        if (RadioButton6.Checked) knowledge = 1;
        else if (RadioButton7.Checked) knowledge = 2;
        else if (RadioButton8.Checked) knowledge = 3;
        else if (RadioButton9.Checked) knowledge = 4;
        else if (RadioButton10.Checked) knowledge = 5;

        //get come
        if (RadioButton11.Checked) com = 1;
        else if (RadioButton12.Checked) com = 2;
        else if (RadioButton13.Checked) com = 3;
        else if (RadioButton14.Checked) com = 4;
        else if (RadioButton15.Checked) com = 5;

        //get ove
        if (RadioButton16.Checked) overal = 1;
        else if (RadioButton17.Checked) overal = 2;
        else if (RadioButton18.Checked) overal = 3;
        else if (RadioButton19.Checked) overal = 4;
        else if (RadioButton20.Checked) overal = 5;

        note = TextBox4.Text;

        string result="";

        if (RadioButton21.Checked) result = "ACCEPTED";
        else if (RadioButton22.Checked) result = "PENDING";
        else if (RadioButton23.Checked) result = "REJECTED";

        Interview_pros iPros = new Interview_pros();
        iPros.addInterviewDetails(int_id, skill, knowledge, com, overal, note);
        iPros.changeStatus(int_id);
        iPros.changeResult(int_id, result);
        Response.Redirect("Home.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        submitInfo();
    }
}