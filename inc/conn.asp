<!-- #INCLUDE FILE="config.asp" -->
<%Response.Expires=-1 %>
<%
'下面一行语句server.mappath("/jiaoyou/database/jiaoyou.mdb")中的双引号内是数据库所在路径和文件名
MM_conn_STRING = "driver={Microsoft Access Driver (*.mdb)};dbq=" & server.mappath("data.mdb")&";uid=admin;pwd="
set conn=server.CreateObject("ADODB.CONNECTION")
conn.Open MM_conn_STRING
%>
