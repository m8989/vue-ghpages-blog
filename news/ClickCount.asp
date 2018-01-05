<%
conn.execute "UPDATE " & table & " SET   Click_Count=Click_Count +1  WHERE newsID in (" &  newsID & ")"
'记录点击数，每次加1！
%>


