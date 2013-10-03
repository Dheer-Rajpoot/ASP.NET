using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (MultipleFileUpload.HasFiles)
        {
            StringBuilder UploadedFileNames = new StringBuilder();

            foreach (HttpPostedFile uploadedFile in MultipleFileUpload.PostedFiles)
            {
                string FileName = HttpUtility.HtmlEncode(Path.GetFileName(uploadedFile.FileName));
                uploadedFile.SaveAs(System.IO.Path.Combine(Server.MapPath("~/Files/"), FileName));
                UploadedFileNames.AppendFormat("{0}<br />", FileName);
            }
            Response.Write("Uploaded Files are : <br/>" + UploadedFileNames);
        }
    }

}