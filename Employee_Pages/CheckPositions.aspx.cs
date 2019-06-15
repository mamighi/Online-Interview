using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_CheckPositions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        fillTable();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton2.Visible = true;
  
    }
    protected void fillTable()
    {
        Employee_pros pros=new Employee_pros();
        int type = 0;
        if (RadioButton2.Checked)
            type = 1;
        else if (RadioButton3.Checked)
            type = 2;

        List<List<string>> details = new List<List<string>>();
        details = pros.getAllPositionDetails(Session["user"].ToString().TrimEnd(), type);
        for(int i=0;i<details.Count;i++)
        {
            TableRow row = new TableRow();
            TableCell number = new TableCell();
            number.Text = (i + 1).ToString();
            row.HorizontalAlign = HorizontalAlign.Center;
            number.BackColor = System.Drawing.Color.Silver;


            TableCell name = new TableCell();
            name.Text = details[i][0];

            TableCell needed = new TableCell();
            needed.Text = details[i][1];
            needed.BackColor = System.Drawing.Color.Silver;
            TableCell od = new TableCell();
            od.Text = details[i][2];

            TableCell cd = new TableCell();
            cd.Text = details[i][3];
            cd.BackColor = System.Drawing.Color.Silver;
            TableCell test = new TableCell();
            test.Text = details[i][4];

            TableCell form = new TableCell();
            form.Text = details[i][5];
            form.BackColor = System.Drawing.Color.Silver;
            TableCell exp = new TableCell();
            exp.Text = details[i][6];

            TableCell check = new TableCell();
            RadioButton ch = new RadioButton();
            ch.GroupName = "ch";
            check.BackColor = System.Drawing.Color.Silver;
            check.Controls.Add(ch);

            row.Cells.Add(number);
            row.Cells.Add(name);
            row.Cells.Add(needed);
            row.Cells.Add(od);
            row.Cells.Add(cd);
            row.Cells.Add(test);
            row.Cells.Add(form);
            row.Cells.Add(exp);
            row.Cells.Add(check);
            Table1.Rows.Add(row);



        }




    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        int row = Table1.Rows.Count;
        string name="";
        bool flag = false;
        for(int i=1;i<row;i++)
        {
            RadioButton check = new RadioButton();
            check=(RadioButton) Table1.Rows[i].Cells[8].Controls[0];
            if(check.Checked)
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
        Employee_pros pros=new Employee_pros();
        int positionId = pros.gerPositionId(Session["user"].ToString().TrimEnd(), name);
        Session["pid"] = positionId.ToString();
        Response.Redirect("EditPosition.aspx");
    }
}