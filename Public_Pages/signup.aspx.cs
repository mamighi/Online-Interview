using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class Public_Pages_signup : System.Web.UI.Page
{
    
    public Public_Pages_signup()
    {
        
    }
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            hide_imgs();
    }
    private void hide_imgs()
    {
        emailpic.Visible = false;
        pass2pic.Visible = false;
        paspic.Visible = false;
        Img1.Visible = false;
        Img2.Visible = false;
        phonepic.Visible = false;
        cpic.Visible = false;
        fpic.Visible = false;
        adpic.Visible = false;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        emp_info();
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        emp_info();
    }
    private void emp_info()
    {
        if (RadioButton2.Checked)
        {
            e1.Visible = false;
            e2.Visible = false;
        }
        else
        {
            e1.Visible = true;
            e2.Visible = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {






    }
    private bool info_validation()
    {

        if (email_val() == false)
            return false;
        if (pass_val() == false)
            return false;
        if (fn.Value.ToString().Length < 2)
        {
            Img1.Visible = true;
            return false;
        }
        else
            Img1.Visible = false;
        if (ln.Value.ToString().Length < 2)
        {
            Img2.Visible = true;
            return false;
        }
            
        else
            Img2.Visible = false;
        if (phone.Value.ToString().Length < 2)
        {
            phonepic.Visible = true;
            return false;
        }
        else
            phonepic.Visible = false;
        if(RadioButton1.Checked)
        {
            if (employee_val() == false)
                return false;
        }
        return true;

    }
    private bool email_val()
    {
        Account ac = new Account();

        string email = Email.Value.ToString();

        if(ac.check_email(email)==false)
        {
            emailpic.Visible = true;
            Label1.Text = "This email has been registered";
            Label1.Visible = true;
            return false;
        }


        string expresion;
        expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        if (Regex.IsMatch(email, expresion))
        {
            emailpic.Visible = false;
            if (Regex.Replace(email, expresion, string.Empty).Length == 0)
            {
                
                return true;
            }
            else
            {
                
                return false;
            }
        }
        else
        {
            emailpic.Visible = true;
            return false;
        }
    }
    private bool pass_val()
    {
        if(Password1.Value.ToString().Length<2)
        {
            paspic.Visible = true;
            Label1.Visible = true;
            return false;
        }
        else
        {
            paspic.Visible = false;
            Label1.Visible = false;
        }
        
        if(!Password1.Value.ToString().Equals(Password2.Value.ToString()))
        {
            pass2pic.Visible = true;
            Label1.Visible = true;
            return false;
        }
        else
        {
            pass2pic.Visible = false;
            Label1.Visible = false;
        }
        return true;
    }
    private bool employee_val()
    {
        bool result = true;
        if (Company.Value.ToString().Length < 2)
        {
            cpic.Visible = true;
            result = false;
        }
        else
            cpic.Visible = false;
        if (field.Value.ToString().Length < 2)
        {
            fpic.Visible = true;
            result = false;
        }
        else
            fpic.Visible = false;
        if (add.Value.ToString().Length < 2)
        {
            adpic.Visible = true;
            result = false;
        }
        else
            adpic.Visible = false;
        return result;

    }





    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (info_validation() == false)
            return;

        string email = Email.Value.ToString();
        string password = Password1.Value.ToString();
        string firstname = fn.Value.ToString();
        string lastname = ln.Value.ToString();
        string phno = phone.Value.ToString();
        string type = (RadioButton1.Checked) ? "emp" : "can";
        string cname = Company.Value.ToString();
        string cf = field.Value.ToString();
        string ad = add.Value.ToString();

        int d = Int32.Parse(Day.Value.ToString());
        int m = Int32.Parse(Month.Value.ToString());
        int y = Int32.Parse(Year.Value.ToString());
        DateTime dob = new DateTime(y, m, d);


        Account ac = new Account();
        ac.add_user(email, password, firstname, lastname, dob, phno, type, cname, cf, ad);
        Session["user"] = email;
        if (type.Equals("emp"))
            Response.Redirect("../Employee_Pages/Home.aspx");
        else
            Response.Redirect("../Employer_Pages/Home.aspx");

    }
}