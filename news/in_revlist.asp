<%	
set revrs=Server.CreateObject("ADODB.RECORDSET")
revrs.CursorType = 3   '指针类型，  默认指计不能读出TXT类型字段
revrs.Open "select * from " & table2 & " where TypeGID="& TypeGID ,conn
%>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
 <% if revrs.RecordCount > 0  then
			while not revrs.EOF 
	%>
      <tr> 
        <td width="20"><input name="TypeID" type="checkbox"  value="<% =revrs("TypeID") %>" ></td>
        <td width="30" align="center"><% =revrs("TypeID") %></td>
        <td><% =revrs("Type_Name") %></td>
      </tr>
<% revrs.MoveNext
   	wend 
end if
revRs.Close()
Set revRs = Nothing
%>
  </table>