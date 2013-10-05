<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlbumList.aspx.cs" Inherits="AlbumList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gallery List</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Album List</h1>
            <asp:DataList ID="dlGallery" runat="server" RepeatLayout="Flow" Width="100%" CellPadding="4" ForeColor="#333333">
               
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
               
                <ItemTemplate>                    
                    <table border="1">
                        <tr>
                            <td>
                                <a href="Album.aspx?GalleryId=<%#Eval("GalleryId") %>">
                                <%# Eval("GalleryName") %>
                                    </a>
                            </td>
                            <td>
                                <%# Eval("GalleryDescription") %>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </div>
    </form>
</body>
</html>
