<!-- #INCLUDE FILE="config.asp" -->
<%Response.Expires=-1 %>
<%
'����һ�����server.mappath("/jiaoyou/database/jiaoyou.mdb")�е�˫�����������ݿ�����·�����ļ���
MM_conn_STRING = "driver={Microsoft Access Driver (*.mdb)};dbq=" & server.mappath("data.mdb")&";uid=admin;pwd="
set conn=server.CreateObject("ADODB.CONNECTION")
conn.Open MM_conn_STRING
%>
