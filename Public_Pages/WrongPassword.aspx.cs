using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Public_Pages_WrongPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Account ac=new Account();
        string pass=ac.getpass(TextBox1.Text);
        if (pass.Equals("wrong"))
        {
            Label2.Visible = true;
            return;
        }
        Label2.Text = "Please check your email to retrive your password";
        Label2.Visible = true;
        string to = TextBox1.Text;
        string subject = "Online Interview Account Password";
        string message = "Dear User your password for online interview website is: "+pass;
        ac.sendmail(to, subject, message);





    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Account ac = new Account();
        string us = TextBox1.Text;
        string pas = TextBox2.Text;
        string result = ac.authentication(us, pas).TrimEnd();
        if (result.Equals("emp"))
        {
            Session["user"] = us;
            Response.Redirect("../Employee_Pages/Home.aspx");
        }

        else if (result.Equals("can"))
        {
            Session["user"] = us;
            Response.Redirect("../Employer_Pages/Home.aspx");
        }
        else
            Response.Redirect("WrongPassword.aspx");
    }
}