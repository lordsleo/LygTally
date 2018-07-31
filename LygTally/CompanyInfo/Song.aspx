<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Song.aspx.cs" Inherits="LygTally.CompanyInfo.Song" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head runat="server">

    <title>连云港外轮理货有限公司-<%=tt %></title>
    <!-- head -->
    <!--#include file="../Frame/head.html"-->
    <!-- head结束 -->
</head>
<body>
    <!-- 头部 -->
    <!--#include file="../Frame/top.html"-->
    <!-- 头部结束 -->

    <!-- banner -->
    <!--#include file="../Frame/bannerWithTitle.html"-->
    <!-- banner结束 -->

    <!-- 第一栏开始 -->
    <div class="dk-news-index" style="background-color: whitesmoke">
        <div class="container">
            <div class="col-md-36">
                <label style="color:black;font-size:xx-large">F大调</label>
                <audio src="../mp3/f.mp3" controls="controls" style="width:70%;height:5%"></audio><br/>
                <label style="color:black;font-size:xx-large">G大调</label>
                <audio src="../mp3/f.mp3" controls="controls" style="width:70%;height:5%"></audio><br/>
                <label style="color:black;font-size:xx-large">合成F</label>
                <audio src="../mp3/hf.mp3" controls="controls" style="width:70%;height:5%"></audio><br/>
                <label style="color:black;font-size:xx-large">合成G</label>
                <audio src="../mp3/hg.mp3" controls="controls" style="width:70%;height:5%"></audio><br/>
                <img src="../Images/gepu.jpg" style="width:100%"/>
            </div>
        </div>
    </div>
    <!-- 第一栏结束 -->

    <!-- 尾部 -->
    <!--#include file="../Frame/footer.html"-->
    <!-- 尾部结束 -->

</body>
</html>
