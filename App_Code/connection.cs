using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for connection
/// </summary>
public class connection
{
	public connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string getcon()
    {
    //   return "Server=tcp:emojn2cm7l.database.windows.net,1433;Database=OnlineInterview;User ID=m_amighi@emojn2cm7l;Password=Aemag51367;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;";
      return "Data Source=MOHAMMAD;Initial Catalog=OnlineInterview;Integrated Security=True;Pooling=False";
    }
}