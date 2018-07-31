<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LygTally.CompanyInfo.Contact" %>

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
                <div align="center">
                    <asp:Label ID="LabMessage" runat="server" style="color: black;text-align:center;width=100%"></asp:Label>
                    </div>
            </div>
        </div>
    </div>
    <!-- 第一栏结束 -->

    <!-- 尾部 -->
    <!--#include file="../Frame/footer.html"-->
    <!-- 尾部结束 -->

</body>
</html>
