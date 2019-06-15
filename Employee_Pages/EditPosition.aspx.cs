using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Pages_EditPosition : System.Web.UI.Page
{
    int positionId;
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        positionId = Int32.Parse(Session["pid"].ToString().TrimEnd());
        if(!IsPostBack)
        { 
            dates();
            info();
        }
        fillLists();
    }
    protected void dates()
    {
        Employee_pros pros = new Employee_pros();
        DateTime[] dates;
        dates = pros.getPositionDates(positionId);
        Calendar1.SelectedDate = dates[0];
        Calendar2.SelectedDate = dates[1];
        TextBox2.Text = Calendar1.SelectedDate.ToString().Substring(0, 9);
        TextBox3.Text = Calendar2.SelectedDate.ToString().Substring(0, 9);
    }
    protected void info()
    {
        Employee_pros pros = new Employee_pros();
        List<string> det = new List<string>();
        det = pros.getPositionDetbyId(positionId);

        TextBox1.Text = det[0];
        DropDownList1.SelectedValue=det[1];
        DropDownList2.SelectedValue = pros.getTestName(Int32.Parse(det[2]));
        DropDownList3.SelectedValue = pros.getFormName(Int32.Parse(det[3]));
        DropDownList4.SelectedValue = det[4];
        TextBox4.Text = det[5];

    }
    protected void fillLists()
    {
        Employee_pros pros = new Employee_pros();
        List<string> tests = pros.getTests(Session["user"].ToString().TrimEnd());
        List<string> forms = pros.getForms(Session["user"].ToString().TrimEnd());
        for (int i = 0; i < tests.Count; i++)
            DropDownList2.Items.Add(tests[i]);
        for (int i = 0; i < forms.Count; i++)
            DropDownList3.Items.Add(forms[i]);

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (validation() == false)
            return;

        string name = TextBox1.Text.ToString().TrimEnd();
        int pn = Int32.Parse(DropDownList1.SelectedItem.ToString());
        DateTime od = Calendar1.SelectedDate;
        DateTime cd = Calendar2.SelectedDate;
        string test = DropDownList2.SelectedItem.ToString();
        string form = DropDownList3.SelectedItem.ToString();
        int Ey = Int32.Parse(DropDownList4.SelectedItem.ToString());
        string Er = TextBox4.Text.ToString();
        Employee_pros ep = new Employee_pros();
        ep.updatePosition(positionId, name, pn, od, cd, test, form, Ey, Er, Session["user"].ToString().TrimEnd());
        Response.Redirect("CheckPositions.aspx");
    }
    private bool validation()
    {
        Label2.Visible = false;
        if (TextBox1.Text.ToString().Length < 2 || TextBox2.Text.ToString().Length < 2 || TextBox3.Text.ToString().Length < 2)
        {
            Label2.Visible = true;
            return false;
        }
        return true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToString().Substring(0, 10);
        Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar2.SelectedDate.ToString().Substring(0, 10);
        Calendar2.Visible = false;
    }
}