<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Album.aspx.cs" Inherits="Album" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Gallery</title>
    <script src="js/jquery-1.8.js" type="text/javascript"> </script>
    <script src="js/jquery.colorbox.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            //Examples of how to assign the ColorBox event to elements
            $(".group1").colorbox({ rel: 'group1', transition: "fade", slideshow: "true" });
        });
    </script>
    <link rel="stylesheet" href="css/colorbox.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><%= GalleryName %></h1>
            <h2><%= GalleryDescription %></h2>
            <asp:DataList ID="dlGallery" runat="server" RepeatColumns="4" RepeatDirection="Horizontal"
                Width="100%">
                <ItemTemplate>
                    <table border="1">
                        <tr>
                            <td>
                                <a href='<%#Eval("GalleryImagePath") %>' class='group1' rel='group1' title='<%= GalleryName %> : <%= GalleryDescription %>'>
                                    <img src='<%#Eval("ThumbnailImagePath") %>' alt='' />
                                </a>
                            </td>
                        </tr>
                        <br />
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
//edited by me just learning pull request
