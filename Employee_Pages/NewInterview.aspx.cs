using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Employee_Pages_NewInterview : System.Web.UI.Page
{
    DateTime[] dates;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Account ac = new Account();
        Label1.Text = ac.get_name(Session["user"].ToString().TrimEnd()).ToUpper();
        if(!IsPostBack)
        {
            inv.Visible = false;
            det.Visible = false;
            conf.Visible = false;
            getPositions();
            
        }
        else
            getdates();
        
    }
    protected void getdates()
    {
        Employee_pros pros = new Employee_pros();
        int positionId = pros.gerPositionId(Session["user"].ToString().TrimEnd(), DropDownList1.SelectedItem.ToString());
        dates = pros.getPositionDates(positionId);

    }
    protected void getPositions()
    {
        Employee_pros pros = new Employee_pros();
        List<string> positions = pros.getPositions(Session["user"].ToString().TrimEnd());
        for (int i = 0; i < positions.Count; i++)
            DropDownList1.Items.Add(positions[i]);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (email_val() == false)
            return;
        getCandidateDetails();
        getdates();
    }
    protected bool email_val()
    {
        Label17.Visible = false;
        string email = TextBox1.Text;
        string expresion;
        expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        if (Regex.IsMatch(email, expresion))
        {
            
            if (Regex.Replace(email, expresion, string.Empty).Length == 0)
            {

                return true;
            }
            else
            {

                return false;
            }
        }
        else
        {
            Label17.Visible = true;
            return false;
        }
    }
    protected void getCandidateDetails()
    {
        inv.Visible = false;
        det.Visible = false;
        conf.Visible = false;
        Account ac = new Account();
        List<string> deta = ac.getUserDetails(TextBox1.Text.ToString());
        if (ac.getUserLevel(TextBox1.Text.ToString()).Equals("emp"))
            return;
        if (deta.Count == 0)
        {
            inv.Visible = true;
        }
        else
        {
            Label8.Text = deta[0];
            Label9.Text = deta[1].Substring(0, 9);
            Label10.Text = deta[2];
            det.Visible = true;
            conf.Visible = true;
        }
        Candidate_pros pros = new Candidate_pros();
        List<string> skills = pros.getSkills(TextBox1.Text);
        if(skills!=null && skills.Count>0)
            Label11.Text = skills[0];


    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToString().Substring(0, 9);
        Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        

    }
    protected void addInterview()
    {
        Employee_pros pros = new Employee_pros();

        string emp_user = Session["user"].ToString().TrimEnd();
        string can_user = TextBox1.Text;
        int positionId = pros.gerPositionId(emp_user, DropDownList1.SelectedItem.ToString());
        DateTime date = Calendar1.SelectedDate;
        TimeSpan time = new TimeSpan(Int32.Parse(DropDownList3.SelectedItem.ToString()), Int32.Parse(DropDownList4.SelectedItem.ToString()), 0);
        int dur = Int32.Parse(DropDownList2.SelectedValue);

        if(pros.check_timing(emp_user,date,time,dur)==false)
        {
            Label19.Text = "Selected time is overlaped with another interview";
            Label19.Visible = true;
            return;
        }

        pros.newInterview(emp_user, can_user, positionId, date, time, dur);
        Response.Redirect("CheckInterview.aspx");
    }
    protected bool validation()
    {
        if (TextBox2.Text.Length < 2)
        {
            Label19.Text="Please Select Date";
            Label19.Visible = true;
            return false;
        }
           

        return true;

    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {

        //Employee_pros pros = new Employee_pros();
        //int positionId = pros.gerPositionId(Session["user"].ToString().TrimEnd(), DropDownList1.SelectedItem.ToString());
        //DateTime[] dates = pros.getPositionDates(positionId);

      
        DateTime today = DateTime.Today.Date;
        if (dates[1] <= today)
          {
              Label19.Text = "The Position Is Closed";
              Label19.Visible = true;
          }
        if(dates[0]>today)
            Calendar1.SelectedDate = dates[0];
        else
        {
            Calendar1.SelectedDate = today.AddDays(1);
        }
        if (e.Day.Date < dates[0] || e.Day.Date > dates[1] || e.Day.Date <= today)
        {
            e.Day.IsSelectable = false;
            e.Cell.BackColor = System.Drawing.Color.Gray;
        }

    }


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (validation() == false)
            return;
        addInterview();
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string to = TextBox1.Text;
        string subject = "Online Interview Invitation";
        string message = "you are invited to register to onlineinterview.com";
        Account ac=new Account();
        ac.sendmail(to,subject,message);
        Label15.Visible=false;
        Label16.Visible=true;
        ImageButton4.Visible=false;
    }
}