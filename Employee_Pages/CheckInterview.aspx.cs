using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_CheckInterview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        fill_position();
        fill_table();
    }
    protected void fill_position()
    {
        DropDownList1.Items.Clear();
        string user = Session["user"].ToString().TrimEnd();
        Employee_pros pros = new Employee_pros();
        List<string> position = pros.getPositions(user);
        DropDownList1.Items.Add("ALL");
        foreach (string p in position)
            DropDownList1.Items.Add(p);
    }
    protected void fill_table()
    {
        int count = 0;
        int type=0;
        if (RadioButton1.Checked)
            type = 1;
        else if (RadioButton2.Checked)
            type = -1;
        int positionId;
        Employee_pros pros = new Employee_pros();
        if(DropDownList1.SelectedItem.ToString().Equals("ALL"))
            positionId=0;
        else
            positionId = pros.gerPositionId(Session["user"].ToString().TrimEnd(), DropDownList1.SelectedItem.ToString());
        List<List<string>> details = pros.getInterviews(Session["user"].ToString().TrimEnd(), type, positionId);
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
            position.Text=pros.getPositionName(Int32.Parse(temp[1]));
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
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
     
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        int row = Table1.Rows.Count;
        string can = "",pos="";
        bool flag = false;
        for (int i = 1; i < row; i++)
        {
            RadioButton check = new RadioButton();
            check = (RadioButton)Table1.Rows[i].Cells[8].Controls[0];
            if (check.Checked)
            {
                can = Table1.Rows[i].Cells[1].Text;
                pos = Table1.Rows[i].Cells[2].Text;
                flag = true;
                continue;
            }
        }
        if(!flag)
        {
            Label3.Visible = true;
            return;
        }

        Employee_pros pros = new Employee_pros();
        int poId=pros.gerPositionId(Session["user"].ToString().TrimEnd(),pos);

        int intId = pros.getInterviewId(Session["user"].ToString().TrimEnd(), can, poId);
        Session["intId"] = intId.ToString();
        Response.Redirect("InterviewDetails.aspx");
    }
}