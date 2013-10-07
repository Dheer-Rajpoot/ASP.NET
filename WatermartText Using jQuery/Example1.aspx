<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example1.aspx.cs" Inherits="Example1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This is demo for watermark text</title>
    <script src="js/jquery-1.8.js"></script>
    <script type="text/javascript">
        $(function () {
            var txtNameBox = $("#<%=txtName.ClientID%>");
            txtNameBox.focus(function () {
                if (txtNameBox.val() == this.title)
                    txtNameBox.val("");
            });
            txtNameBox.blur(function () {
                if (txtNameBox.val() == "")
                    txtNameBox.val(this.title);
            });
            txtNameBox.blur();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>This is demo for watermark text</h1>
            <asp:TextBox ID="txtName" runat="server" ToolTip="Enter Your Name"></asp:TextBox>
        </div>
    </form>
</body>
</html>
