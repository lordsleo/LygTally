﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TallyBoat.aspx.cs" Inherits="LygTally.wx.TallyBoat" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="apple-mobile-web-app-title" content="" />
    <meta name="format-detection" content="telephone=no" />
        <title>集装箱作业动态</title>
        <script src="../Jquery/jquery-2.1.4.min.js"></script>
        <script src="../Jquery/jquery.mobile-1.4.5.min.js"></script>
        <link href="../Jquery/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
    <style type="text/css">
        .title{
        font-size : 40px;      
}
</style>
        <script type="text/javascript">
            function load() {
                var ret = <%=Json%>
                $("#detail_table").empty();
                document.getElementById("title").innerText = "当前作业船舶共" + ret.length + "条";

                var div = document.getElementById("detail_table");
                var i;
                var ul = "";
                for (i = 0; i < ret.length; ++i)
                {
                    ul += "<div data-role=\"collapsible\">";
                    ul += "<h4>" + ret[i][3] + "/" + ret[i][6] + "</h4>";
                    ul += "<ul data-role=\"listview\" data-inset=\"true\">";
                    ul += "<li>泊位：" + ret[i][13] + " "+ret[i][14] + "</li>";
                    ul += "<li>进出口：" + ret[i][9] + "</li>";
                    ul += "<li>货名：" + ret[i][10] + "</li>";
                    ul += "<li>集装箱计划数：" + ret[i][16] + "</li>";
                    ul += "<li>集装箱完成数：" + ret[i][17] + "</li>";
                    ul += "<li>集装箱当前余数：" + (parseInt(ret[i][16]) - parseInt(ret[i][17])) + "</li>";
                    ul += "<li>倒舱：" + ret[i][15] + "</li>";
                    ul += "<li>开工时间：" + ret[i][7] + "</li>";
                    ul += "<li>理货部门：" + ret[i][11] + "</li></ul>";
                    ul += "</div>";
                }
                div.innerHTML += ul


                $('#detail_table').html(ul);
                $("#detail_table").trigger("create");

            }

        </script>

</head>

    <body onload="load()">
        

  <div data-role="header">
    <h1 id="title"></h1>
  </div>
        <div data-role="content">  
        <div data-role="collapsible-set" id="detail_table">
        </div>
        </div>


    </body>
</html>
