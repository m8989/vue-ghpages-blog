<%
sub getAbout(about)
	Response.Write getAboutBody(about)
end sub
function getAboutBody(about)
	'�����޸�
	if about="" then
		if(request("about")<>"") then
			about=Trim(request("about")&" ")
		else
			About=AboutType(0) 'Ĭ��ֵ
		end if
	end if
	sql="select top 1 * from News_Info where n_Title ='"& About &"'"
	'����
	'Response.Write sql & " <===ok!"
	'Response.End()
	Set rs1= Server.CreateObject("ADODB.Recordset")
	rs1.open sql,conn
	If  Not rs1.EOF then
		About_newsID=rs1("newsID")
		About_typeID=rs1("typeID")
		About_n_Title=rs1("n_Title")
		About_n_body=rs1("n_body")
		If trim(About_n_body&" ")="" Then 
			About_n_body="["&About &"] ������ݿ���ͨ����̨�޸����� "
		End if
	else	'���״̬
		About_n_Title=About '������������
		About_n_body= "["&About &"] ������ݿ���ͨ����̨�޸ġ� "
	end if
	'Rs1.Close()
	'Set Rs1 = Nothing

	getAboutBody= About_n_body
End function
%>
