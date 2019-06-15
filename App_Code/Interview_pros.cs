using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Interview_pros
/// </summary>
public class Interview_pros
{
    SqlConnection con;
	public Interview_pros()
	{
        connection CON = new connection();
        con = new SqlConnection(CON.getcon());
	}
    public void changeStatus(int intId)
    {
        string command = "UPDATE [Interview] SET status='DONE' WHERE id='" + intId + "'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public void addInterviewDetails(int int_id,int skill,int know,int comu,int over,string note)
    {
        string command = "INSERT INTO [Interview_Details] (Inter_Id,skills,knowledge,com,overal,note) VALUES('" + int_id + "','" + skill + "','" + know + "','" + comu + "','" + over + "','" + note + "')";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public void changeResult(int intId, string result)
    {
        string command = "UPDATE [Interview] SET result='"+result+"' WHERE id='" + intId + "'";
        SqlCommand com = new SqlCommand(command, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public List<string> getInterviewScore(int int_id)
    {
        List<string> scors= new List<string>();
        string command = "SELECT * FROM [Interview_Details] WHERE Inter_Id='" + int_id + "'";
        SqlCommand com = new SqlCommand(command, con);
        SqlDataReader reader;
        con.Open();
        reader = com.ExecuteReader();
        if(reader.Read())
        {
            scors.Add(reader.GetInt32(2).ToString());
            scors.Add(reader.GetInt32(3).ToString());
            scors.Add(reader.GetInt32(4).ToString());
            scors.Add(reader.GetInt32(5).ToString());
            scors.Add(reader.GetString(6));
        }
        reader.Close();
        con.Close();
        return scors;
    }


}