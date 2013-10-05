using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class CreateAlbum : System.Web.UI.Page
{
    Logic obj = new Logic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        try
        {
            if (MultipleFileUpload.HasFiles)
            {
                int MaxGalleryId, ReturnValue;
                ReturnValue = obj.fnCreateNewPhotoGallery(txtGalleryName.Text, txtGalleryDescrption.Text, DateTime.Now, out MaxGalleryId);
                if (ReturnValue != 0)
                {
                    string GalleryPath = System.Configuration.ConfigurationManager.AppSettings["GalleryPath"] + MaxGalleryId;
                    Directory.CreateDirectory(Server.MapPath(GalleryPath));

                    string ThumbnailPath = System.Configuration.ConfigurationManager.AppSettings["ThumbnailPath"] + MaxGalleryId;
                    Directory.CreateDirectory(Server.MapPath(ThumbnailPath));

                    StringBuilder UploadedFileNames = new StringBuilder();

                    foreach (HttpPostedFile uploadedFile in MultipleFileUpload.PostedFiles)
                    {
                        //Upload file
                        string FileName = HttpUtility.HtmlEncode(Path.GetFileName(uploadedFile.FileName));
                        string SaveAsImage = System.IO.Path.Combine(Server.MapPath(GalleryPath + "/"), FileName);
                        uploadedFile.SaveAs(SaveAsImage);

                        //Create thumbnail for uploaded file and save thumbnail on disk
                        Bitmap Thumbnail = CreateThumbnail(SaveAsImage, 200, 200);
                        string SaveAsThumbnail = System.IO.Path.Combine(Server.MapPath(ThumbnailPath + "/"), FileName);
                        Thumbnail.Save(SaveAsThumbnail);
                    }
                    HTMLHelper.jsAlertAndRedirect(this, "Gallery created successfully. ", "Album.aspx?GalleryId=" + MaxGalleryId);
                }
            }
        }

        catch
        {
            HTMLHelper.jsAlertAndRedirect(this, "Gallery is not created. Some exception occured ", "CreateAlbum.aspx");
        }
    }

    /// <summary>
    /// CreateThumbnail function returns a Bitmap image of the changed thumbnail image which we can save on the disk.
    /// </summary>
    public Bitmap CreateThumbnail(string ImagePath, int ThumbnailWidth, int ThumbnailHeight)
    {
        System.Drawing.Bitmap Thumbnail = null;
        try
        {
            Bitmap ImageBMP = new Bitmap(ImagePath);
            ImageFormat loFormat = ImageBMP.RawFormat;

            decimal lengthRatio;
            int ThumbnailNewWidth = 0;
            int ThumbnailNewHeight = 0;
            decimal ThumbnailRatioWidth;
            decimal ThumbnailRatioHeight;

            // If the uploaded image is smaller than a thumbnail size the just return it
            if (ImageBMP.Width <= ThumbnailWidth && ImageBMP.Height <= ThumbnailHeight)
                return ImageBMP;

            // Compute best ratio to scale entire image based on larger dimension.
            if (ImageBMP.Width > ImageBMP.Height)
            {
                ThumbnailRatioWidth = (decimal)ThumbnailWidth / ImageBMP.Width;
                ThumbnailRatioHeight = (decimal)ThumbnailHeight / ImageBMP.Height;
                lengthRatio = Math.Min(ThumbnailRatioWidth, ThumbnailRatioHeight);
                ThumbnailNewWidth = ThumbnailWidth;
                decimal lengthTemp = ImageBMP.Height * lengthRatio;
                ThumbnailNewHeight = (int)lengthTemp;
            }
            else
            {
                ThumbnailRatioWidth = (decimal)ThumbnailWidth / ImageBMP.Width;
                ThumbnailRatioHeight = (decimal)ThumbnailHeight / ImageBMP.Height;
                lengthRatio = Math.Min(ThumbnailRatioWidth, ThumbnailRatioHeight);
                ThumbnailNewHeight = ThumbnailHeight;
                decimal lengthTemp = ImageBMP.Width * lengthRatio;
                ThumbnailNewWidth = (int)lengthTemp;
            }
            Thumbnail = new Bitmap(ThumbnailNewWidth, ThumbnailNewHeight);
            Graphics g = Graphics.FromImage(Thumbnail);
            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
            g.FillRectangle(Brushes.White, 0, 0, ThumbnailNewWidth, ThumbnailNewHeight);
            g.DrawImage(ImageBMP, 0, 0, ThumbnailNewWidth, ThumbnailNewHeight);

            ImageBMP.Dispose();
        }
        catch
        {
            return null;
        }

        return Thumbnail;
    }


}