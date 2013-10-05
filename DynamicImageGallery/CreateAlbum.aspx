<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateAlbum.aspx.cs" Inherits="CreateAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Album</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Enter Gallery Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtGalleryName" runat="server" Width="90%" MaxLength="100">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvtxtGalleryName" runat="server" ErrorMessage="Enter Gallery Name"
                            ForeColor="Red" ControlToValidate="txtGalleryName">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Gallery Description
                    </td>
                    <td>
                        <asp:TextBox ID="txtGalleryDescrption" runat="server" TextMode="MultiLine" Width="90%"
                            Height="50px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvtxtGalleryDescrption" runat="server" ErrorMessage="Enter Gallery Description"
                            ForeColor="Red" ControlToValidate="txtGalleryDescrption">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Upload Photos to Album</td>
                    <td>
                        <asp:FileUpload AllowMultiple="true" ID="MultipleFileUpload" runat="server"></asp:FileUpload></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvFileUploadGallery" runat="server" ErrorMessage="Upload Gallery Photos"
                            ForeColor="Red" ControlToValidate="MultipleFileUpload">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
