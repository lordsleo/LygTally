<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="LygTally.News.Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"  lang="zh-CN">
<head runat="server">

    <title>连云港外轮理货有限公司-新闻</title>
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

    <style type="text/css">
        @media (max-width:990px) {
            img {
                width: 100%;
            }
        }
        </style>

    <!-- 第一栏开始 -->
    <div class="dk-inner-bg">
        <div class="container">
            <div class="col-md-37">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="5"></td>
                    </tr>
                    <tr>
                        <td height="40" align="center" style="font-size: 25px; font-family: '黑体'; line-height: 30px;">
                            <asp:Label ID="LabBT" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td bgcolor="#CCCCCC" height="1"></td>
                    </tr>
                    <tr>
                        <td height="25" align="center" style="text-align: center">发布日期：<asp:Label ID="Labtime" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;来源：LYGTALLY<%--<asp:Label ID="Labowner" runat="server"></asp:Label>--%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                </table>
                <table cellspacing='0' cellpadding='0' width='100%'>
                    <tbody>

                        <tr valign="top">
                            <td class="font_14">
                                <asp:Label ID="LabMessage" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>

                            <td height="10px"></td>
                        </tr>

                        <tr>
                            <td class="font_12">
                                <asp:Label ID="Labfj" runat="server"></asp:Label>


                            </td>
                        </tr>
                        <tr valign="top">
                            <td height="25" align="right"></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- 第一栏结束 -->

    <!-- 尾部 -->
    <!--#include file="../Frame/footer.html"-->
    <!-- 尾部结束 -->

</body>
</html>
