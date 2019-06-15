using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_EditForm : System.Web.UI.Page
{
    int formId;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        formId = Int32.Parse(Session["fid"].ToString());
        Employee_pros pros = new Employee_pros();
        TextBox1.Text = pros.getFormName(formId);
        getquestion();
    }
    protected void getquestion()
    {
        Candidate_pros pros = new Candidate_pros();
        List<string> question = new List<string>();
        question = pros.getFormQuestion(formId);
        Label5.Text = question.Count.ToString();

        for (int i = 0; i < question.Count; i++)
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
            qu.Height = 40;
            TableCell number = new TableCell();
            TableCell q = new TableCell();
            qu.BackColor = c;
            number.Text = (i + 1).ToString() + "-";
            q.Text = question[i];
            number.Width = 10;
            qu.Cells.Add(number);
            qu.Cells.Add(q);

            Table1.Rows.Add(qu);


        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Employee_pros pros = new Employee_pros();
        pros.updateFormName(formId,TextBox1.Text);
        Response.Redirect("CheckForm.aspx");

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Employee_pros pros = new Employee_pros();
        pros.deleteForm(formId);
        Response.Redirect("CheckForm.aspx");
    }
}