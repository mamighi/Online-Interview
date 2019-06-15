using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Public_Pages_contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string to = "onlineinterview2015@gmail.com";
        string s = "Feed Back " + "From:"+email.Value.ToString()+"subject:" + subject.Value.ToString();
        string m = message.Value.ToString();
        Account ac = new Account();
        ac.sendmail(to, s, m);
        Label1.Visible = true;

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Account ac = new Account();
        ac.getuser();
        email.Value = "";
        subject.Value = "";
        message.Value = "";
    }
}