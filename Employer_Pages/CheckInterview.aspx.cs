using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_CheckInterview : System.Web.UI.Page
{
    int type;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        string typ=Request.QueryString["type"];
        if (typ.Equals("up"))
            type = 1;
        else
            type = -1;
        filltabel();
    }
    protected void filltabel()
    {
        int count = 0;
        Candidate_pros pros = new Candidate_pros();
        Employee_pros epros = new Employee_pros();
        List<List<string>> details = pros.getInterviews(Session["user"].ToString().TrimEnd(), type);
        foreach (List<string> temp in details)
        {
            count++;
            TableRow row = new TableRow();
            TableCell number = new TableCell();
            number.Text = (count).ToString();
            row.HorizontalAlign = HorizontalAlign.Center;
            number.BackColor = System.Drawing.Color.Silver;

            TableCell candidate = new TableCell();
            candidate.Text = temp[0];

            TableCell position = new TableCell();
            position.Text = epros.getPositionName(Int32.Parse(temp[1]));
            position.BackColor = System.Drawing.Color.Silver;

            TableCell date = new TableCell();
            date.Text = temp[2];

            TableCell time = new TableCell();
            time.Text = temp[3];
            time.BackColor = System.Drawing.Color.Silver;

            TableCell status = new TableCell();
            status.Text = temp[5];


            TableCell testres = new TableCell();
            testres.Text = temp[6];
            testres.BackColor = System.Drawing.Color.Silver;

            TableCell res = new TableCell();
            res.Text = temp[7];


            TableCell check = new TableCell();
            RadioButton ch = new RadioButton();
            ch.GroupName = "ch";
            check.BackColor = System.Drawing.Color.Silver;
            check.Controls.Add(ch);


            row.Cells.Add(number);
            row.Cells.Add(candidate);
            row.Cells.Add(position);
            row.Cells.Add(date);
            row.Cells.Add(time);
            row.Cells.Add(status);
            row.Cells.Add(testres);
            row.Cells.Add(res);
            row.Cells.Add(check);
            Table1.Rows.Add(row);

        }

    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
                int row = Table1.Rows.Count;
                bool flag = false;
        string emp = "",pos="";
        for (int i = 1; i < row; i++)
        {
            RadioButton check = new RadioButton();
            check = (RadioButton)Table1.Rows[i].Cells[8].Controls[0];
            if (check.Checked)
            {
                emp = Table1.Rows[i].Cells[1].Text;
                pos = Table1.Rows[i].Cells[2].Text;
                flag = true;
                continue;
            }
        }
       
        if(!flag)
        {
            Label5.Visible = true;
            return;
        }
        Employee_pros pros = new Employee_pros();
        int poId=pros.gerPositionId(emp,pos);

        int intId = pros.getInterviewId(emp, Session["user"].ToString().TrimEnd(), poId);
        Session["intId"] = intId.ToString();
        Response.Redirect("InterviewDetails.aspx");
    }
    }
