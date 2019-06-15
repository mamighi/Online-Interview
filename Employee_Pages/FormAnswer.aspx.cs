using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_FormAnswer : System.Web.UI.Page
{
    int int_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        int_id = Int32.Parse(Session["intId"].ToString().TrimEnd());
        fillform();
    }
    protected void fillform()
    {
        List<string> answer = new List<string>();
        List<string> question = new List<string>();
        Employee_pros pros = new Employee_pros();

        answer = pros.getFormAnswers(int_id);
        if (answer.Count < 1)
            return;
        int formId = Int32.Parse(answer[0]);
        question = pros.getFormQuestion(formId);

        for(int i=0; i<question.Count;i++)
        {
            System.Drawing.Color color;

            if (i % 2 != 0)
                color = System.Drawing.Color.LightBlue;
            else
                color = System.Drawing.Color.White;

            TableRow qrow=new TableRow();
            TableCell number = new TableCell();
            number.Text = (i + 1).ToString()+"-";
            TableCell qu = new TableCell();
            qu.Text = question[i];

            qrow.Cells.Add(number);
            qrow.Cells.Add(qu);

            TableRow arow = new TableRow();
            TableCell dumb = new TableCell();
            TableCell an = new TableCell();
            an.Text = answer[i + 1];

            arow.Cells.Add(dumb);
            arow.Cells.Add(an);

            qrow.BackColor = color;
            arow.BackColor = color;
            arow.Height=25;

            Table1.Rows.Add(qrow);
            Table1.Rows.Add(arow);
        }

        Label2.Text = pros.getFormName(formId);
        Label3.Text = pros.getPositionName(pros.getInterviewPositionId(int_id));
        Account ac = new Account();
        Label1.Text = ac.get_name(pros.getInterviewById(int_id)[0]);
    }


}