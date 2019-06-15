using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;

/// <summary>
/// Summary description for Account
/// </summary>
public class Account
{
    
    SqlConnection con;
	public Account()
	{
        connection CON = new connection();
        con=new SqlConnection(CON.getcon());
	}
    public void getuser()
    {
        List<string> user = new List<string>();
        string command = "SELECT * FROM [User] ";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;

        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
            user.Add(reader.GetString(0));
        reader.Close();


        con.Close();

    }

    public bool check_email(string email)
    {
        bool result = true;
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        
            con.Open();
            reader = com.ExecuteReader();
            if (reader.Read())
                result = false;
            reader.Close();
 
            
            con.Close();
            
        
        return result;
    }

    public void add_user(string email,string password,string fname,string lname,DateTime dob, 
        string pno,string type,string cname, string cfield, string add)
    {
        string command = "INSERT INTO [User] (email,password,fname,lname,dob,pno,type,cname,cfield,ad) values ('" + email + "','" + password + "','" + fname + "','" + lname + "','" + dob + "','" + pno + "','" + type + "','" + cname + "','" + cfield + "','"+add+"')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        if (type.Equals("can"))
            add_skill(email);
    }
    public void add_skill(string user_email)
    {
        string command = "INSERT INTO [Candidate_Skils] (user_email) VALUES('" + user_email + "')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();

    }
    public string getpass(string email)
    {
        string result = "";
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            result = reader.GetString(1);
        }
        else
            result = "wrong";
        reader.Close();
        con.Close();
        return result;
    }
    public string authentication(string email,string password)
    {
        string result="wrong";
        string command="SELECT * FROM [User] WHERE email='"+email+"' AND password='"+password+"'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            result = reader.GetString(6);
        }
        reader.Close();
        con.Close();
        return result;
    }
    public string get_name(string email)
    {
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        string result = "";
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        { 
            result=reader.GetString(2)+" "+reader.GetString(3);
        }
      
        reader.Close();
        con.Close();
        return result;
    }
    public List<string> getUserDetails(string email)
    {
        List<string> details = new List<string>();
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        { 
            details.Add(reader.GetString(2)+" "+ reader.GetString(3));
            details.Add(reader.GetDateTime(4).ToString());
            details.Add(reader.GetString(5));
        }
        reader.Close();
        con.Close();
        return details;

    }
    public string getUserLevel(string email)
    {
        string result = "wrong";
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            result = reader.GetString(6);
        }
        reader.Close();
        con.Close();
        return result;
    }
    public DateTime getBd(string email)
    {
        DateTime bd = new DateTime() ;
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            bd = reader.GetDateTime(4);
        }
        reader.Close();
        con.Close();
        return bd;
    }
    public List<string> getCompanyDetails(string email)
    {
        List<string> details = new List<string>();
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        {
            details.Add(reader.GetString(7));
            details.Add(reader.GetString(8));
            details.Add(reader.GetString(9));
            details.Add(reader.GetString(5));
        }
        reader.Close();
        con.Close();
        return details;
    }
    public void sendmail(string to,string subject,string message)
    {
        MailMessage objeto_mail = new MailMessage();
        SmtpClient client = new SmtpClient();
        client.EnableSsl = true;
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.Timeout = 10000;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.UseDefaultCredentials = false;
        client.Credentials = new System.Net.NetworkCredential("onlineinterview2015@gmail.com", "mohammadamighi");
        objeto_mail.From = new MailAddress("onlineinterview2015@gmail.com");
        objeto_mail.To.Add(new MailAddress(to));
        objeto_mail.Subject = subject;
        objeto_mail.Body = message;
        client.Send(objeto_mail);
    }
    public List<string> getAccount(string email)
    {
        List<string> details = new List<string>();
        string command = "SELECT * FROM [User] WHERE email='" + email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            details.Add(reader.GetString(1));
            details.Add(reader.GetString(5));
        }
        reader.Close();
        con.Close();
        return details;
    }

    public void update(string email,string pass,DateTime dob,string pno,string cname,string cfield,string add)
    {
        string command = "UPDATE [User] SET password='" + pass + "', dob='" + dob + "',pno='" + pno + "',cname='" + cname + "',cfield='" + cfield + "',ad='" + add + "' WHERE email='"+email+"'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }

}