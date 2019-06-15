using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employer_Pages_Account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        getInfo();
    }
    protected void getInfo()
    {
        string user = Session["user"].ToString().TrimEnd();
        Label2.Text = user;
        List<string> details = new List<string>();
        Account ac = new Account();
        details = ac.getAccount(user);
        TextBox1.Text = details[0]; 
        TextBox2.Text = details[0];
        TextBox4.Text = details[1];
        DateTime bd= ac.getBd(user);
        Day.SelectedIndex=bd.Day-1;
        Month.SelectedIndex=bd.Month-1;
        Year.SelectedIndex=bd.Year-1965;

    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DateTime bd = new DateTime(Day.SelectedIndex + 1, Month.SelectedIndex + 1, Year.SelectedIndex + 1965);
        if (!TextBox1.Text.Equals(TextBox2.Text))
        {
            Label4.Visible = true;
            return;
        }
        Account ac = new Account();
        ac.update(Session["user"].ToString().TrimEnd(), TextBox1.Text, bd, TextBox4.Text, "", "", "");

    }
}