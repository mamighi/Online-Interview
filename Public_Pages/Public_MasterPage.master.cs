using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Public_MasterPage : System.Web.UI.MasterPage
{
    public string m_val;
    public string linkpage;
    protected void Page_Load(object sender, EventArgs e)
    {
        linkpage = "signup.aspx";
        if (Session["user"] == null || Session["user"].ToString().Equals(""))
            m_val = "Register";
        else
        {
            get_user();
            uli.Visible = false;
            Account ac = new Account();
            m_val = ac.get_name(Session["user"].ToString().TrimEnd());
        }
    }
    public void get_user()
    {
        Account ac = new Account();
        string userLevel = ac.getUserLevel(Session["user"].ToString().TrimEnd());
        if(userLevel.TrimEnd().Equals("emp"))
        {
            linkpage = "../Employee_Pages/Home.aspx";
        }
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        Account ac = new Account();
        string us = user_name.Value.ToString();
        string pas = Password.Value.ToString();
        string result = ac.authentication(us, pas).TrimEnd();
        if (result.Equals("emp"))
        {
            Session["user"] = us;
            Response.Redirect("../Employee_Pages/Home.aspx");
        }
 
        else if(result.Equals("can"))
        {
            Session["user"] = us;
            Response.Redirect("../Employer_Pages/Home.aspx");
        }
        else
            Response.Redirect("WrongPassword.aspx");
    }
}
