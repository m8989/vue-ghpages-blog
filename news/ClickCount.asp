<%
conn.execute "UPDATE " & table & " SET   Click_Count=Click_Count +1  WHERE newsID in (" &  newsID & ")"
'��¼�������ÿ�μ�1��
%>


