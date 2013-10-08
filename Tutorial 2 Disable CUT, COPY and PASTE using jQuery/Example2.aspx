<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example2.aspx.cs" Inherits="Example2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Tutorial 2: Disable Cut Copy Paste for Textbox using jQuery</title>
    <script src="js/jquery-1.8.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".txtdisable").bind('cut copy paste', function (e) {
                e.preventDefault();
                alert("Cut Copy Paste is disabled for this textbox");
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Enter Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Enter Email Id</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtdisable"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Confirm Email Id</td>
                    <td>
                        <asp:TextBox ID="txtEmailConfirm" runat="server" CssClass="txtdisable"></asp:TextBox>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
