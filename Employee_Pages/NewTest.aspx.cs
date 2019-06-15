using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_NewTest : System.Web.UI.Page
{
    bool flag;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        if (Page.IsPostBack)
        {
            make_tabel();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
     
    }
    public void make_tabel()
    {
        if (TextBox1.Text.Length < 2)
            return;
        Table1.ID = "test";
        int no = Int32.Parse(DropDownList1.SelectedItem.ToString());
        for(int i=0;i<no;i++)
        {
            System.Drawing.Color c;
            if(i%2==0)
            {
                c = System.Drawing.Color.LightGray;
            }
            else
            {
                c = System.Drawing.Color.White;
            }
            /////question line
            TableRow question = new TableRow();
            question.BackColor = c;
            TableCell quest = new TableCell();
            TableCell noc = new TableCell();
            noc.Text = (i + 1).ToString() + "-";
          
            TextBox qtb = new TextBox();
            qtb.BackColor = c;
            qtb.Width = 500;
            quest.Controls.Add(qtb);
            question.Cells.Add(noc);
            question.Cells.Add(quest);


            ///answer line
            ///
            TableRow answers1 = new TableRow();
            TableRow answers2 = new TableRow();
            TableRow answers3 = new TableRow();
            TableRow answers4 = new TableRow();
            answers1.BackColor = c;
            answers2.BackColor = c;
            answers3.BackColor = c;
            answers4.BackColor = c;

            TableCell an1 = new TableCell();
            TableCell an2 = new TableCell();
            TableCell an3 = new TableCell();
            TableCell an4 = new TableCell();
            TableCell an1n = new TableCell();
            TableCell an2n = new TableCell();
            TableCell an3n = new TableCell();
            TableCell an4n = new TableCell();
            an1n.Text = "A)";
            an2n.Text = "B)";
            an3n.Text = "C)";
            an4n.Text = "D)";




            TextBox an1tb = new TextBox();
            TextBox an2tb = new TextBox();
            TextBox an3tb = new TextBox();
            TextBox an4tb = new TextBox();
            an1tb.BackColor = c;
            an2tb.BackColor = c;
            an3tb.BackColor = c;
            an4tb.BackColor = c;

            RadioButton can1 = new RadioButton();
            RadioButton can2 = new RadioButton();
            RadioButton can3 = new RadioButton();
            RadioButton can4 = new RadioButton();

            can1.BackColor = c;
            can2.BackColor = c;
            can3.BackColor = c;
            can4.BackColor = c;

            can1.GroupName = (i + 1).ToString();
            can2.GroupName = (i + 1).ToString();
            can3.GroupName = (i + 1).ToString();
            can4.GroupName = (i + 1).ToString();

            an1.Controls.Add(can1);
            an1.Controls.Add(an1tb);

            an2.Controls.Add(can2);
            an2.Controls.Add(an2tb);

            an3.Controls.Add(can3);
            an3.Controls.Add(an3tb);

            an4.Controls.Add(can4);
            an4.Controls.Add(an4tb);

            answers1.Cells.Add(an1n);
            answers1.Cells.Add(an1);

            answers2.Cells.Add(an2n);
            answers2.Cells.Add(an2);

            answers3.Cells.Add(an3n);
            answers3.Cells.Add(an3);

            answers4.Cells.Add(an4n);
            answers4.Cells.Add(an4);


            Table1.Rows.Add(question);
            Table1.Rows.Add(answers1);
            Table1.Rows.Add(answers2);
            Table1.Rows.Add(answers3);
            Table1.Rows.Add(answers4);

        }




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Table m = Table1;

       

        List<List<string>> questions = new List<List<string>>();
        List<string> quest;
        int row_no = Table1.Rows.Count;
        int quest_no = row_no / 5;


        for (int i = 0; i < row_no;)
        {
            quest = new List<string>();
            TextBox qu = (TextBox)Table1.Rows[i].Cells[1].Controls[0];
            quest.Add(qu.Text.ToString());
            i++;
            int cor_ans = 0;
            for (int j = 0; j < 4; j++)
            {
                RadioButton anc = (RadioButton)Table1.Rows[i].Cells[1].Controls[0];
                TextBox an = (TextBox)Table1.Rows[i].Cells[1].Controls[1];
                quest.Add(an.Text.ToString());
                if (anc.Checked)
                    cor_ans = j + 1;
                i++;

            }
            quest.Add(cor_ans.ToString());
            questions.Add(quest);


        }
        Employee_pros pros = new Employee_pros();
        int test_id = pros.Add_Test(TextBox1.Text.ToString(), Int32.Parse(DropDownList1.SelectedItem.ToString()), Session["user"].ToString().TrimEnd(), Int32.Parse(DropDownList2.SelectedValue.ToString()));
        if(test_id==0)
        {
            Label4.Visible = true;
            return;
        }
        pros.add_test_questions(questions, test_id);
        Panel1.Visible = false;
        Label4.Text = "Test Has Been Added Successfully";
        Label4.Visible = true;


    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        flag = false;
        Label4.Visible = false;
        if (TextBox1.Text.Length < 2)
        {
            Label4.Text = "Please chose a name";
            Label4.Visible = true;
        }
        else
            flag = true;





        Panel1.Visible = true;
        return;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Table m = Table1;

        
        List<List<string>> questions = new List<List<string>>();
        List<string> quest;
        int row_no = Table1.Rows.Count;
        int quest_no = row_no / 5;


        for (int i = 0; i < row_no; )
        {
            bool check = false;
            quest = new List<string>();
            TextBox qu = (TextBox)Table1.Rows[i].Cells[1].Controls[0];
            quest.Add(qu.Text.ToString());
            if (qu.Text.ToString().Length < 2)
            {
                Label6.Visible = true;
                return;
            }
            i++;
            int cor_ans = 0;
            for (int j = 0; j < 4; j++)
            {
                RadioButton anc = (RadioButton)Table1.Rows[i].Cells[1].Controls[0];
                TextBox an = (TextBox)Table1.Rows[i].Cells[1].Controls[1];
                quest.Add(an.Text.ToString());
                if (an.Text.ToString().Length < 2)
                {
                    Label6.Visible = true;
                    return;
                }
                if (anc.Checked)
                {
                    cor_ans = j + 1;
                    check = true;
                }
                i++;

            }
            if(!check)
            {
                Label6.Visible = true;
                return;
            }
            quest.Add(cor_ans.ToString());
            questions.Add(quest);


        }
        Employee_pros pros = new Employee_pros();
        int test_id = pros.Add_Test(TextBox1.Text.ToString(), Int32.Parse(DropDownList1.SelectedItem.ToString()), Session["user"].ToString().TrimEnd(),Int32.Parse(DropDownList2.SelectedValue.ToString()));
        if (test_id == 0)
        {
            Label4.Visible = true;
            return;
        }
        pros.add_test_questions(questions, test_id);
        Panel1.Visible = false;
        Label4.Text = "Test Has Been Added Successfully";
        Label4.Visible = true;
        Response.Redirect("CheckTests.aspx");
    }
}