using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Candidate_pros
/// </summary>
public class Candidate_pros
{
    SqlConnection con;
	public Candidate_pros()
	{
        connection CON = new connection();
        con = new SqlConnection(CON.getcon());
	}

    public List<string> getSkills(string user)
    {
        List<string> skills = new List<string>();
        string command="SELECT * FROM [Candidate_Skils] WHERE user_email='"+user+"'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        {
            try
            {
                skills.Add(reader.GetString(2));
                skills.Add(reader.GetString(3));
                skills.Add(reader.GetString(5));
                skills.Add(reader.GetString(4));
            }
            catch (Exception ex) { }
        }
        con.Close();
        return skills;
    }
    public void updateSkills(string user, string name,string value)
    {
        string command="";
        if(name.Equals("skills"))
             command = "UPDATE [Candidate_Skils] SET skills='" + value + "' WHERE user_email='" + user + "' ";
        else if(name.Equals("interested"))
            command = "UPDATE [Candidate_Skils] SET interested='" + value + "' WHERE user_email='" + user + "' ";
        else if(name.Equals("education"))
             command = "UPDATE [Candidate_Skils] SET education='" + value + "' WHERE user_email='" + user + "' ";
        else if(name.Equals("curren_job"))
            command = "UPDATE [Candidate_Skils] SET curren_job='" + value + "' WHERE user_email='" + user + "' ";

        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();

    }
    public void upload_cert(string user,string name,byte[] data,int size,string f_name)
    {
        string command="";
        if(name.Equals("cv"))
            command = "UPDATE [Candidate_Skils] SET cv=@Data, cv_name=@fn WHERE user_email=@User";
        else if(name.Equals("cer1"))
            command = "UPDATE [Candidate_Skils] SET cer1=@Data, cer1_name=@fn WHERE user_email=@User";
        else if(name.Equals("cer2"))
            command = "UPDATE [Candidate_Skils] SET cer2=@Data, cer2_name=@fn WHERE user_email=@User";
        else if(name.Equals("cer3"))
            command = "UPDATE [Candidate_Skils] SET cer3=@Data, cer3_name=@fn WHERE user_email=@User";

            con.Open();
            
           
            
            SqlCommand cmd = new SqlCommand(command,con);


            cmd.Parameters.Add("@User", SqlDbType.NVarChar, 50);
            cmd.Parameters.Add("@size", SqlDbType.Int);
            cmd.Parameters.Add("@Data", SqlDbType.VarBinary);
            cmd.Parameters.Add("@fn", SqlDbType.NVarChar, 50);

            cmd.Parameters["@User"].Value = user;
            cmd.Parameters["@size"].Value = size;
            cmd.Parameters["@Data"].Value = data;
            cmd.Parameters["@fn"].Value = f_name;
            cmd.ExecuteNonQuery();

            con.Close();

    }
    public byte[] get_cer(string user, string name)
    {
        int index=0;
        byte[] data=null;
        string command = "SELECT * FROM [Candidate_Skils] WHERE user_email='" + user + "'";
        if (name.Equals("cv")) index = 6;
        else if (name.Equals("cer1")) index = 7;
        else if (name.Equals("cer2")) index = 8;
        else if (name.Equals("cer3")) index = 9;

        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        {
            data = (byte[])reader.GetValue(index);

        }
        reader.Close();
        con.Close();
        return data;
    }
    public List<string> getFilesName(string user)
    {
        List<string> names = new List<string>();
        string command = "SELECT * FROM [Candidate_Skils] WHERE user_email='" + user + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        {
            for (int i = 10; i < 14;i++ )
            {
                if (reader.IsDBNull(i)==false)
                {
                    if (reader.GetString(i).Length > 1)
                        names.Add(reader.GetString(i));
                    else
                        names.Add(" ");
                }
                else
                    names.Add(" ");
            }
        }
        reader.Close();
        con.Close();
        return names;
    }

    public DateTime getFirstInterviewTime(string user)
    {
        DateTime t = new DateTime();

        string command = "SELECT * FROM [Interview] WHERE can_use='" + user + "' ORDER BY date, time";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            DateTime today = DateTime.Today.Date;
            TimeSpan now = DateTime.Now.TimeOfDay;
            if (reader.GetDateTime(4) >= today)
            {
                if (reader.GetDateTime(4) == today && reader.GetTimeSpan(5) < now)
                    continue;
                else
                {
                    DateTime date = reader.GetDateTime(4);
                    TimeSpan time = reader.GetTimeSpan(5);
                    t = new DateTime(date.Year, date.Month, date.Day, time.Hours, time.Minutes, 0);
                    break;
                }

            }
        }
        reader.Close();
        con.Close();
        return t;


    }
    public List<string> getFirstInterviewDetails(string user)
    {
        List<string> Result = new List<string>();

        string command = "SELECT * FROM [Interview] WHERE can_use='" + user + "' ORDER BY date, time";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            DateTime today = DateTime.Today.Date;
            TimeSpan now = DateTime.Now.TimeOfDay;
            if (reader.GetDateTime(4) >= today)
            {
                if (reader.GetDateTime(4) == today && reader.GetTimeSpan(5) < now)
                    continue;
                else
                {
                    Result.Add(reader.GetString(1));
                    Result.Add(reader.GetInt32(3).ToString());
                    Result.Add(reader.GetInt32(6).ToString());
                    Result.Add(reader.GetString(8));
                    Result.Add(reader.GetString(10));
                    Result.Add(reader.GetInt32(0).ToString());
                    try
                    {
                        Result.Add(reader.GetInt32(9).ToString());
                    }
                    catch (Exception ex)
                    {
                        Result.Add(" ");
                    }
                    continue;
                }

            }
        }
        reader.Close();
        con.Close();
        return Result;
    }

    public string getCompanyName(string user_email)
    {
        string companyName = "";

        string command = "SELECT * FROM [User] WHERE email='" + user_email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;

        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            companyName = reader.GetString(7);
        reader.Close();


        con.Close();




        return companyName;
    }
    //==============================Get Test ID============================================
    public int getTestId(int positionID)
    {
        int id=0;
        string command = "SELECT * FROM [Position] WHERE id='" + positionID + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;

        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            id = reader.GetInt32(5);
        reader.Close();


        con.Close();
        return id;
    }
    public List<string> getTestDetails(int testId)
    {
        List<string> det= new List<string>();
        string command = "SELECT * FROM [Test] WHERE id='" + testId + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;

        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            det.Add(reader.GetString(1));
            det.Add(reader.GetInt32(4).ToString());
        }
        reader.Close();


        con.Close();
        return det;
    }
    //=================================TEST=====================================

    public List<List<string>> getTestQuestion(int id)
    {
        List<List<string>> questions=new List<List<string>>();
        List<string> qu;
        string command = "SELECT * FROM [Test_Questions] WHERE test_id='" + id + "' ORDER BY no";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();

        while(reader.Read())
        {
            qu = new List<string>();
            qu.Add(reader.GetString(3));
            qu.Add(reader.GetString(4));
            qu.Add(reader.GetString(5));
            qu.Add(reader.GetString(6));
            qu.Add(reader.GetString(7));
            qu.Add(reader.GetInt32(8).ToString());
            questions.Add(qu);

        }
        reader.Close();
        con.Close();


        return questions;

    }
    public List<string> getFormQuestion(int formId)
    {
        List<string> qu = new List<string>() ;
        string command = "SELECT * FROM [Form_Question] WHERE form_id='" + formId + "' ORDER BY no";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();

        while(reader.Read())
        {
            qu.Add(reader.GetString(3));
        }
        reader.Close();
        con.Close();
        return qu;
    }


    //=================================Get Form================================
    public int getFormId(int positionId)
    {
        int id = 0;
        string command = "SELECT * FROM [Position] WHERE id='" + positionId + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;

        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            id = reader.GetInt32(6);
        reader.Close();
        con.Close();
        return id;
    }

    //=====================================================================================

    public void setTestMark(int interId,int mark)
    {
        string command = "UPDATE [Interview] SET test_result='"+mark+"', test_st='DONE' WHERE id='"+interId+"'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();

    }

    public void formAnswers(List<string> answers,int formId,int interId)
    {
        con.Open();
        for(int i=0;i<answers.Count;i++)
        {
            string command = "INSERT INTO [FormAnswer] (form_id,no,answer,inter_id) VALUES('" + formId + "','" + (i + 1) + "','" + answers[i] + "','" + interId + "')";
            SqlCommand com = new SqlCommand(command, con);
            com.ExecuteNonQuery();
        }
        con.Close();
    }
    public void updateFormStatus(int interId)
    {
        string command = "UPDATE [Interview] SET form_st='DONE' WHERE id='" + interId + "'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public List<List<string>> getInterviews(string user, int type)
    {
        List<List<string>> details = new List<List<string>>();
        List<string> temp_det;
        DateTime today = DateTime.Today.Date;
        TimeSpan now = DateTime.Now.TimeOfDay;
        string command = "";
            if (type < 0)
                command = "SELECT * FROM [Interview] WHERE can_use='" + user + "' AND date<='" + today + "'";
            else if (type > 0)
                command = "SELECT * FROM [Interview] WHERE can_use='" + user + "' AND date>='" + today + "' AND status= 'NOT_DONE'";
    
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            temp_det = new List<string>();
            temp_det.Add(reader.GetString(1));
            temp_det.Add(reader.GetInt32(3).ToString());
            temp_det.Add(reader.GetDateTime(4).ToString().Substring(0, 9));
            temp_det.Add(reader.GetTimeSpan(5).ToString());
            temp_det.Add(reader.GetInt32(6).ToString());
            temp_det.Add(reader.GetString(7));
            try
            {
                temp_det.Add(reader.GetInt32(9).ToString());
            }
            catch (Exception ex)
            {
                temp_det.Add("0");
            }
            try
            {
                temp_det.Add(reader.GetString(11));
            }
            catch (Exception ex)
            {
                temp_det.Add("");
            }
            details.Add(temp_det);
        }
        reader.Close();
        con.Close();
        return details;
    }
    public int getInterviewId(string emp, string can, int positionId)
    {
        int int_id = 0;
        string command = "SELECT * FROM [Interview] WHERE emp_user='" + emp + "' AND can_use='" + can + "' AND position_id='" + positionId + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            int_id = reader.GetInt32(0);
        reader.Close();
        con.Close();
        return int_id;
    }
    public List<string> getInterviewById(int intId)
    {
        List<string> details = new List<string>();
        string command = "SELECT * FROM [Interview] WHERE id='" + intId + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            details.Add(reader.GetString(1));
            details.Add(reader.GetInt32(3).ToString());
            details.Add(reader.GetDateTime(4).ToString().Substring(0, 9));
            details.Add(reader.GetTimeSpan(5).ToString());
            details.Add(reader.GetInt32(6).ToString());
            details.Add(reader.GetString(7));
            try
            {
                details.Add(reader.GetInt32(9).ToString());
            }
            catch (Exception ex)
            {
                details.Add("0");
            }
            details.Add(reader.GetString(10));
            try
            {
                details.Add(reader.GetString(11));
            }
            catch (Exception ex)
            {
                details.Add("");
            }
        }
        reader.Close();
        con.Close();
        return details;
    }
}