using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AlbumList : System.Web.UI.Page
{
    Logic obj = new Logic();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoaddlGallery();
    }

    protected void LoaddlGallery()
    {

        DataSet dsLoadGallery = obj.fnLoadGallery();
        dlGallery.DataSource = dsLoadGallery.Tables["LoadGallery"];
        dlGallery.DataBind();
    }
}