<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example1.aspx.cs" Inherits="Example1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display selected items of ASP.NET CheckBoxList using jQuery</title>
    <script src="js/jquery-1.8.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#<%=chkboxList.ClientID%>").click(function () {
                var strSelectedItems = "";
                $("#<%=chkboxList.ClientID%> input[type=checkbox]:checked").each(function () {
                    strSelectedItems = strSelectedItems + " " + $(this).next().text();                    
                });
                $("#SelectedItems").text(strSelectedItems);
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Please choose type of subscription letters:</h3>
            <asp:CheckBoxList ID="chkboxList" runat="server">
                <asp:ListItem>News</asp:ListItem>
                <asp:ListItem>Offers</asp:ListItem>
                <asp:ListItem>Products</asp:ListItem>
                <asp:ListItem>Advertisement</asp:ListItem>
            </asp:CheckBoxList>
            <div id="SelectedItems">          
            </div>
        </div>
    </form>
</body>
</html>
