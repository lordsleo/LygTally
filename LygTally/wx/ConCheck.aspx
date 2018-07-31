<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConCheck.aspx.cs" Inherits="LygTally.wx.ConCheck" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="apple-mobile-web-app-title" content="" />
    <meta name="format-detection" content="telephone=no" />
    <title>口岸集装箱离境核查</title>
    <script src="../Jquery/jquery-2.1.4.min.js"></script>
    <script src="../Jquery/jquery.mobile-1.4.5.min.js"></script>
    <link href="../Jquery/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
    <style type="text/css">
        .title {
            font-size: 40px;
        }
    </style>
    <script type="text/javascript">
        function load() {
            var ret = <%=Json%>
                $("#detail_table").empty();
                //document.getElementById("title").innerText = "当前作业船舶共" + ret.length + "条";

                var div = document.getElementById("detail_table");
                var i;
                var ul = "";
                for (i = 0; i < ret.length; ++i) {
                    ul += "<div data-role=\"collapsible\">";
                    ul += "<h4>" + ret[i][2] + "  </br>" + ret[i][3] + "</h4>";
                    ul += "<ul data-role=\"listview\" data-inset=\"true\">";
                    ul += "<li>集装箱号：" + ret[i][0] + "</li>";
                    ul += "<li>船舶IMO号：" + ret[i][1] + "</li>";
                    ul += "<li>船名/航次：" + ret[i][2] + "</li>";
                    ul += "<li>理箱时间：" + ret[i][3] + "</li>";
                    ul += "<li>作业泊位号：" + ret[i][4] + "</li>";
                    ul += "<li>卸货港：" + ret[i][5] + "</li>";
                    ul += "<li>提单号：" + ret[i][6] + "</li>";
                    ul += "</div>";
                }
                div.innerHTML += ul


                $('#detail_table').html(ul);
                $("#detail_table").trigger("create");

            }

    </script>

</head>

<body onload ="load()">
    <form id="Form1" runat="server">

        <div data-role="header">
            <h1 id="title" style="white-space: nowrap;">
                <asp:TextBox ID="con_no"  placeholder="请输入箱号" runat="server" Style="width: 100%"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="查询" UseSubmitBehavior="false" class="btn btn-primary" />
            </h1>
        </div>
        <div data-role="content">
            <div data-role="collapsible-set" id="detail_table">
            </div>
        </div>

    </form>
</body>
</html>
