using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Album : System.Web.UI.Page
{
    Logic obj = new Logic();
    protected int GalleryId;
    protected string GalleryName;
    protected string GalleryDescription;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["GalleryId"]))
            {
                GalleryId = Convert.ToInt32(Request.QueryString["GalleryId"]);
                DataSet dsLoadGallery = obj.fnLoadGallery(GalleryId);
                if (dsLoadGallery.Tables.Count > 0)
                {
                    if (dsLoadGallery.Tables[0].Rows.Count > 0)
                    {
                        GalleryName = dsLoadGallery.Tables["LoadGallery"].Rows[0]["GalleryName"].ToString();
                        GalleryDescription = dsLoadGallery.Tables["LoadGallery"].Rows[0]["GalleryDescription"].ToString();
                        LoaddlGallery();
                    }
                    else
                    {
                        Response.Redirect("PageNotFound.html");
                    }
                }
                else
                {
                    Response.Redirect("PageNotFound.html");
                }
            }
            else
            {
                Response.Redirect("PageNotFound.html");
            }
        }
    }

    protected void LoaddlGallery()
    {
        string GalleryPath = System.Configuration.ConfigurationManager.AppSettings["GalleryPath"] + GalleryId;
        string GalleryImagePath;

        string ThumbnailPath = System.Configuration.ConfigurationManager.AppSettings["ThumbnailPath"] + GalleryId;
        string ThumbnailImagePath;

        DirectoryInfo dir = new DirectoryInfo(MapPath(GalleryPath));
        FileInfo[] file = dir.GetFiles();
        DataTable dtLoadGallery = new DataTable();
        dtLoadGallery.Columns.Add("GalleryImagePath");
        dtLoadGallery.Columns.Add("ThumbnailImagePath");

        foreach (FileInfo image in file)
        {
            if (image.Extension.ToLower() == ".jpg" || image.Extension.ToLower() == ".jpeg" || image.Extension.ToLower() == ".gif" || image.Extension.ToLower() == ".png" || image.Extension.ToLower() == ".bmp")
            {
                GalleryImagePath = GalleryPath + "\\" + image.Name;
                ThumbnailImagePath = ThumbnailPath + "\\" + image.Name;
                dtLoadGallery.Rows.Add(GalleryImagePath, ThumbnailImagePath);
            }
        }
        dlGallery.DataSource = dtLoadGallery;
        dlGallery.DataBind();
    }

}