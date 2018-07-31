<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wlship.aspx.cs" Inherits="LygTally.Business.wlship" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>外理船舶信息查询</title>
    <script src="../Jquery/jquery-2.1.4.min.js"></script>
    <link href="../Jquery/jquery.mobile-1.4.5.min.css" rel="stylesheet" />
    <script src="../Jquery/jquery.mobile-1.4.5.min.js"></script>

<style type="text/css"> 
.movie-list thead th{
    background-color: #B0C4DE;
}

.movie-list thead th,
.movie-list tbody tr:last-child {
border-bottom: 1px solid #d6d6d6; /* non-RGBA fallback */
border-bottom: 1px solid rgba(0,0,0,.1);
text-align:center;
}
.movie-list tbody th,
.movie-list tbody td {
border-bottom: 1px solid #e6e6e6; /* non-RGBA fallback  */
border-left: 1px solid #d6d6d6;
border-right: 1px solid #d6d6d6;
border-bottom: 1px solid rgba(0,0,0,.05);
text-align:center;
}
.movie-list tbody tr:last-child th,
.movie-list tbody tr:last-child td {
border-bottom: 0;
text-align:center;
}
.movie-list tbody tr:nth-child(odd) td,
.movie-list tbody tr:nth-child(odd) th {
background-color: #eeeeee; /* non-RGBA fallback  */
background-color: rgba(0,0,0,.04);
text-align:center;
}
</style>

    <script type="text/javascript">

        function load() {
            ybcb();
            qbcb();
            mdcb();
            bwcb();
            hgcb();
            hgyb();
            ghcb();
            ghyb();
            jhsj();
        }

        function jhsj() {
            var ret = <%=fbsj%>
            document.getElementById("jhsj").innerText = "发布时间： " + ret[0][0];
        }

        function ybcb() {
                var ret = <%=ybcb%>
                $("#ybcb_tbody").empty();
                document.getElementById("ybcb_title").innerText = "当前预报船舶共" + ret.length + "条";
                var i;
                var ul = "";
                for (i = 0; i < ret.length; ++i) {
                    ul += "<tr>";
                    ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][1] + "</a></th>";
                    ul += "<th>" + ret[i][2] + "</a></th>";
                    ul += "<th>" + ret[i][3] + "</a></th>";
                    ul += "<th>" + ret[i][4] + "</a></th>";
                    ul += "<th>" + ret[i][5] + "</a></th>";
                    ul += "<th>" + ret[i][6] + "</a></th>";
                    ul += "<th>" + ret[i][7] + "</a></th>";
                    ul += "<th>" + ret[i][8] + "</a></th>";
                    ul += "<th>" + ret[i][9] + "</a></th>";
                    ul += "<th>" + ret[i][10] + "</a></th>";
                    ul += "<th>" + ret[i][11] + "</a></th>";
                    ul += "</tr>";
                }
                $("#ybcb_tbody").append(ul);
                $('#ybcb_table').trigger("create");
            }
        
        function qbcb() {
            var ret = <%=qbcb%>
            $("#qbcb_tbody").empty();
            document.getElementById("qbcb_title").innerText = "当前确报船舶共" + ret.length + "条";
            var i;
            var ul = "";
            for (i = 0; i < ret.length; ++i) {
                ul += "<tr>";
                ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][1] + "</a></th>";
                ul += "<th>" + ret[i][2] + "</a></th>";
                ul += "<th>" + ret[i][3] + "</a></th>";
                ul += "<th>" + ret[i][4] + "</a></th>";
                ul += "<th>" + ret[i][5] + "</a></th>";
                ul += "<th>" + ret[i][6] + "</a></th>";
                ul += "<th>" + ret[i][7] + "</a></th>";
                ul += "<th>" + ret[i][8] + "</a></th>";
                ul += "<th>" + ret[i][9] + "</a></th>";
                ul += "<th>" + ret[i][10] + "</a></th>";
                ul += "<th>" + ret[i][11] + "</a></th>";
                ul += "</tr>";
            }
            $("#qbcb_tbody").append(ul);
            $('#qbcb_table').trigger("create");
        }

        function mdcb() {
            var ret = <%=mdcb%>
            $("#mdcb_tbody").empty();
            document.getElementById("mdcb_title").innerText = "当前锚地船舶共" + ret.length + "条";
            var i;
            var ul = "";
            for (i = 0; i < ret.length; ++i) {
                ul += "<tr>";
                ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][1] + "</a></th>";
                ul += "<th>" + ret[i][2] + "</a></th>";
                ul += "<th>" + ret[i][3] + "</a></th>";
                ul += "<th>" + ret[i][4] + "</a></th>";
                ul += "<th>" + ret[i][5] + "</a></th>";
                ul += "<th>" + ret[i][6] + "</a></th>";
                ul += "<th>" + ret[i][7] + "</a></th>";
                ul += "<th>" + ret[i][8] + "</a></th>";
                ul += "<th>" + ret[i][9] + "</a></th>";
                ul += "<th>" + ret[i][10] + "</a></th>";
                ul += "<th>" + ret[i][11] + "</a></th>";
                ul += "<th>" + ret[i][12] + "</a></th>";
                ul += "</tr>";
            }
            $("#mdcb_tbody").append(ul);
            $('#mdcb_table').trigger("create");
        }

        function bwcb() {
            var ret = <%=bwcb%>
            $("#bwcb_tbody").empty();
            document.getElementById("bwcb_title").innerText = "当前锚地船舶共" + ret.length + "条";
            var i;
            var ul = "";
            for (i = 0; i < ret.length; ++i) {
                ul += "<tr>";
                ul += "<th>" + ret[i][1] + "</a></th>";
                ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][2] + "</a></th>";
                ul += "<th>" + ret[i][3] + "</a></th>";
                ul += "<th>" + ret[i][4] + "</a></th>";
                ul += "<th>" + ret[i][5] + "</a></th>";
                ul += "<th>" + ret[i][6] + "</a></th>";
                ul += "<th>" + ret[i][7] + "</a></th>";
                ul += "<th>" + ret[i][8] + "</a></th>";
                ul += "<th>" + ret[i][9] + "</a></th>";
                ul += "<th>" + ret[i][10] + "</a></th>";
                ul += "<th>" + ret[i][11] + "</a></th>";
                ul += "</tr>";
            }
            $("#bwcb_tbody").append(ul);
            $('#bwcb_table').trigger("create");
        }

        function hgcb() {
            var ret = <%=hgcb%>
            $("#hgcb_tbody").empty();
            document.getElementById("hgcb_title").innerText = "当前已做计划海港船舶共" + ret.length + "条";
            var i;
            var ul = "";
            for (i = 0; i < ret.length; ++i) {
                ul += "<tr>";
                ul += "<th>" + ret[i][1] + "</a></th>";
                ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][2] + "</a></th>";
                ul += "<th>" + ret[i][3] + "</a></th>";
                ul += "<th>" + ret[i][4] + "</a></th>";
                ul += "<th>" + ret[i][5] + "</a></th>";
                ul += "<th>" + ret[i][6] + "</a></th>";
                ul += "<th>" + ret[i][7] + "</a></th>";
                ul += "<th>" + ret[i][8] + "</a></th>";
                ul += "<th>" + ret[i][9] + "</a></th>";
                ul += "<th>" + ret[i][10] + "</a></th>";
                ul += "</tr>";
            }
            $("#hgcb_tbody").append(ul);
            $('#hgcb_table').trigger("create");
        }

        function hgyb() {
            var ret = <%=hgyb%>
                    $("#hgyb_tbody").empty();
                    document.getElementById("hgyb_title").innerText = "当前已做计划海港移泊共" + ret.length + "条";
                    var i;
                    var ul = "";
                    for (i = 0; i < ret.length; ++i) {
                        ul += "<tr>";
                        ul += "<th>" + ret[i][1] + "</a></th>";
                        ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][2] + "</a></th>";
                        ul += "<th>" + ret[i][3] + "</a></th>";
                        ul += "<th>" + ret[i][4] + "</a></th>";
                        ul += "<th>" + ret[i][5] + "</a></th>";
                        ul += "<th>" + ret[i][6] + "</a></th>";
                        ul += "<th>" + ret[i][7] + "</a></th>";
                        ul += "</tr>";
                    }
                    $("#hgyb_tbody").append(ul);
                    $('#hgyb_table').trigger("create");
                }

        function ghcb() {
            var ret = <%=ghcb%>
                    $("#ghcb_tbody").empty();
                    document.getElementById("ghcb_title").innerText = "当前已做计划灌河船舶共" + ret.length + "条";
                    var i;
                    var ul = "";
                    for (i = 0; i < ret.length; ++i) {
                        ul += "<tr>";
                        ul += "<th>" + ret[i][1] + "</a></th>";
                        ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][2] + "</a></th>";
                        ul += "<th>" + ret[i][3] + "</a></th>";
                        ul += "<th>" + ret[i][4] + "</a></th>";
                        ul += "<th>" + ret[i][5] + "</a></th>";
                        ul += "<th>" + ret[i][6] + "</a></th>";
                        ul += "<th>" + ret[i][7] + "</a></th>";
                        ul += "<th>" + ret[i][8] + "</a></th>";
                        ul += "<th>" + ret[i][9] + "</a></th>";
                        ul += "<th>" + ret[i][10] + "</a></th>";
                        ul += "</tr>";
                    }
                    $("#ghcb_tbody").append(ul);
                    $('#ghcb_table').trigger("create");
        }

        function ghyb() {
            var ret = <%=ghyb%>
                    $("#ghyb_tbody").empty();
                    document.getElementById("ghyb_title").innerText = "当前已做计划灌河移泊共" + ret.length + "条";
                    var i;
                    var ul = "";
                    for (i = 0; i < ret.length; ++i) {
                        ul += "<tr>";
                        ul += "<th>" + ret[i][1] + "</a></th>";
                        ul += "<th><a href=\"http://www.boea.com.cn/SASP.aspx?id=" + ret[i][0] + "\" data-rel=\"external\" target=\"_blank\">" + ret[i][2] + "</a></th>";
                        ul += "<th>" + ret[i][3] + "</a></th>";
                        ul += "<th>" + ret[i][4] + "</a></th>";
                        ul += "<th>" + ret[i][5] + "</a></th>";
                        ul += "<th>" + ret[i][6] + "</a></th>";
                        ul += "<th>" + ret[i][7] + "</a></th>";
                        ul += "</tr>";
                    }
                    $("#ghyb_tbody").append(ul);
                    $('#ghyb_table').trigger("create");
                }
        </script>
