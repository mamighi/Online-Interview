using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class Employer_Pages_Certificates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Account ac = new Account();
        string name = ac.get_name(Session["user"].ToString().TrimEnd());
        Label1.Text = name.ToUpper();
        getFileNames();
    }
    public void getFileNames()
    {
        Candidate_pros pros = new Candidate_pros();
        List<string> names = pros.getFilesName(Session["user"].ToString().TrimEnd());
        if (names[0].Length > 1)
            Label3.Text = names[0];
        if (names[1].Length > 1)
            Label5.Text = names[1];
        if (names[2].Length > 1)
            Label7.Text = names[2];
        if (names[3].Length > 1)
            Label9.Text = names[3];
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        byte[] data = FileUpload1.FileBytes;
        int size = data.Length;
        Candidate_pros pros = new Candidate_pros();
        pros.upload_cert(Session["user"].ToString().TrimEnd(), "cv", data, size,FileUpload1.FileName);

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        byte[] data = FileUpload2.FileBytes;
        int size = data.Length;
        Candidate_pros pros = new Candidate_pros();
        pros.upload_cert(Session["user"].ToString().TrimEnd(), "cer1", data, size,FileUpload2.FileName);
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        byte[] data = FileUpload3.FileBytes;
        int size = data.Length;
        Candidate_pros pros = new Candidate_pros();
        pros.upload_cert(Session["user"].ToString().TrimEnd(), "cer2", data, size,FileUpload3.FileName);
    }
    protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
    {
        byte[] data = FileUpload4.FileBytes;
        int size = data.Length;
        Candidate_pros pros = new Candidate_pros();
        pros.upload_cert(Session["user"].ToString().TrimEnd(), "cer3", data, size,FileUpload4.FileName);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label3.Text;
        if (!fileName.Contains("."))
            return;
        byte[] data = pros.get_cer(Session["user"].ToString().TrimEnd(), "cv");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;
        
        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document ";
        Response.BinaryWrite(data);
        Response.End();

        //using (System.IO.FileStream fs = new System.IO.FileStream(dpath, System.IO.FileMode.Create, System.IO.FileAccess.ReadWrite))
        //{
        //    using (System.IO.BinaryWriter bw = new System.IO.BinaryWriter(fs))
        //        {
        //            bw.Write(data);
        //            bw.Close();
        //        }

        //}
        //System.Diagnostics.Process.Start(dpath);
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label5.Text;
        if (!fileName.Contains("."))
            return;
       // string tempPath = System.IO.Path.GetTempPath();
    //    string dpath = tempPath + "\\" + fileName;
        byte[] data = pros.get_cer(Session["user"].ToString().TrimEnd(), "cer1");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;

        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "vnd.openxmlformats-officedocument.wordprocessingml.document ";
        Response.BinaryWrite(data);
        Response.Flush();
        Response.Close();
        Response.End();

    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label7.Text;
        if (!fileName.Contains("."))
            return;
    //    string tempPath = System.IO.Path.GetTempPath();
    //    string dpath = tempPath + "\\" + fileName;
        byte[] data = pros.get_cer(Session["user"].ToString().TrimEnd(), "cer2");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;

        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "vnd.openxmlformats-officedocument.wordprocessingml.document ";
        Response.BinaryWrite(data);
    }
    protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
    {
        Candidate_pros pros = new Candidate_pros();
        string fileName = Label9.Text;
        if (!fileName.Contains("."))
            return;
   //     string tempPath = System.IO.Path.GetTempPath();
     //   string dpath = tempPath + "\\" + fileName;
        byte[] data = pros.get_cer(Session["user"].ToString().TrimEnd(), "cer3");
        string ex = Path.GetExtension(fileName);


        Response.Buffer = true;

        if (ex.Equals(".pdf"))
            Response.ContentType = "application/PDF";
        else
            Response.ContentType = "vnd.openxmlformats-officedocument.wordprocessingml.document ";
        Response.BinaryWrite(data);
    }
}
