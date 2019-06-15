using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_TakeTest : System.Web.UI.Page
{
    int inter_id;
    string user;
    int positionId;
    DateTime end;
    int dur;
    int testId;
    List<int> answers;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
   
            inter_id = Int32.Parse(Session["inter"].ToString().TrimEnd());
            user = Session["user"].ToString().TrimEnd();
            positionId = Int32.Parse(Session["pos"].ToString().TrimEnd());
            getInfo();
            getdt();
            getQuestions();
        if (!IsPostBack)
        {
            end = DateTime.Now.AddMinutes(dur);
            Session["end"] = end.ToString();
        }
        else
            end = Convert.ToDateTime(Session["end"].ToString().TrimEnd());
    }
    protected void getInfo()
    {
        Employee_pros epros = new Employee_pros();
        Candidate_pros cpros = new Candidate_pros();
        Label4.Text = epros.getPositionName(positionId);
        testId = cpros.getTestId(positionId);
        List<string> testDet = cpros.getTestDetails(testId);
        Label5.Text = testDet[0];
        dur = Int32.Parse(testDet[1]);
        

    }




    protected TimeSpan getdt()
    {
        DateTime now = DateTime.Now;
        TimeSpan dif = (end - now);
        if (dif.Minutes==0 && dif.Seconds==0)
            submit();
        TimeSpan ret = new TimeSpan(dif.Days, dif.Hours, dif.Minutes, dif.Seconds, 0);
        return ret;
    }
    private void UpdateTimer()
    {
        TimeSpan time = getdt();

            Label6.Text = getdt().ToString();
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        UpdateTimer();
    }
    protected void getQuestions()
    {

        answers = new List<int>();
        Candidate_pros pros = new Candidate_pros();
        List<List<string>> questions = new List<List<string>>();
        questions = pros.getTestQuestion(testId);
        int qno=1;

        for(int i=0;i<questions.Count;i++)
        {
            System.Drawing.Color c;
            if (i % 2 == 0)
            {
                c = System.Drawing.Color.LightBlue;
            }
            else
            {
                c = System.Drawing.Color.White;
            }
            TableRow ques = new TableRow();
            TableCell number = new TableCell();
            number.Width = 10;
            TableCell q = new TableCell();
            number.Text = qno.ToString()+"-";
            q.Text = questions[i][0];
            ques.Cells.Add(number);
            ques.Cells.Add(q);
            ques.BackColor = c;
            Table1.Rows.Add(ques);

            for(int j=0;j<4;j++)
            {
                TableRow ans = new TableRow();
                TableCell ar = new TableCell();
                ar.Width = 10;
                ans.BackColor = c;
                TableCell an = new TableCell();
                RadioButton radio = new RadioButton();
                radio.GroupName = i.ToString();
                ar.Controls.Add(radio);
                an.Text = questions[i][j + 1];
                ans.Cells.Add(ar);
                ans.Cells.Add(an);
                Table1.Rows.Add(ans);
            }
            answers.Add(Int32.Parse(questions[i][5]));
            qno++;
        }



    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        submit();


    }
    protected void submit()
    {
        int row = Table1.Rows.Count;
        int questions = row / 5;
        int cor_ans = 0;
        int ans = 0;
        int ques = 0;
        for (int i = 0; i < row; i++)
        {

            for (int j = 1; j < 5; j++)
            {
                i++;
                RadioButton an = new RadioButton();
                an = (RadioButton)Table1.Rows[i].Cells[0].Controls[0];
                if (an.Checked)
                    ans = j;
            }
            if (ans == answers[ques])
                cor_ans++;
            ques++;

        }
        int mark = cor_ans * 100 / questions;
        Candidate_pros pros = new Candidate_pros();
        pros.setTestMark(inter_id, mark);
        Response.Redirect(Session["cp"].ToString().TrimEnd());
    }
}