<%
sub ShowClassNewArticle(ArticleNum,TitleLen,ShowDateType)
	dim sqlNew,rsNew
	if ArticleNum>0 and ArticleNum<=100 then
		sqlNew="select top " & ArticleNum
	else
		sqlNew="select top 10 "
	end if
	'�����޸�
'	if intClassID=0 then
		'sqlNew=sqlNew & " A.ArticleID,A.Title,A.Author,A.UpdateTime,A.Hits,L.LayoutFileName from article A inner join Layout L on L.LayoutID=A.LayoutID where A.Deleted=False and A.Passed=True order by A.UpdateTime desc,A.ArticleID desc"
	     sqlNew=sqlNew & " newsID, TypeID, n_Title, n_body, Click_Count, Input_Time FROM News_Info where Is_Del=0 and  Is_check =-1 order by Input_Time desc;"
'	else
'		sqlNew=sqlNew & " A.ArticleID,A.Title,A.Author,A.UpdateTime,A.Hits,L.LayoutFileName from article A inner join Layout L on L.LayoutID=A.LayoutID where A.Deleted=False and A.Passed=True AND A.ClassID="&intClassID&"  order by A.UpdateTime desc,A.ArticleID desc"
'	end if
	'sqlNew=sqlNew & " A.ArticleID,A.Title,A.Author,A.UpdateTime,A.Hits,L.LayoutFileName from article A inner join Layout L on L.LayoutID=A.LayoutID where A.Deleted=False and A.Passed=True order by A.UpdateTime desc,A.ArticleID desc"
	Set rsNew= Server.CreateObject("ADODB.Recordset")
	rsNew.open sqlNew,conn,1,1
	if TitleLen<0 or TitleLen>255 then TitleLen=50
	if rsNew.bof and rsNew.eof then 
		response.write "û������" 
	else 
		do while not rsNew.eof
		
'--------------------------------��ֽЧ���޸Ŀ�ʼ--------
  response.write "<table border=0 width='100%' cellspacing=0 cellpadding=1 ><tr><td>"
  response.write "<img src='images/dianhao.jpg'><a href='news/show.asp?newsID="&rsNew("newsID")&"' target='_blank'>" & gotTopic(rsNew("n_Title"),TitleLen) & "</a>"

		if ShowDateType=1  or ShowDateType=2 then
			if datediff("d",rsNew("Input_Time"),date())<2 then
			   response.write("</td><td align='right' nowrap style='width:1%x'><font color=red>" & month(rsnew("Input_Time")) & "-" & day(rsnew("Input_Time")) & "</font>")
			else
			   response.write("</td><td align='right' nowrap style='width:1%'><font color=#999999>" & month(rsnew("Input_Time")) & "-" & day(rsnew("Input_Time")) & "</font>")
			end if
		end if

			
  response.write "</td></tr><tr><td colspan='2'><table width='100%' border=0 cellspacing=0 cellpadding=0><tr><td height=1 background='images/bg_dian.gif'></td></tr></table></td></tr></table>"      'CSS�������ߣ�����table�� style='height:1; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #cccccc'
'--------------------------------��ֽЧ���޸Ľ���--------
			
          rsNew.movenext     
		loop
	end if  
	rsNew.close
	set rsNew=nothing
end sub




'=================================================
'�鲨����ShowClassNewArticle2�޸�
'��������ShowContentNewArticle
'��  �ã���ʾ��������
'��  ����ContentLen   ----��������ַ�����һ������=����Ӣ���ַ�        
'		 intnewsID -----����ɣ�
'=================================================
sub ShowContentNewArticle(ContentLen,intnewsID)
	dim sqlNew,rsNew	
		sqlNew="select "	
	'�����޸�	
		'sqlNew=sqlNew & " A.ArticleID,A.Title,A.Author,A.Content,A.UpdateTime,A.Hits,L.LayoutFileName from article A inner join Layout L on L.LayoutID=A.LayoutID where A.Deleted=False and A.Passed=1 AND A.ClassID="&intClassID&"  order by A.UpdateTime desc,A.ArticleID desc"
	 sqlNew=sqlNew & "newsID, n_Title, n_body FROM News_Info where  newsID="&intnewsID&" AND Is_Del=0 And Is_check=-1;"
	'sqlNew=sqlNew & " A.ArticleID,A.Title,A.Author,A.UpdateTime,A.Hits,L.LayoutFileName from article A inner join Layout L on L.LayoutID=A.LayoutID where A.Deleted=False and A.Passed=1 order by A.UpdateTime desc,A.ArticleID desc"
	Set rsNew= Server.CreateObject("ADODB.Recordset")
	rsNew.open sqlNew,conn,1,1
	if ContentLen<0 or ContentLen>1000 then ContentLen=500
	if rsNew.bof and rsNew.eof then 
		response.write "û������" 
	else 
		do while not rsNew.eof
		
'--------------------------------��ֽЧ���޸Ŀ�ʼ--------
  response.write "<table border=0 width='100%' cellspacing=0 cellpadding=1 ><tr><td>"
  response.write "<a href='news/show.asp?newsID=" & rsNew("newsID") &"' target='_blank'>" & gotTopic(nohtml(rsNew("n_body")),ContentLen) & "</a>"
  response.write "</td></tr><tr><td colspan='2'><table width='100%' border=0 cellspacing=0 cellpadding=0><tr><td></td></tr></table></td></tr></table>"      'CSS�������ߣ�����table�� style='height:1; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #cccccc'
'--------------------------------��ֽЧ���޸Ľ���--------
			
          rsNew.movenext     
		loop
	end if  
	rsNew.close
	set rsNew=nothing
end sub


'**************************************************
'��������gotTopic
'��  �ã����ַ���������һ���������ַ���Ӣ����һ���ַ�
'��  ����str   ----ԭ�ַ���
'       strlen ----��ȡ����
'����ֵ����ȡ����ַ���
'**************************************************
function gotTopic(str,strlen)
	if str="" then
		gotTopic=""
		exit function
	end if
	dim l,t,c, i
	str=replace(replace(replace(replace(str,"&nbsp;"," "),"&quot;",chr(34)),"&gt;",">"),"&lt;","<")
	l=len(str)
	t=0
	for i=1 to l
		c=Abs(Asc(Mid(str,i,1)))
		if c>255 then
			t=t+2
		else
			t=t+1
		end if
		if t>=strlen then
			gotTopic=left(str,i) & "..."
			exit for
		else
			gotTopic=str
		end if
	next
	gotTopic=replace(replace(replace(replace(gotTopic," ","&nbsp;"),chr(34),"&quot;"),">","&gt;"),"<","&lt;")
end function

function nohtml(str)
    dim re
    Set re=new RegExp
    re.IgnoreCase =true
    re.Global=True
    re.Pattern="(\<.[^\<]*\>)"
    str=re.replace(str," ")
    re.Pattern="(\<\/[^\<]*\>)"
    str=re.replace(str," ")
    nohtml=str
    set re=nothing
end function
%>
