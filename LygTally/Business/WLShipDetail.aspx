<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WLShipDetail.aspx.cs" Inherits="LygTally.Business.WLShipDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../Jquery/jquery-2.1.4.min.js"></script>
    <link href="../Jquery/jquery.mobile-1.4.5.css" rel="stylesheet" />
    <script src="../Jquery/jquery.mobile-1.4.5.js"></script>
</head>
<body>
<TABLE id="Table1" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<TR>
					<TD width="40" height="20">&nbsp;
					</TD>
					<TD height="20">&nbsp;&nbsp;
					</TD>
					<TD width="20" height="20"><FONT face="宋体"></FONT></TD>
				</TR>
				<TR>
					<TD width="40"><FONT face="宋体">&nbsp;&nbsp; </FONT>
					</TD>
					<TD>
						<FONT face="宋体">
							
							<span id="tishi"></span>
							</FONT></TD>
					<TD width="20"></TD>
				</TR>
				<TR>
					<TD width="40"></TD>
					<TD bgColor="#efecd8">
						<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<TR>
								<TD width="50">
									<P align="center"><FONT face="宋体">航</FONT></P>
									<P align="center"><FONT face="宋体">次</FONT></P>
								</TD>
								<TD><FONT face="宋体">
										<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" border="0">
											<TR>
												<TD width="16%">&nbsp;&nbsp;
												</TD>
												<TD width="16%"></TD>
												<TD width="16%"></TD>
												<TD width="16%"></TD>
												<TD width="16%"></TD>
												<TD width="16%"></TD>
											</TR>
											<TR>
												<TD width="16%">中文船名</TD>
												<TD width="16%"><%=CHI_vessel %>
													<span id="zwcm"></span></TD>
												<TD width="16%">英文船名</TD>
												<TD width="16%">
													<span id="ywcm"></span></TD>
												<TD width="16%">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 质</TD>
												<TD width="16%">
													<span id="Drophcxz"></span></TD>
											</TR>
											<TR>
												<TD width="16%">进口航次</TD>
												<TD width="16%">
													<span id="txtjkhc"></span></TD>
												<TD width="16%">出口航次</TD>
												<TD width="16%">
													<span id="txtckhc"></span></TD>
												<TD width="16%">内&nbsp;&nbsp; 外&nbsp; 贸</TD>
												<TD width="16%">
													<span id="Drop_trade">内贸</span></TD>
											</TR>
											<TR>
												<TD width="16%">来&nbsp;&nbsp; 港</TD>
												<TD width="16%">
													<span id="txtlg"></span></TD>
												<TD width="16%">去&nbsp;&nbsp; 港</TD>
												<TD width="16%">
													<span id="txtqg"></span></TD>
												<TD width="16%">预计到港时间</TD>
												<TD width="16%">
													<span id="txtyjdg"></span></TD>
											</TR>
											<TR>
												<TD width="16%">进口吃水</TD>
												<TD width="16%">
													<span id="txtjkcs"></span></TD>
												<TD width="16%">出口吃水</TD>
												<TD width="16%">
													<span id="txtckcs"></span></TD>
												<TD width="16%">速 / 滞&nbsp;&nbsp;费</TD>
												<TD width="16%">
													<span id="txtszf"></span></TD>
											</TR>
										</TABLE>
									</FONT>
								</TD>
							</TR>
							<TR>
								<TD width="50" bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
								<TD bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
							</TR>
							<TR>
								<TD vAlign="middle" width="50">
									<P align="center"><FONT face="宋体">船</FONT><FONT face="宋体">舶</FONT></P>
									<P align="center"><FONT face="宋体">概</FONT><FONT face="宋体">况</FONT></P>
								</TD>
								<TD vAlign="top"><FONT face="宋体">
										<TABLE id="Table6" cellSpacing="0" cellPadding="0" width="100%" border="0">
											<TR>
												<TD width="16%">国&nbsp;&nbsp;&nbsp; 籍</TD>
												<TD width="16%">
													<span id="gj"></span></TD>
												<TD width="16%">呼&nbsp;&nbsp;&nbsp; 号</TD>
												<TD width="16%">
													<span id="hh"></span></TD>
												<TD width="16%">航&nbsp;&nbsp;&nbsp; 速</TD>
												<TD width="16%">
													<span id="hs"></span></TD>
											</TR>
											<TR>
												<TD width="16%">总&nbsp;&nbsp;&nbsp; 吨</TD>
												<TD width="16%">
													<span id="zd"></span></TD>
												<TD width="16%">净&nbsp;&nbsp;&nbsp; 吨</TD>
												<TD width="16%">
													<span id="jd"></span></TD>
												<TD width="16%">载 重 吨</TD>
												<TD width="16%">
													<span id="zzd"></span></TD>
											</TR>
											<TR>
												<TD width="16%">长&nbsp;&nbsp;&nbsp; 度</TD>
												<TD width="16%">
													<span id="cd"></span></TD>
												<TD width="16%">宽&nbsp;&nbsp;&nbsp; 度</TD>
												<TD width="16%">
													<span id="kd"></span></TD>
												<TD width="16%">公 分 吨</TD>
												<TD width="16%">
													<span id="gfd"></span></TD>
											</TR>
											<TR>
												<TD width="16%">船舶类型</TD>
												<TD width="16%">
													<span id="cblx"></span></TD>
												<TD width="16%">舱 口 数</TD>
												<TD width="16%">
													<span id="cks"></span></TD>
												<TD width="16%">最大吃水</TD>
												<TD width="16%">
													<span id="zdcs"></span></TD>
											</TR>
											<TR>
												<TD width="16%">船 公 司</TD>
												<TD width="16%">
													<span id="cgs"></span></TD>
												<TD width="16%">建造日期</TD>
												<TD width="16%">
													<span id="jzrq"></span></TD>
												<TD width="16%"></TD>
												<TD width="16%"></TD>
											</TR>
										</TABLE>
									</FONT>
								</TD>
							</TR>
							<TR>
								<TD vAlign="middle" width="50" bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
								<TD vAlign="top" bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
							</TR>
							<TR>
								<TD width="50">
									<P align="center"><FONT face="宋体">备 注</FONT></P>
								</TD>
								<TD>
									<span id="txtbz"></span></TD>
							</TR>
							<TR>
								<TD width="50" bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
								<TD bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
							</TR>
							<TR>
								<TD width="50">
									<P align="center"><FONT face="宋体">引 水</FONT></P>
								</TD>
								<TD>
									<span id="Dropys">需要</span></TD>
							</TR>
							<TR>
								<TD width="50" bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
								<TD bgColor="#d1d1d1" height="5"><FONT face="宋体"></FONT></TD>
							</TR>
							<TR>
								<TD width="50">
									<P align="center"><FONT face="宋体" size="3">载货<BR>
											信息</FONT></P>
								</TD>
								<TD vAlign="top"><FONT face="宋体">
										<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="100%" border="0">
											<TR>
												<TD width="16%">
													<P align="center"><FONT size="3">装货名称</FONT></P>
												</TD>
												<TD width="16%">
													<P align="center"><FONT size="3">
															<span id="Lab_Zhmc" style="font-size:Small;"></span></FONT></P>
												</TD>
												<TD width="16%">
													<P align="center"><FONT size="3">装货数量</FONT></P>
												</TD>
												<TD width="16%">
													<P align="center"><FONT size="3">
															<span id="Lab_Zhsl" style="font-size:Small;"></span></FONT></P>
												</TD>
												<TD width="16%">
													<P align="center"><FONT size="3"></FONT>&nbsp;</P>
												</TD>
												<TD>
													<P align="center"><FONT size="3"></FONT>&nbsp;</P>
												</TD>
											</TR>
											<TR>
												<TD width="16%">
													<P align="center"><FONT size="3">卸货名称</FONT></P>
												</TD>
												<TD width="16%">
													<P align="center"><FONT size="3">
															<span id="Lab_Xhmc" style="font-size:Small;"></span></FONT></P>
												</TD>
												<TD width="16%">
													<P align="center"><FONT size="3">卸货数量</FONT></P>
												</TD>
												<TD width="16%">
													<P align="center">
														<span id="Lab_Xhsl" style="font-size:Small;"></span></P>
												</TD>
												<TD width="16%">
													<P align="center">&nbsp;</P>
												</TD>
												<TD>
													<P align="center">&nbsp;</P>
												</TD>
											</TR>
										</TABLE>
									</FONT>
								</TD>
							</TR>
							<TR>
								<TD width="50" bgColor="#d1d1d1" height="5"></TD>
								<TD bgColor="#d1d1d1" height="5"><FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;</FONT></TD>
							</TR>
							<TR>
								<TD width="50"></TD>
								<TD vAlign="top">
									<span id="Labmsg"></span></TD>
							</TR>
						</TABLE>
					</TD>
					<TD width="20"></TD>
				</TR>
				<TR>
					<TD width="40"></TD>
					<TD><FONT face="宋体"></FONT></TD>
					<TD width="20"></TD>
				</TR>
			</TABLE>
</body>
</html>
