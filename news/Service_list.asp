<!--#include file="Service_list.vb.asp" -->
<HTML><HEAD><TITLE><%=This_Site_Name%></TITLE>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<META content=no-cache http-equiv=Pragma>
<link rel="stylesheet" href="../inc/style.css" type="text/css">
</HEAD>
<body bgcolor=#FFFFFF leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>

<%sub ShowMain()
	call show_list()
End Sub %>
<!--#include file="incLeftRight_Service.asp"-->
</BODY></HTML>
<% dbclose() %>
