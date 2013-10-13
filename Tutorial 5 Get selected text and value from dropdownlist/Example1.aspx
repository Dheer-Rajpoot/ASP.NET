<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example1.aspx.cs" Inherits="Example1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.8.js"></script>
    <script type="text/javascript">
        $(function () {
            var ddltext = "";
            $("#<%=ddlCountry.ClientID%>").bind("keyup change", function () {
                if ($(this).val() != "") {
                    ddltext = "Country Text : " + $(this).find(":selected").text() + " Country Value : " + $(this).val();
                    $("#ddl").text(ddltext);
                }
                else {
                    $("#ddl").text("");
                }
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Please select country:</h3>
            <asp:DropDownList ID="ddlCountry" runat="server">
                <asp:ListItem Value="">Select Country</asp:ListItem>
                <asp:ListItem Value="1">India</asp:ListItem>
                <asp:ListItem Value="2">England</asp:ListItem>
                <asp:ListItem Value="3">USA</asp:ListItem>
                <asp:ListItem Value="4">France</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div id="ddl"></div>
    </form>
</body>
</html>
