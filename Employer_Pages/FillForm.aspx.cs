using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_FillForm : System.Web.UI.Page
{
    int positionId;
    int formId;
    int inter_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        inter_id = Int32.Parse(Session["inter"].ToString().TrimEnd());
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        positionId = Int32.Parse(Session["pos"].ToString().TrimEnd());
        Employee_pros pros = new Employee_pros();
        Label4.Text = pros.getPositionName(positionId);
        getFormQuestion();


    }
    protected void getFormQuestion()
    {

        Candidate_pros pros = new Candidate_pros();
        List<string> question = new List<string>();
        formId = pros.getFormId(positionId);
        question = pros.getFormQuestion(formId);

        for(int i=0;i<question.Count;i++)
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
            TableRow qu = new TableRow();
            TableCell number = new TableCell();
            TableCell q = new TableCell();
            qu.BackColor = c;
            number.Text = (i + 1).ToString() + "-";
            q.Text = question[i];
            number.Width = 10;
            qu.Cells.Add(number);
            qu.Cells.Add(q);

            Table1.Rows.Add(qu);

            TableRow ans = new TableRow();
            TableCell dump = new TableCell();
            TableCell an = new TableCell();
            TextBox antext = new TextBox();
            ans.Height = 40;
            antext.BackColor = c;
            ans.BackColor = c;
            antext.Width = 600;
            an.Controls.Add(antext);
            dump.Width = 10;
            ans.Cells.Add(dump);
            ans.Cells.Add(an);
            Table1.Rows.Add(ans);

        }

    }





    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int row = Table1.Rows.Count;
        List<string> answers = new List<string>();
        for(int i=1;i<row;i=i+2)
        {
            TextBox ans = new TextBox();
            ans = (TextBox)Table1.Rows[i].Cells[1].Controls[0];
            answers.Add(ans.Text);
        }
        Candidate_pros pros = new Candidate_pros();
        pros.formAnswers(answers, formId, inter_id);
        pros.updateFormStatus(inter_id);
        Response.Redirect(Session["cp"].ToString().TrimEnd());
    }
}