using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_EditTest : System.Web.UI.Page
{
    int testId;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        testId = Int32.Parse(Session["tid"].ToString().TrimEnd());
        if(!IsPostBack)
            getInfo();
        getQuestion();
    }
    protected void getInfo()
    {
        Employee_pros pros = new Employee_pros();
        TextBox1.Text = pros.getTestName(testId);
        DropDownList2.SelectedValue = pros.getTestTime(testId).ToString();

    }
    protected void getQuestion()
    {
        List<int> answers = new List<int>();
        Candidate_pros pros = new Candidate_pros();
        List<List<string>> questions = new List<List<string>>();
        questions = pros.getTestQuestion(testId);
        int qno = 1;
        Label6.Text = questions.Count.ToString();
        for (int i = 0; i < questions.Count; i++)
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
            number.Text = qno.ToString() + "-";
            q.Text = questions[i][0];
            ques.Cells.Add(number);
            ques.Cells.Add(q);
            ques.BackColor = c;
            Table1.Rows.Add(ques);

            for (int j = 0; j < 4; j++)
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
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Employee_pros pros = new Employee_pros();
        pros.updateTest(testId, TextBox1.Text, Int32.Parse(DropDownList2.SelectedValue));
        Response.Redirect("CheckTests.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Employee_pros pros = new Employee_pros();
        pros.deletTest(testId);
        Response.Redirect("CheckTests.aspx");
    }
}