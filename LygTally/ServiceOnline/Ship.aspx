<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ship.aspx.cs" Inherits="LygTally.ServiceOnline.Ship" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
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

    <!-- 第一栏开始 -->
    <div class="dk-inner-bg">
        <div class="container">
            <br />
            <div class="col-md-37">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-flag-o red"></i><strong>集装箱船舶</strong></h2>
                        <div class="panel-actions">
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                                <tr>
                                    <th>泊位</th>
                                    <th>中文船名/航次</th>
                                    <th>进出口</th>
                                    <th>集装箱计划数</th>
                                    <th>集装箱完成数</th>
                                    <th>集装箱当前余数</th>
                                    <th>倒舱</th>
                                    <th>开工时间</th>
                                    <th>理货部门</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="JZX" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# DataBinder.Eval(Container, "DataItem.BERTHNO")%> <%# DataBinder.Eval(Container, "DataItem.BERTH_POSITION")%></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.CHI_VESSEL")%>/<%# DataBinder.Eval(Container, "DataItem.VOYAGE")%></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.INOUTPORT_NAME")%></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.CON_PLAN")%></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.CON_FINISH")%></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.REMAIN_CON") %></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.MOVEAMOUNT")%></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.WORKTIME_BEGIN")%></td>
                                            <td><%# DataBinder.Eval(Container, "DataItem.DEPT_NAME")%></td>
                                        </tr>
                                    </ItemTemplate>
                                    <HeaderTemplate></HeaderTemplate>
                                    <FooterTemplate></FooterTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!--/col-->
            <!-- 件杂货船舶 -->

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2><i class="fa fa-flag-o red"></i><strong>件杂货船舶</strong></h2>
                    <div class="panel-actions">
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table bootstrap-datatable countries">
                        <thead>
                            <tr>
                                <th>泊位</th>
                                <th>中文船名/航次</th>
                                <th>进出口</th>
                                <th>计划数</th>
                                <th>完成数</th>
                                <th>当前余吨</th>
                                <th>开工时间</th>
                                <th>理货部门</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="JZH" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td><%# DataBinder.Eval(Container, "DataItem.BERTHNO")%> <%# DataBinder.Eval(Container, "DataItem.BERTH_POSITION")%></td>
                                        <td><%# DataBinder.Eval(Container, "DataItem.CHI_VESSEL")%>/<%# DataBinder.Eval(Container, "DataItem.VOYAGE")%></td>
                                        <td><%# DataBinder.Eval(Container, "DataItem.INOUTPORT_NAME")%></td>
                                        <td><%# DataBinder.Eval(Container, "DataItem.PLAN_TONS")%></td>
                                        <td><%# DataBinder.Eval(Container, "DataItem.FINISH_TONS")%></td>
                                        <td><%# DataBinder.Eval(Container, "DataItem.REMAIN_TONS") %></td>
                                        <td><%# DataBinder.Eval(Container, "DataItem.WORKTIME_BEGIN")%></td>
                                        <td><%# DataBinder.Eval(Container, "DataItem.DEPT_NAME")%></td>
                                    </tr>
                                </ItemTemplate>
                                <HeaderTemplate></HeaderTemplate>
                                <FooterTemplate></FooterTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
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
