<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LygTally._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>连云港外轮理货有限公司</title>
    <!-- head -->
    <!--#include file="/Frame/head.html"-->
    <!-- head结束 -->
</head>
<script type="text/javascript">
    if (navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.split(";")[1].replace(/[ ]/g, "") == "MSIE6.0" || navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.split(";")[1].replace(/[ ]/g, "") == "MSIE7.0" || navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.split(";")[1].replace(/[ ]/g, "") == "MSIE8.0" || navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.split(";")[1].replace(/[ ]/g, "") == "MSIE9.0") {
        window.location.href = "/old/index.aspx";
    }
</script>
<body>

    <!-- 头部 -->
    <!--#include file="/Frame/top.html"-->
    <!-- 头部结束 -->

    <!-- banner -->
    <!--#include file="/Frame/banner.html"-->
    <!-- banner结束 -->

    <!-- 第一栏开始 -->
    <div class="dk-news-index" style="background: #007ae2 url(images/bg-1.jpg) center top no-repeat">
        <div class="container">
            <div class="col-md-17">
                <h3 class="dk-title-index">公司新闻<span>NEWS</span></h3>
                <div class="dk-news-index-first">
                    <asp:Repeater ID="CompanyNewsFirst" runat="server">
                        <ItemTemplate>
                            <div class="dk-t"><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem[0]")%>"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></div>
                            <p class="dk-cnt"><%# ClearHtml(System.Web.HttpUtility.UrlDecode(DataBinder.Eval(Container, "DataItem.message").ToString()))%></p>
                            <div class="text-right"><a class="dk-more" href="./News/CompanyNews.aspx?page=1">阅读更多</a></div>
                            <div class="dk-date"><span><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("dd") %></span><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy年MM月") %></div>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </div>
                <ul>
                    <asp:Repeater ID="CompanyNews" runat="server">
                        <ItemTemplate>
                            <li><span><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="col-md-19">
                <div class="carousel slide dk-slide-newspic" id="carousel-index-news" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="CompanyNewsFirstimage" runat="server">
                            <ItemTemplate>
                                <div class="item active">
                                    <a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>">
                                        <img src="<%# GetHtmlimageUrlList(System.Web.HttpUtility.UrlDecode(DataBinder.Eval(Container, "DataItem.message").ToString()))%>">
                                        <div class="dk-cnt">
                                            <%# DataBinder.Eval(Container, "DataItem.topic")%>
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                            <HeaderTemplate></HeaderTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                        <asp:Repeater ID="CompanyNewsimage" runat="server">
                            <ItemTemplate>
                                <div class="item">
                                    <a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>">
                                        <img src="<%# GetHtmlimageUrlList(System.Web.HttpUtility.UrlDecode(DataBinder.Eval(Container, "DataItem.message").ToString()))%>">
                                        <div class="dk-cnt">
                                            <%# DataBinder.Eval(Container, "DataItem.topic")%>
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                            <HeaderTemplate></HeaderTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="dk-btn-slide">
                        <a class="dk-btn-slide-left" href="http://www.suning.com.cn/#carousel-index-news" role="button" data-slide="prev">
                            <span class="dk-arrow dk-arrow-slide-left"></span>
                        </a>
                        <a class="dk-btn-slide-right" href="http://www.suning.com.cn/#carousel-index-news" role="button" data-slide="next">
                            <span class="dk-arrow dk-arrow-slide-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 第一栏结束 -->

    <!-- 第二栏开始 -->
    <div class="dk-news-index" style="background-color: whitesmoke;">
        <div class="container">
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">外理状元</h3>
                <img src="Images/ct1.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="WLZY" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">外理亮点</h3>
                <img src="Images/ct2.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="WLLD" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <div class="dk-news-index" style="background-color: lightgray;">
        <div class="container">
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">工作感悟</h3>
                <img src="Images/ct3.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="GZGW" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">行业资讯</h3>
                <img src="Images/ct4.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="HYZX" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <div class="dk-news-index" style="background-color: whitesmoke;">
        <div class="container">
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">学习资料</h3>
                <img src="Images/ct5.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="XXZL" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">我的作品</h3>
                <img src="Images/ct6.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="WDZP" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <div class="dk-news-index" style="background-color: lightgray;">
        <div class="container">
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">管理启示</h3>
                <img src="Images/ct7.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="GLQS" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
            <div class="col-md-18">
                <h3 class="dk-title-index" style="color: black">安全警示</h3>
                <img src="Images/ct8.JPG" style="width: 100%" />
                <div class="dk-news-index-first"></div>
                <ul>
                    <asp:Repeater ID="AQJS" runat="server">
                        <ItemTemplate>
                            <li><span style="color: black"><%# Convert.ToDateTime(DataBinder.Eval(Container, "DataItem.post_time")).ToString("yyyy-MM-dd") %></span><a href="/News/Detail.aspx?id=<%# DataBinder.Eval(Container, "DataItem.id")%>" style="color: black"><%# DataBinder.Eval(Container, "DataItem.topic")%></a></li>
                        </ItemTemplate>
                        <HeaderTemplate></HeaderTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </div>
    <!-- 第二栏结束 -->

    <!-- 尾部 -->
    <!--#include file="/Frame/footer.html"-->
    <!-- 尾部结束 -->



</body>
</html>
