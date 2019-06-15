using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_NewForm : System.Web.UI.Page
{
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
        if(TextBox1.Text.Length<2)
        {
            Label4.Text = "Please chose a name";
            Label4.Visible = true;
            return;
        }

        Table1.ID = "form";
        int no = Int32.Parse(DropDownList1.SelectedItem.ToString());
        for (int i = 0; i < no; i++)
        {
            System.Drawing.Color c;
            if (i % 2 == 0)
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
            Table1.Rows.Add(question);
        }




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = true;
        return;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Table m = Table1;

       

        List<string> questions = new List<string>();
        int row_no = Table1.Rows.Count;
        int quest_no = row_no;


        for (int i = 0; i < row_no; )
        {
            TextBox qu = (TextBox)Table1.Rows[i].Cells[1].Controls[0];
            questions.Add(qu.Text.ToString());
            i++;



        }
        Employee_pros pros = new Employee_pros();
        int form_id = pros.Add_Form(TextBox1.Text.ToString(), Int32.Parse(DropDownList1.SelectedItem.ToString()), Session["user"].ToString().TrimEnd());
        if (form_id == 0)
        {
            Label4.Visible = true;
            return;
        }
        pros.add_form_questions(questions, form_id);
        Panel1.Visible = false;
        Label4.Text = "Form Has Been Added Successfully";
        Label4.Visible = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Table m = Table1;



        List<string> questions = new List<string>();
        int row_no = Table1.Rows.Count;
        int quest_no = row_no;


        for (int i = 0; i < row_no; )
        {
            TextBox qu = (TextBox)Table1.Rows[i].Cells[1].Controls[0];
            questions.Add(qu.Text.ToString());
            if(qu.Text.ToString().Length<2)
            {
                Label5.Visible = true;
                return;
            }
            i++;
        }
        Employee_pros pros = new Employee_pros();
        int form_id = pros.Add_Form(TextBox1.Text.ToString(), Int32.Parse(DropDownList1.SelectedItem.ToString()), Session["user"].ToString().TrimEnd());
        if (form_id == 0)
        {
            Label4.Visible = true;
            return;
        }
        pros.add_form_questions(questions, form_id);
        Panel1.Visible = false;
        Label4.Text = "Form Has Been Added Successfully";
        Label4.Visible = true;
        Response.Redirect("CheckForm.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
}