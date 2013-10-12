<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example1.aspx.cs" Inherits="Example1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.8.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#<%=chkboxSelectAll.ClientID%>").click(function () {
                if ($(this).is(":checked")) {
                    $("#<%=chkboxList.ClientID%> input[type=checkbox]").attr("checked", "checked");
                }
                else {
                    $("#<%=chkboxList.ClientID%> input[type=checkbox]").removeAttr("checked");
                }
            });

            $("#<%=chkboxList.ClientID%>").click(function () {
                if ($("#<%=chkboxList.ClientID%> input[type=checkbox]:checked").length == $("#<%=chkboxList.ClientID%> input").length) {
                    $("#<%=chkboxSelectAll.ClientID%>").attr("checked", "checked");
                } else {
                    $("#<%=chkboxSelectAll.ClientID%>").removeAttr("checked");
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Please choose type of subscription letters:</h3>
            <asp:CheckBox ID="chkboxSelectAll" runat="server" Text="Select All" />
            <asp:CheckBoxList ID="chkboxList" runat="server">
                <asp:ListItem>News</asp:ListItem>
                <asp:ListItem>Offers</asp:ListItem>
                <asp:ListItem>Products</asp:ListItem>
                <asp:ListItem>Advertisement</asp:ListItem>
            </asp:CheckBoxList>
        </div>
    </form>
</body>
</html>
