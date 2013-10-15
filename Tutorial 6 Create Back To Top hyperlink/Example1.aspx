<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example1.aspx.cs" Inherits="Example1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.8.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#BackToTop").click(function () {
                $('html,body').animate({ scrollTop: $("#Area1").offset().top },
                { duration: 'normal', easing: 'swing' });
                return false;
            });
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            color: #0000CC;
            font-size: x-large;
            cursor:hand;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="Area1">
            <h1>Scroll down and click on Back To Top</h1>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consequat mauris eu nisl convallis ultricies. Aenean aliquet pellentesque nisi. Maecenas suscipit, orci quis faucibus blandit, nunc urna tempus justo, sit amet gravida tortor lorem eu justo. Vivamus sagittis diam purus, ac dapibus odio suscipit ut. Nullam viverra quis lacus at congue. Duis consectetur dapibus luctus. In risus purus, tristique nec ornare nec, venenatis in mi. Etiam in lobortis velit, et scelerisque risus. Nullam a nisi velit. Aenean lacinia dui massa, id ornare dui dignissim ut. Fusce ultrices gravida lectus, faucibus tincidunt massa placerat pharetra. Suspendisse cursus risus quis faucibus luctus. Sed fringilla euismod dolor in imperdiet. Proin ornare lacus et risus aliquet feugiat id pulvinar mauris. Donec sed mattis dui, et ornare lorem.
            <br />
            <br />
            Nullam dolor ligula, gravida in aliquam eget, consequat pulvinar neque. Pellentesque sit amet diam euismod, dictum mi vitae, euismod odio. Mauris posuere, felis sed semper scelerisque, erat risus eleifend arcu, nec vestibulum velit sem sit amet orci. Etiam tempor pulvinar porta. Mauris ac felis ut urna accumsan accumsan vitae at metus. Integer tempus mauris euismod nulla lacinia sollicitudin. In hac habitasse platea dictumst. Nam ut risus porttitor justo suscipit iaculis id id tortor. Phasellus vel lorem vitae nisi elementum euismod eu sed nulla. Aliquam sit amet tempus quam. Nam ut ante ac lacus rutrum facilisis. Etiam in vehicula diam. Vestibulum lacinia turpis et quam faucibus, non pretium velit laoreet. Nullam eleifend, odio a tincidunt aliquet, tortor lectus eleifend neque, at pulvinar enim ligula id libero.
            <br />
            <br />
            Aliquam tempor elementum quam non pretium. Sed consectetur pulvinar iaculis. Morbi purus quam, viverra vel ante rhoncus, venenatis egestas dui. Maecenas nec nibh justo. Nam in nisl tincidunt, interdum est quis, laoreet tellus. Nunc at lacus at massa consequat tempus. Vestibulum pulvinar nulla vel felis sagittis scelerisque. Vivamus pellentesque elit eu orci vestibulum, nec auctor quam cursus. Nam ut ipsum fringilla, lacinia est ac, dictum elit. Vivamus quis ipsum ac neque tincidunt hendrerit. Curabitur pretium mauris vitae laoreet consequat.
            <br />
            <br />
            Maecenas malesuada fermentum cursus. Aenean fermentum tristique sagittis. Aliquam rhoncus metus a ante vestibulum, ac tempus arcu elementum. Morbi adipiscing ullamcorper ligula. Praesent sed dui pulvinar, ultrices ligula in, fringilla diam. Donec cursus pulvinar lobortis. Suspendisse potenti. Cras at dolor fermentum, fermentum nunc ut, convallis nibh. In viverra ut eros quis scelerisque. Sed blandit felis eu mauris consectetur semper. Vivamus ac eleifend metus. Etiam in enim pellentesque, fermentum augue quis, varius metus.
            <br />
            <br />
            Maecenas sollicitudin sem et pharetra hendrerit. Suspendisse eu ipsum hendrerit, facilisis mi non, posuere quam. Sed porttitor sem ut orci facilisis, non euismod turpis volutpat. Duis pharetra lectus a mi luctus, ut malesuada odio ultricies. Duis ut luctus lorem. Proin feugiat lorem sit amet augue facilisis, et accumsan libero semper. Phasellus nibh sapien, tempus eu malesuada in, condimentum vel est. Proin fringilla justo id orci dapibus, in dignissim nisi consequat. Curabitur euismod justo velit, vitae malesuada ante tempor egestas. Quisque ultricies nunc est, vitae sagittis augue auctor pharetra. Maecenas eu felis fermentum, sagittis quam fermentum, pulvinar magna.
            <br />
            <br />
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consequat mauris eu nisl convallis ultricies. Aenean aliquet pellentesque nisi. Maecenas suscipit, orci quis faucibus blandit, nunc urna tempus justo, sit amet gravida tortor lorem eu justo. Vivamus sagittis diam purus, ac dapibus odio suscipit ut. Nullam viverra quis lacus at congue. Duis consectetur dapibus luctus. In risus purus, tristique nec ornare nec, venenatis in mi. Etiam in lobortis velit, et scelerisque risus. Nullam a nisi velit. Aenean lacinia dui massa, id ornare dui dignissim ut. Fusce ultrices gravida lectus, faucibus tincidunt massa placerat pharetra. Suspendisse cursus risus quis faucibus luctus. Sed fringilla euismod dolor in imperdiet. Proin ornare lacus et risus aliquet feugiat id pulvinar mauris. Donec sed mattis dui, et ornare lorem.
            <br />
            <br />
            Nullam dolor ligula, gravida in aliquam eget, consequat pulvinar neque. Pellentesque sit amet diam euismod, dictum mi vitae, euismod odio. Mauris posuere, felis sed semper scelerisque, erat risus eleifend arcu, nec vestibulum velit sem sit amet orci. Etiam tempor pulvinar porta. Mauris ac felis ut urna accumsan accumsan vitae at metus. Integer tempus mauris euismod nulla lacinia sollicitudin. In hac habitasse platea dictumst. Nam ut risus porttitor justo suscipit iaculis id id tortor. Phasellus vel lorem vitae nisi elementum euismod eu sed nulla. Aliquam sit amet tempus quam. Nam ut ante ac lacus rutrum facilisis. Etiam in vehicula diam. Vestibulum lacinia turpis et quam faucibus, non pretium velit laoreet. Nullam eleifend, odio a tincidunt aliquet, tortor lectus eleifend neque, at pulvinar enim ligula id libero.
            <br />
            <br />
            Aliquam tempor elementum quam non pretium. Sed consectetur pulvinar iaculis. Morbi purus quam, viverra vel ante rhoncus, venenatis egestas dui. Maecenas nec nibh justo. Nam in nisl tincidunt, interdum est quis, laoreet tellus. Nunc at lacus at massa consequat tempus. Vestibulum pulvinar nulla vel felis sagittis scelerisque. Vivamus pellentesque elit eu orci vestibulum, nec auctor quam cursus. Nam ut ipsum fringilla, lacinia est ac, dictum elit. Vivamus quis ipsum ac neque tincidunt hendrerit. Curabitur pretium mauris vitae laoreet consequat.
            <br />
            <br />
            Maecenas malesuada fermentum cursus. Aenean fermentum tristique sagittis. Aliquam rhoncus metus a ante vestibulum, ac tempus arcu elementum. Morbi adipiscing ullamcorper ligula. Praesent sed dui pulvinar, ultrices ligula in, fringilla diam. Donec cursus pulvinar lobortis. Suspendisse potenti. Cras at dolor fermentum, fermentum nunc ut, convallis nibh. In viverra ut eros quis scelerisque. Sed blandit felis eu mauris consectetur semper. Vivamus ac eleifend metus. Etiam in enim pellentesque, fermentum augue quis, varius metus.
            <br />
            <br />
            Maecenas sollicitudin sem et pharetra hendrerit. Suspendisse eu ipsum hendrerit, facilisis mi non, posuere quam. Sed porttitor sem ut orci facilisis, non euismod turpis volutpat. Duis pharetra lectus a mi luctus, ut malesuada odio ultricies. Duis ut luctus lorem. Proin feugiat lorem sit amet augue facilisis, et accumsan libero semper. Phasellus nibh sapien, tempus eu malesuada in, condimentum vel est. Proin fringilla justo id orci dapibus, in dignissim nisi consequat. Curabitur euismod justo velit, vitae malesuada ante tempor egestas. Quisque ultricies nunc est, vitae sagittis augue auctor pharetra. Maecenas eu felis fermentum, sagittis quam fermentum, pulvinar magna.
            <br />
            <br />
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consequat mauris eu nisl convallis ultricies. Aenean aliquet pellentesque nisi. Maecenas suscipit, orci quis faucibus blandit, nunc urna tempus justo, sit amet gravida tortor lorem eu justo. Vivamus sagittis diam purus, ac dapibus odio suscipit ut. Nullam viverra quis lacus at congue. Duis consectetur dapibus luctus. In risus purus, tristique nec ornare nec, venenatis in mi. Etiam in lobortis velit, et scelerisque risus. Nullam a nisi velit. Aenean lacinia dui massa, id ornare dui dignissim ut. Fusce ultrices gravida lectus, faucibus tincidunt massa placerat pharetra. Suspendisse cursus risus quis faucibus luctus. Sed fringilla euismod dolor in imperdiet. Proin ornare lacus et risus aliquet feugiat id pulvinar mauris. Donec sed mattis dui, et ornare lorem.
            <br />
            <br />
            Nullam dolor ligula, gravida in aliquam eget, consequat pulvinar neque. Pellentesque sit amet diam euismod, dictum mi vitae, euismod odio. Mauris posuere, felis sed semper scelerisque, erat risus eleifend arcu, nec vestibulum velit sem sit amet orci. Etiam tempor pulvinar porta. Mauris ac felis ut urna accumsan accumsan vitae at metus. Integer tempus mauris euismod nulla lacinia sollicitudin. In hac habitasse platea dictumst. Nam ut risus porttitor justo suscipit iaculis id id tortor. Phasellus vel lorem vitae nisi elementum euismod eu sed nulla. Aliquam sit amet tempus quam. Nam ut ante ac lacus rutrum facilisis. Etiam in vehicula diam. Vestibulum lacinia turpis et quam faucibus, non pretium velit laoreet. Nullam eleifend, odio a tincidunt aliquet, tortor lectus eleifend neque, at pulvinar enim ligula id libero.
            <br />
            <br />
            Aliquam tempor elementum quam non pretium. Sed consectetur pulvinar iaculis. Morbi purus quam, viverra vel ante rhoncus, venenatis egestas dui. Maecenas nec nibh justo. Nam in nisl tincidunt, interdum est quis, laoreet tellus. Nunc at lacus at massa consequat tempus. Vestibulum pulvinar nulla vel felis sagittis scelerisque. Vivamus pellentesque elit eu orci vestibulum, nec auctor quam cursus. Nam ut ipsum fringilla, lacinia est ac, dictum elit. Vivamus quis ipsum ac neque tincidunt hendrerit. Curabitur pretium mauris vitae laoreet consequat.
            <br />
            <br />
            Maecenas malesuada fermentum cursus. Aenean fermentum tristique sagittis. Aliquam rhoncus metus a ante vestibulum, ac tempus arcu elementum. Morbi adipiscing ullamcorper ligula. Praesent sed dui pulvinar, ultrices ligula in, fringilla diam. Donec cursus pulvinar lobortis. Suspendisse potenti. Cras at dolor fermentum, fermentum nunc ut, convallis nibh. In viverra ut eros quis scelerisque. Sed blandit felis eu mauris consectetur semper. Vivamus ac eleifend metus. Etiam in enim pellentesque, fermentum augue quis, varius metus.
            <br />
            <br />
            Maecenas sollicitudin sem et pharetra hendrerit. Suspendisse eu ipsum hendrerit, facilisis mi non, posuere quam. Sed porttitor sem ut orci facilisis, non euismod turpis volutpat. Duis pharetra lectus a mi luctus, ut malesuada odio ultricies. Duis ut luctus lorem. Proin feugiat lorem sit amet augue facilisis, et accumsan libero semper. Phasellus nibh sapien, tempus eu malesuada in, condimentum vel est. Proin fringilla justo id orci dapibus, in dignissim nisi consequat. Curabitur euismod justo velit, vitae malesuada ante tempor egestas. Quisque ultricies nunc est, vitae sagittis augue auctor pharetra. Maecenas eu felis fermentum, sagittis quam fermentum, pulvinar magna.
            <br />
            <br />
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas consequat mauris eu nisl convallis ultricies. Aenean aliquet pellentesque nisi. Maecenas suscipit, orci quis faucibus blandit, nunc urna tempus justo, sit amet gravida tortor lorem eu justo. Vivamus sagittis diam purus, ac dapibus odio suscipit ut. Nullam viverra quis lacus at congue. Duis consectetur dapibus luctus. In risus purus, tristique nec ornare nec, venenatis in mi. Etiam in lobortis velit, et scelerisque risus. Nullam a nisi velit. Aenean lacinia dui massa, id ornare dui dignissim ut. Fusce ultrices gravida lectus, faucibus tincidunt massa placerat pharetra. Suspendisse cursus risus quis faucibus luctus. Sed fringilla euismod dolor in imperdiet. Proin ornare lacus et risus aliquet feugiat id pulvinar mauris. Donec sed mattis dui, et ornare lorem.
            <br />
            <br />
            Nullam dolor ligula, gravida in aliquam eget, consequat pulvinar neque. Pellentesque sit amet diam euismod, dictum mi vitae, euismod odio. Mauris posuere, felis sed semper scelerisque, erat risus eleifend arcu, nec vestibulum velit sem sit amet orci. Etiam tempor pulvinar porta. Mauris ac felis ut urna accumsan accumsan vitae at metus. Integer tempus mauris euismod nulla lacinia sollicitudin. In hac habitasse platea dictumst. Nam ut risus porttitor justo suscipit iaculis id id tortor. Phasellus vel lorem vitae nisi elementum euismod eu sed nulla. Aliquam sit amet tempus quam. Nam ut ante ac lacus rutrum facilisis. Etiam in vehicula diam. Vestibulum lacinia turpis et quam faucibus, non pretium velit laoreet. Nullam eleifend, odio a tincidunt aliquet, tortor lectus eleifend neque, at pulvinar enim ligula id libero.
            <br />
            <br />
            Aliquam tempor elementum quam non pretium. Sed consectetur pulvinar iaculis. Morbi purus quam, viverra vel ante rhoncus, venenatis egestas dui. Maecenas nec nibh justo. Nam in nisl tincidunt, interdum est quis, laoreet tellus. Nunc at lacus at massa consequat tempus. Vestibulum pulvinar nulla vel felis sagittis scelerisque. Vivamus pellentesque elit eu orci vestibulum, nec auctor quam cursus. Nam ut ipsum fringilla, lacinia est ac, dictum elit. Vivamus quis ipsum ac neque tincidunt hendrerit. Curabitur pretium mauris vitae laoreet consequat.
            <br />
            <br />
            Maecenas malesuada fermentum cursus. Aenean fermentum tristique sagittis. Aliquam rhoncus metus a ante vestibulum, ac tempus arcu elementum. Morbi adipiscing ullamcorper ligula. Praesent sed dui pulvinar, ultrices ligula in, fringilla diam. Donec cursus pulvinar lobortis. Suspendisse potenti. Cras at dolor fermentum, fermentum nunc ut, convallis nibh. In viverra ut eros quis scelerisque. Sed blandit felis eu mauris consectetur semper. Vivamus ac eleifend metus. Etiam in enim pellentesque, fermentum augue quis, varius metus.
            <br />
            <br />
            Maecenas sollicitudin sem et pharetra hendrerit. Suspendisse eu ipsum hendrerit, facilisis mi non, posuere quam. Sed porttitor sem ut orci facilisis, non euismod turpis volutpat. Duis pharetra lectus a mi luctus, ut malesuada odio ultricies. Duis ut luctus lorem. Proin feugiat lorem sit amet augue facilisis, et accumsan libero semper. Phasellus nibh sapien, tempus eu malesuada in, condimentum vel est. Proin fringilla justo id orci dapibus, in dignissim nisi consequat. Curabitur euismod justo velit, vitae malesuada ante tempor egestas. Quisque ultricies nunc est, vitae sagittis augue auctor pharetra. Maecenas eu felis fermentum, sagittis quam fermentum, pulvinar magna.                      
        </div>
        <a id="BackToTop" href="#top"><strong><span class="auto-style1">Back To Top</span></strong></a>
    </form>
</body>
</html>