</head>
<body onload="load()">
<div data-role="tabs">
    <div data-role="navbar" data-grid="c">
        <ul>
            <li><a href="#ybcb" class="ui-btn-active">预报船舶</a></li>
            <li><a href="#qbcb">确报船舶</a></li>
            <li><a href="#mdcb">锚地船舶</a></li>
            <li><a href="#bwcb">泊位船舶</a></li>
            <li><a href="#hgcb">海港船舶</a></li>
            <li><a href="#hgyb">海港移泊</a></li>
            <li><a href="#ghcb">灌河船舶</a></li>
            <li><a href="#ghyb">灌河移泊</a></li>
        </ul>
    </div>

    <div id="ybcb">
        <div data-role="header">
            <h1 id="ybcb_title"></h1>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="ybcb_table">
  <thead>
    <tr>  										
      <th data-priority="1">中文船名</th>
      <th data-priority="2">国籍</th>
      <th data-priority="3">航次</th>
      <th data-priority="4">内外贸</th>
      <th data-priority="5">吃水</th>
      <th data-priority="6">卸货名称</th>
      <th data-priority="7">卸货数量</th>
      <th data-priority="8">装货名称</th>
      <th data-priority="9">装货数量</th>
      <th data-priority="10">预计到港时间</th>
      <th data-priority="11">船代</th>
    </tr>
  </thead>
  <tbody id="ybcb_tbody">
  </tbody>
