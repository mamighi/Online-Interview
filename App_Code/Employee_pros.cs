using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Employee_pros
/// </summary>
public class Employee_pros
{
    SqlConnection con;
	public Employee_pros()
	{
        connection CON = new connection();
        con = new SqlConnection(CON.getcon());
	}


    //=================================POSITION=======================================//


    public void addPosition(string name, int pn,DateTime od,DateTime cd,string test,string form, int ey,string req,string user)
    {
        int testId = getTestId(test, user);
        int formId = getFormId(form, user);
        string command = "INSERT INTO [Position] (name,per_no,open_date,close_date,test,form,exp_year,ex_req,user_email) VALUES('"+name+"','"+pn+"','"+od+"','"+cd+"','"+testId+"','"+formId+"','"+ey+"','"+req+"','"+user+"')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public void updatePosition(int id,string name, int pn, DateTime od, DateTime cd, string test, string form, int ey, string req, string user)
    {
        int testId = getTestId(test, user);
        int formId = getFormId(form, user);
        string command = "UPDATE [Position] SET name='" + name + "',per_no='" + pn + "',open_date='" + od + "',close_date='" + cd + "',test='" + testId + "',form='" + formId + "',exp_year='" + ey + "',ex_req='" + req + "' WHERE id='"+id+"'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public int gerPositionId(string user,string name)
    {
        int return_val = 0;
        string command = "SELECT * FROM [Position] WHERE name='" + name + "' AND user_email='" + user + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            return_val = reader.GetInt32(0);
        reader.Close();
        con.Close();
        return return_val;
    }
    public string getPositionName(int id)
    {
        string name = "";

        string command = "SELECT * FROM [Position] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            name = reader.GetString(1);
           

        }
        reader.Close();
        con.Close();
        return name;
    }
    public DateTime[] getPositionDates(int id)
    {
        DateTime[] dates = new DateTime[2];

        string command = "SELECT * FROM [Position] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            dates[0] = reader.GetDateTime(3);
            dates[1] = reader.GetDateTime(4);

        }
        return dates;
    }
    public List<string> getPositions(string user_email)
    {
        List<string> Positions= new List<string>();
        string commnad = "SELECT * FROM [Position] WHERE user_email='" + user_email + "'";
        SqlCommand com = new SqlCommand(commnad, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
            Positions.Add(reader.GetString(1));
        reader.Close();
        con.Close();
        return Positions;

    }
    public List<List<string>> getPositionDetails(string user)
    {
        List<List<string>> details = new List<List<string>>();
        List<string> temp_det;
        string command="SELECT * FROM [Position] where user_email='"+user+"'";
        SqlCommand com= new SqlCommand(command,con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while(reader.Read())
        {
            temp_det = new List<string>();
            DateTime today = DateTime.Today.Date;
            if(reader.GetDateTime(4)>= today)
            {
                temp_det.Add(reader.GetString(1));
                temp_det.Add(reader.GetDateTime(3).ToString().Substring(0, 9));
                temp_det.Add(reader.GetInt32(2).ToString());
                details.Add(temp_det);
            }
        }
        reader.Close();
        con.Close();
        return details;

    }
    public List<List<string>> getAllPositionDetails(string user,int type)
    {
        List<List<string>> details = new List<List<string>>();
        List<string> temp_det;
        string command = "SELECT * FROM [Position] where user_email='" + user + "' ORDER BY open_date";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            temp_det = new List<string>();
            DateTime today = DateTime.Today.Date;
            if (type == 0)
            {
                if (reader.GetDateTime(4) >= today)
                {
                    temp_det.Add(reader.GetString(1));
                    temp_det.Add(reader.GetInt32(2).ToString());
                    temp_det.Add(reader.GetDateTime(3).ToString().Substring(0, 9));
                    temp_det.Add(reader.GetDateTime(4).ToString().Substring(0, 9));
                    temp_det.Add(reader.GetInt32(5).ToString());
                    temp_det.Add(reader.GetInt32(6).ToString());
                    temp_det.Add(reader.GetInt32(7).ToString());
                    details.Add(temp_det);
                }
            }
            else if(type==1)
            {
                if (reader.GetDateTime(4) <= today)
                {
                    temp_det.Add(reader.GetString(1));
                    temp_det.Add(reader.GetInt32(2).ToString());
                    temp_det.Add(reader.GetDateTime(3).ToString().Substring(0, 9));
                    temp_det.Add(reader.GetDateTime(4).ToString().Substring(0, 9));
                    temp_det.Add(reader.GetInt32(5).ToString());
                    temp_det.Add(reader.GetInt32(6).ToString());
                    temp_det.Add(reader.GetInt32(7).ToString());
                    details.Add(temp_det);
                }
            }
            else
            {
                temp_det.Add(reader.GetString(1));
                temp_det.Add(reader.GetInt32(2).ToString());
                temp_det.Add(reader.GetDateTime(3).ToString().Substring(0, 9));
                temp_det.Add(reader.GetDateTime(4).ToString().Substring(0, 9));
                temp_det.Add(reader.GetInt32(5).ToString());
                temp_det.Add(reader.GetInt32(6).ToString());
                temp_det.Add(reader.GetInt32(7).ToString());
                details.Add(temp_det);
            }



        }
        reader.Close();
        con.Close();
        return details;
    }
    public List<string> getPositionDetbyId(int id)
    {
        List<string> Positions = new List<string>();
        string commnad = "SELECT * FROM [Position] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(commnad, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        {
            Positions.Add(reader.GetString(1));
            Positions.Add(reader.GetInt32(2).ToString());
            Positions.Add(reader.GetInt32(5).ToString());
            Positions.Add(reader.GetInt32(6).ToString());
            Positions.Add(reader.GetInt32(7).ToString());
            Positions.Add(reader.GetString(8));
        }
            
        reader.Close();
        con.Close();
        return Positions;

    }

