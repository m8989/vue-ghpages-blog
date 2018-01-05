<%
public function OutOptionList3(conn,tabel,valueF,TextF,value,where)   '从数据库中提取内容生成下拉菜单
                                                    'conn 为数据库联接 table为表名  style下接菜单样式
	'调用方式 call OutOptionList(conn,"TouSu_Site","ID","ID","3","")
	dim re
	dim sql
	dim selected
	set re=server.CreateObject("ADODB.RECORDSET")
	sql = "SELECT * FROM " & tabel & where & " ORDER BY "& valueF&","&textF 
	re.Open sql,conn
	'Response.Write ("<select " & style & ">" & vbCrLf )
	while re.EOF<>true
		spa=""
	        for j=6 to len(re(valueF)) step 3 
                  spa= spa &  "│"
                next 
		if trim(re(valueF))=trim(value) then
			selected=" selected "
		else
			selected=" "
		end if
		response.write( vbTab & "<option" & selected & "value=""" & re(valueF) & """>" & spa &"├"& re(textF) & "</option>" & vbCrLf )
		re.MoveNext	
	wend
	'Response.Write ("</select>" & vbCrlf)
	set re=nothing	
end function
		'spa=""
	        'for j=6 to len(re(valueF)) step 3 
                '  spa= spa &  " "
                'next 

%>

