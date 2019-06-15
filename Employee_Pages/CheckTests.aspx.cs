using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_CheckTests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        fillTest();
    }
    protected void fillTest()
    {
        Employee_pros pros = new Employee_pros();

        List<List<string>> details = new List<List<string>>();
        details = pros.getTestDetails(Session["user"].ToString().TrimEnd());
        for (int i = 0; i < details.Count; i++)
        {
            TableRow row = new TableRow();
            TableCell number = new TableCell();
            number.Text = (i + 1).ToString();
            row.HorizontalAlign = HorizontalAlign.Center;
            number.BackColor = System.Drawing.Color.Silver;


            TableCell name = new TableCell();
            name.Text = details[i][0];

            TableCell quest = new TableCell();
            quest.Text = details[i][1];
            quest.BackColor = System.Drawing.Color.Silver;
            TableCell dur = new TableCell();
            dur.Text = details[i][2];

            TableCell check = new TableCell();
            RadioButton ch = new RadioButton();
            ch.GroupName = "ch";
            check.BackColor = System.Drawing.Color.Silver;
            check.Controls.Add(ch);

            row.Cells.Add(number);
            row.Cells.Add(name);
            row.Cells.Add(quest);
            row.Cells.Add(dur);

            row.Cells.Add(check);
            Table1.Rows.Add(row);



        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int row = Table1.Rows.Count;
        string name = "";
        bool flag = false;
        for (int i = 1; i < row; i++)
        {
            RadioButton check = new RadioButton();
            check = (RadioButton)Table1.Rows[i].Cells[4].Controls[0];
            if (check.Checked)
            {
                name = Table1.Rows[i].Cells[1].Text;
                flag = true;
                continue;
            }
        }
        if(!flag)
        {
            Label2.Visible = true;
            return;
        }
        Employee_pros pros = new Employee_pros();
        int testId = pros.getTestId(name, Session["user"].ToString().TrimEnd());
        Session["tid"] = testId.ToString();
        Response.Redirect("EditTest.aspx");
    }
}