</table> 
    </div>

    <div id="qbcb">
        <div data-role="header">
            <h1 id="qbcb_title"></h1>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="qbcb_table">
  <thead>
    <tr>  										
      <th data-priority="1">中文船名</th>
      <th data-priority="2">国籍</th>
      <th data-priority="3">航次</th>
      <th data-priority="4">内外贸</th>
      <th data-priority="5">吃水</th>
      <th data-priority="6">卸货名称</th>
      <th data-priority="7">卸货数量</th>
      <th data-priority="8">装货名称</th>
      <th data-priority="9">装货数量</th>
      <th data-priority="10">确报时间</th>
      <th data-priority="11">船代</th>
    </tr>
  </thead>
  <tbody id="qbcb_tbody">
  </tbody>
</table> 
    </div>

    <div id="mdcb">
<div data-role="header">
            <h1 id="mdcb_title"></h1>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="mdcb_table">
  <thead>
    <tr>  										
      <th data-priority="1">中文船名</th>
      <th data-priority="2">国籍</th>
      <th data-priority="3">航次</th>
      <th data-priority="4">内外贸</th>
      <th data-priority="5">吃水</th>
      <th data-priority="6">卸货名称</th>
      <th data-priority="7">卸货数量</th>
      <th data-priority="8">装货名称</th>
      <th data-priority="9">装货数量</th>
      <th data-priority="10">抵锚时间</th>
      <th data-priority="11">预定泊位</th>
      <th data-priority="12">船代</th>
    </tr>
  </thead>
  <tbody id="mdcb_tbody">
  </tbody>
