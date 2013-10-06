<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="js/jquery-1.8.js"></script>
    <script type="text/javascript">

        $(window).load(function () {
            alert(' Alert 1 : Browser Window and all assets are loaded!');
        });

        $(document).ready(function () {
            alert(' Alert 2 : DOM is ready to manipulate!');
        });

        $(function () {
            alert(' Alert 3 : DOM is ready to manipulate!');
        });
        $(function ($) {
            alert(' Alert 4 : DOM is ready to manipulate!');
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>This is sample paragraph text. </p>
        </div>
    </form>
    <script type="text/javascript">
        alert(' Alert 5 : ' + $('p').text());
    </script>
</body>
</html>
