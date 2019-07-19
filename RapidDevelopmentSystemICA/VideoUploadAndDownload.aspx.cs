using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Data;

public partial class VideoDownload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label3.Visible = false;
            HyperLink2.Visible = false;
        }

        DataTable dt = new DataTable();
        dt.Columns.Add("Name", typeof(string));
        dt.Columns.Add("Size", typeof(string));
        dt.Columns.Add("VideoPath", typeof(string));

        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/UploadedVideos")))
        {
            FileInfo fi = new FileInfo(strFile);
            dt.Rows.Add(fi.Name, fi.Length, fi.Directory);
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e) //for video upload
    {
        HttpPostedFile postedFile = FileUpload2.PostedFile;
        string fileName = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(fileName);
        int fileSize = postedFile.ContentLength;

        if (fileExtension.ToLower() == ".mp4" || fileExtension.ToLower() == ".avi")
        {
            String link = "UploadedVideos/" + Path.GetFileName(FileUpload2.FileName);
            link = "<Video width=400 Controls><Source src=../" + link + " type=video/mp4></video>";

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spUploadVideo", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramName = new SqlParameter()
                {
                    ParameterName = "@Name",
                    Value = fileName
                };
                cmd.Parameters.Add(paramName);

                SqlParameter paramSize = new SqlParameter()
                {
                    ParameterName = "@Size",
                    Value = fileSize
                };
                cmd.Parameters.Add(paramSize);

                SqlParameter paraImageData = new SqlParameter()
                {
                    ParameterName = "@VideoPath",
                    Value = link
                };
                cmd.Parameters.Add(paraImageData);

                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@NewId",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Label3.Visible = true;
                Label3.Text = "Upload Successful";
                Label3.ForeColor = System.Drawing.Color.Green;
                HyperLink2.Visible = true;
                HyperLink2.NavigateUrl = "~/VideoGallary.aspx";
                //file is added to database table

                string fileNameString = FileUpload2.FileName;
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/UploadedVideos/" + fileNameString));
                //file had been uploaded to UploadedItems folder 

               

                
            }
        }
        else
        {
            Label3.Visible = true;
            Label3.Text = "Only Video(.mp4, .avi) can be uploaded";
            Label3.ForeColor = System.Drawing.Color.Red;
            HyperLink2.Visible = false;
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("UploadedVideos/") + e.CommandArgument);
            Response.End();
        }
    }
}