</table> 
    </div>

    <div id="bwcb">
<div data-role="header">
            <h1 id="bwcb_title"></h1>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="bwcb_table">
  <thead>
    <tr>  		
      <th data-priority="1">泊位</th>								
      <th data-priority="2">中文船名</th>
      <th data-priority="3">航次</th>
      <th data-priority="4">卸货名称</th>
      <th data-priority="5">卸货数量</th>
      <th data-priority="6">装货名称</th>
      <th data-priority="7">装货数量</th>
      <th data-priority="8">靠泊时间</th>
      <th data-priority="9">状态</th>
      <th data-priority="10">船代</th>
      <th data-priority="11">作业公司</th>
    </tr>
  </thead>
  <tbody id="bwcb_tbody">
  </tbody>
</table> 
    </div>

    <div id="hgcb">
<div data-role="header">
            <h1 id="hgcb_title"></h1>
            <a class="ui-btn-right" id="jhsj"></a>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="hgcb_table">
  <thead>
    <tr>  		
      <th data-priority="1">泊位</th>								
      <th data-priority="2">中文船名</th>
      <th data-priority="3">国籍</th>
      <th data-priority="4">船长/进/出吃水</th>
      <th data-priority="5">计划进港时间</th>
      <th data-priority="6">计划出港时间</th>
      <th data-priority="7">船代</th>
      <th data-priority="8">性质</th>
      <th data-priority="9">引水</th>
      <th data-priority="10">备注</th>
    </tr>
  </thead>
  <tbody id="hgcb_tbody">
  </tbody>
</table> 
    </div>

    <div id="hgyb">
<div data-role="header">
            <h1 id="hgyb_title"></h1>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="hgyb_table">
  <thead>
    <tr>  		
      <th data-priority="1">当前泊位</th>								
      <th data-priority="2">中文船名</th>
      <th data-priority="3">计划移泊时间</th>
      <th data-priority="4">计划移泊泊位</th>
      <th data-priority="5">移泊后离港时间</th>
      <th data-priority="6">性质</th>
      <th data-priority="7">备注</th>
    </tr>
  </thead>
  <tbody id="hgyb_tbody">
  </tbody>
</table> 
    </div>

    <div id="ghcb">
<div data-role="header">
            <h1 id="ghcb_title"></h1>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="ghcb_table">
  <thead>
    <tr>  		
      <th data-priority="1">泊位</th>								
      <th data-priority="2">中文船名</th>
      <th data-priority="3">国籍</th>
      <th data-priority="4">船长/进/出吃水</th>
      <th data-priority="5">计划进港时间</th>
      <th data-priority="6">计划出港时间</th>
      <th data-priority="7">船代</th>
      <th data-priority="8">性质</th>
      <th data-priority="9">引水</th>
      <th data-priority="10">备注</th>
    </tr>
  </thead>
  <tbody id="ghcb_tbody">
  </tbody>
</table> 
    </div>

    <div id="ghyb">
<div data-role="header">
            <h1 id="ghyb_title"></h1>
        </div>
        <table data-role="table" data-mode="reflow" class="movie-list ui-responsive" id="ghyb_table">
  <thead>
    <tr>  		
      <th data-priority="1">当前泊位</th>								
      <th data-priority="2">中文船名</th>
      <th data-priority="3">计划移泊时间</th>
      <th data-priority="4">计划移泊泊位</th>
      <th data-priority="5">移泊后离港时间</th>
      <th data-priority="6">性质</th>
      <th data-priority="7">备注</th>
    </tr>
  </thead>
  <tbody id="ghyb_tbody">
  </tbody>
</table> 
    </div>

</div>
    <div data-role="footer" data-position="fixed">
		<h1 style="COLOR:gray; font-size:9pt; line-height:150%">连云港外轮理货有限公司 版权所有 <br/>本网站仅供公司内部使用 技术支持请联系公司办公室</h1>
</div>
</body>
</html>