    public string getRequierment(int posId)
    {
        string req = "";
        string commnad = "SELECT * FROM [Position] WHERE id='" + posId + "'";
        SqlCommand com = new SqlCommand(commnad, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            req = reader.GetString(8);
        }

        reader.Close();
        con.Close();
        return req;
    }
   

    //=====================================TEST========================================//
    public int Add_Test(string name, int q_no,string user,int dur)
    {
        if (getTestId(name, user) != 0)
            return 0;

        string command="INSERT INTO [Test] (name,question,user_email,dur) VALUES('"+name+"','"+q_no+"','"+user+"','"+dur+"')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        return getTestId(name, user);
    }
    public int getTestId(string name, string user)
    {
        int return_val=0;
        string command="SELECT * FROM [Test] WHERE name='"+name+"' AND user_email='"+user+"'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            return_val = reader.GetInt32(0);
        reader.Close();
        con.Close();
        return return_val;
    }
    public void updateTest(int id, string name, int dur)
    {
        string commmand = "UPDATE [Test] SET name='" + name + "',dur='" + dur + "' WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(commmand, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();

    }
    public void deletTest(int id)
    {
        string commmand = "DELETE FROM [Test] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(commmand, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public string getTestName(int id)
    {
        string return_val = "";
        string command = "SELECT * FROM [Test] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            return_val = reader.GetString(1);
        reader.Close();
        con.Close();
        return return_val;
    }
    public int getTestTime(int id)
    {
        int return_val = 0;
        string command = "SELECT * FROM [Test] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            return_val = reader.GetInt32(4);
        reader.Close();
        con.Close();
        return return_val;
    }
    public List<string> getTests(string user_email)
    {
        List<string> Tests = new List<string>();
        string command = "SELECT * FROM [Test] WHERE user_email='" + user_email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
            Tests.Add(reader.GetString(1));
        reader.Close();
        con.Close();
        return Tests;

    }

    public void add_test_questions(List<List<string>> questions,int test_id)
    {
        int quest_no = questions.Count;
        int no, cor_ans;
        string ques, ans1, ans2, ans3, ans4;
        con.Open();
        for(int i=0;i<quest_no;i++)
        {
            List<string> temp_qu = questions[i];
            no = i + 1;
            ques = temp_qu[0];
            ans1 = temp_qu[1];
            ans2 = temp_qu[2];
            ans3 = temp_qu[3];
            ans4 = temp_qu[4];
            cor_ans = Int32.Parse(temp_qu[5]);
            string command = "INSERT INTO [Test_Questions] (test_id,no,question,ans1,ans2,ans3,ans4,cor_ans) VALUES('" + test_id + "','" + no + "','" + ques + "','" + ans1 + "','" + ans2 + "','" + ans3 + "','" + ans4 + "','" + cor_ans + "')";
            SqlCommand com= new SqlCommand(command, con);
            com.ExecuteNonQuery();
        }
        con.Close();

    }

    public List<List<string>> getTestDetails(string user)
    {
        List<List<string>> Tests = new List<List<string>>();
        List<string> temp;
        string command = "SELECT * FROM [Test] WHERE user_email='" + user + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            temp = new List<string>();
            temp.Add(reader.GetString(1));
            temp.Add(reader.GetInt32(2).ToString());
            temp.Add(reader.GetInt32(4).ToString());
            Tests.Add(temp);
        }
        reader.Close();
        con.Close();
        return Tests;

    }
    //=====================================FORM========================================//
    public int getFormId(string name, string user)
    {
        int return_val = 0;
        string command = "SELECT * FROM [Form] WHERE name='" + name + "' AND user_email='" + user + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            return_val = reader.GetInt32(0);
        reader.Close();
        con.Close();
        return return_val;
    }
    public void updateFormName(int id,string name)
    {
        string command = "UPDATE [Form] SET name='" + name + "' WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public void deleteForm(int id)
    {
        string command = "DELETE FROM [Form] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();


    }
    public string getFormName(int id)
    {
        string return_val = "";
        string command = "SELECT * FROM [Form] WHERE id='" + id + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
            return_val = reader.GetString(1);
        reader.Close();
        con.Close();
        return return_val;
    }
    public List<string> getForms(string user_email)
    {
        List<string> Forms = new List<string>();
        string command = "SELECT * FROM [Form] WHERE user_email='" + user_email + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
            Forms.Add(reader.GetString(1));
        reader.Close();
        con.Close();
        return Forms;

    }
    public int Add_Form(string name, int q_no, string user)
    {
        if (getFormId(name, user) != 0)
            return 0;

        string command = "INSERT INTO [Form] (name,no,user_email) VALUES('" + name + "','" + q_no + "','" + user + "')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        return getFormId(name, user);
    }
    public void add_form_questions(List<string> questions, int form_id)
    {
        int quest_no = questions.Count;
        int no;
        string ques;
        con.Open();
        for (int i = 0; i < quest_no; i++)
        {
 
            no = i + 1;
            ques =  questions[i];
            string command = "INSERT INTO [Form_Question] (form_id,no,question) VALUES('" + form_id + "','" + no + "','" + ques + "')";
            SqlCommand com = new SqlCommand(command, con);
            com.ExecuteNonQuery();
        }
        con.Close();

    }
    public List<List<string>> getFormDetails(string user)
    {
        List<List<string>> Tests = new List<List<string>>();
        List<string> temp;
        string command = "SELECT * FROM [Form] WHERE user_email='" + user + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            temp = new List<string>();
            temp.Add(reader.GetString(1));
            temp.Add(reader.GetInt32(2).ToString());
            Tests.Add(temp);
        }
        reader.Close();
        con.Close();
        return Tests;

    }
    public List<string> getFormAnswers(int intId)
    {
        List<string> answer = new List<string>();
        int count = 0;
        string command = "SELECT * FROM [FormAnswer] WHERE inter_id='" + intId + "' ORDER BY no";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (count == 0)
                answer.Add(reader.GetInt32(1).ToString());
            answer.Add(reader.GetString(3));
            count++;
        }
        reader.Close();
        con.Close();
        return answer;
    }
    public List<string> getFormQuestion(int fId)
    {
        List<string> question = new List<string>();
        int count = 0;
        string command = "SELECT * FROM [Form_Question] WHERE form_id='" + fId + "' ORDER BY no";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
            question.Add(reader.GetString(3));
        reader.Close();
        con.Close();
        return question;
    }



    //=====================================INTERVIEW======================================//
    public void newInterview(string emp_use,string can_use,int pid,DateTime date, TimeSpan time,int duration)
    {
        string command = "INSERT INTO [Interview] (emp_user,can_use,position_id,date,time,duration,status,test_st,form_st) VALUES('" + emp_use + "','" + can_use + "','" + pid + "','" + date + "','" + time + "','" + duration + "','NOT_DONE','NOT_DONE','NOT_DONE')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        addTiming(emp_use, date, time, duration);
    }
    public void addTiming(string user,DateTime date, TimeSpan s_time, int dur)
    {
        int min = s_time.Minutes + dur;
        int hour;
        if (min > 60)
        {
            min = min - 60;
            hour = s_time.Hours - 1;
        }
        else
            hour = s_time.Hours;
        TimeSpan e_time = new TimeSpan(hour, min, 0);
        string command = "INSERT INTO [Timing] (emp_user,date,s_time,e_time) VALUES('" + user + "','" + date + "','" + s_time + "','" + e_time + "')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();

    }
    public bool check_timing(string user,DateTime date, TimeSpan s_time,int dur)
    {
        bool result = true;
        int min = s_time.Minutes + dur;
        int hour;
        if (min > 60)
        {
            min = min - 60;
            hour = s_time.Hours - 1;
        }
        else
            hour = s_time.Hours;
        TimeSpan e_time = new TimeSpan(hour, min, 0);

        TimeSpan taken_s_time;
        TimeSpan taken_e_time;
        string command = "SELECT * FROM [Timing] WHERE emp_user='" + user + "' AND date='" + date + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while(reader.Read())
        {
            taken_s_time = reader.GetTimeSpan(3);
            taken_e_time = reader.GetTimeSpan(4);
            if (s_time >= taken_s_time && s_time <= taken_e_time)
                result = false;
            else if (e_time >= taken_s_time && e_time <= taken_e_time)
                result = false;
            else if (s_time < taken_s_time && e_time > taken_e_time)
                result = false;
        }
        reader.Close();
        con.Close();
        return result;
    }
    public int getInterviewPositionId(int intId)
    {
        int id=0;
        string command = "SELECT * FROM [Interview] WHERE id='" + intId + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            id=reader.GetInt32(3);
        }
        reader.Close();
        con.Close();
        return id;

    }
    public DateTime getInterviewFinishTime(int intId)
    {
        DateTime intdate=new DateTime();
        int duration=0;
        TimeSpan interviewTime=new TimeSpan();
        string command = "SELECT * FROM [Interview] WHERE id='" + intId + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if (reader.Read())
        {
            interviewTime = reader.GetTimeSpan(5);
            intdate = reader.GetDateTime(4);
        }
        TimeSpan finish = new TimeSpan(interviewTime.Hours,interviewTime.Minutes+duration,0);
        DateTime ret = new DateTime(intdate.Year, intdate.Month, intdate.Day, finish.Hours, finish.Minutes, 0);
        reader.Close();
        con.Close();
        return ret;
    }
    public List<List<string>> getInterviewDetails(string user)
    {
        List<List<string>> details= new List<List<string>>();
        List<string> temp_det;
        string command="SELECT * FROM [Interview] WHERE emp_user='"+user+"' ORDER BY date, time";
        SqlCommand com= new SqlCommand(command,con);
        SqlDataReader reader;
        con.Open();
        reader=com.ExecuteReader();
        while(reader.Read())
        {
            temp_det= new List<string>();
            DateTime today=DateTime.Today.Date;
            TimeSpan now=DateTime.Now.TimeOfDay;
            if(reader.GetDateTime(4)>= today)
            {
                if(reader.GetDateTime(4)==today && reader.GetTimeSpan(5)<now)
                    continue;
                else
                {
                    temp_det.Add(reader.GetString(2));
                    temp_det.Add(reader.GetInt32(3).ToString());
                    temp_det.Add(reader.GetDateTime(4).ToString().Substring(0,9));
                    temp_det.Add(reader.GetTimeSpan(5).ToString());
                    details.Add(temp_det);
                }

            }
        }
        reader.Close();
        con.Close();
        return details;
    }
    public DateTime getFirstIntTime(string user)
    {
        DateTime t= new DateTime();

        string command = "SELECT * FROM [Interview] WHERE emp_user='" + user + "' ORDER BY date, time";
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
                    DateTime date=reader.GetDateTime(4);
                    TimeSpan time=reader.GetTimeSpan(5);
                    t = new DateTime(date.Year, date.Month, date.Day, time.Hours, time.Minutes, 0);
                    break;
                }

            }
        }
        reader.Close();
        con.Close();
        return t;
    }
    public List<List<string>> getInterviews(string user,int type,int positionId)
    {
        List<List<string>> details = new List<List<string>>();
        List<string> temp_det;
        DateTime today = DateTime.Today.Date;
        TimeSpan now = DateTime.Now.TimeOfDay;
        string command="";
        if(positionId!=0)
        {
            if(type<0)
                command="SELECT * FROM [Interview] WHERE emp_user='"+user+"' AND date<='"+today+"' AND position_id='"+positionId+"'";
            else if(type>0)
                command = "SELECT * FROM [Interview] WHERE emp_user='" + user + "' AND date>='" + today + "' AND status= 'NOT_DONE' AND position_id='" + positionId + "'";
            else if(type==0)
                command = "SELECT * FROM [Interview] WHERE emp_user='" + user + "' AND position_id='" + positionId + "'";
        }
        else
        {
            if (type < 0)
                command = "SELECT * FROM [Interview] WHERE emp_user='" + user + "' AND date<='" + today + "' ";
            else if (type > 0)
                command = "SELECT * FROM [Interview] WHERE emp_user='" + user + "' AND date>='" + today + "' AND status= 'NOT_DONE'";
            else if (type == 0)
                command = "SELECT * FROM [Interview] WHERE emp_user='" + user + "'";
        }
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        while (reader.Read())
        {
            temp_det = new List<string>();
            temp_det.Add(reader.GetString(2));
            temp_det.Add(reader.GetInt32(3).ToString());
            temp_det.Add(reader.GetDateTime(4).ToString().Substring(0,9));
            temp_det.Add(reader.GetTimeSpan(5).ToString());
            temp_det.Add(reader.GetInt32(6).ToString());
            temp_det.Add(reader.GetString(7));
            try
            {
                temp_det.Add(reader.GetInt32(9).ToString());
            }
            catch(Exception ex)
            {
                temp_det.Add("0");
            }
            try
            {
                temp_det.Add(reader.GetString(11));
            }
            catch (Exception ex) {
                temp_det.Add("");
            }
            details.Add(temp_det);
        }
        reader.Close();
        con.Close();
        return details;
    }
    public int getInterviewId(string emp,string can,int positionId)
    {
        int int_id=0;
        string command = "SELECT * FROM [Interview] WHERE emp_user='" + emp + "' AND can_use='"+can+"' AND position_id='"+positionId+"'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
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
        if(reader.Read())
        {
            details.Add(reader.GetString(2));
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