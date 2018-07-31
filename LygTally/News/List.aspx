<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="LygTally.News.List" %>

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
    <!--#include file="../Frame/bannerNews.html"-->
    <!-- banner结束 -->

    <!-- 内容开始 -->
    <div class="dk-inner-bg">
        <div class="container">
            <div class="row dk-news">
                <asp:Repeater ID="CompanyNewsDetail" runat="server">
                    <ItemTemplate>
                        <div class="item clearfix">
                            <div class="col-sm-22 col-md-22 left">

                                <span class="date"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy.MM.dd") %></span>
                                <strong><a href="Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></strong>
                                <p><%# ClearHtml(System.Web.HttpUtility.UrlDecode(DataBinder.Eval(Container, "DataItem.message").ToString()))%>"></p>
                                <a class="btn btn-sm" href="Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>"><span class="dk-zicon">阅读更多</span></a>
                            </div>
                            <div class="col-sm-14 col-md-14 right">
                                <a href="Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>">
                                    <img src="<%# GetHtmlimageUrlList(System.Web.HttpUtility.UrlDecode(DataBinder.Eval(Container, "DataItem.message").ToString()))%>" style="width:100%"></a>
                            </div>
                        </div>
                    </ItemTemplate>
                    <HeaderTemplate></HeaderTemplate>
                    <FooterTemplate></FooterTemplate>
                </asp:Repeater>
                <nav class="dk-pagenav">
                    <ul class="pagination">
                        <li><a href='CompanyNews.aspx?page=<%=Convert.ToInt16(Request.Params["page"])-1 %>'>&lt;</a></li>
                        <li class="active"><a href="#"><%=Request.Params["page"] %><span class="sr-only">(current)</span></a></li>
                        <li><a href='CompanyNews.aspx?page=<%=Convert.ToInt16(Request.Params["page"])+1 %>'>&gt;</a></li>
                        <li><a style="width: 50px">共<%=count %>页</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- 内容结束 -->
        <!-- 尾部 -->
        <!--#include file="../Frame/footer.html"-->
        <!-- 尾部结束 -->
</body>
</html>
