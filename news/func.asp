<%
sub ShowClassNewArticle(ArticleNum,TitleLen,ShowDateType)
	dim sqlNew,rsNew
	if ArticleNum>0 and ArticleNum<=100 then
		sqlNew="select top " & ArticleNum
	else
		sqlNew="select top 10 "
	end if
	'阿明修改
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
		response.write "没有文章" 
	else 
		do while not rsNew.eof
		
'--------------------------------稿纸效果修改开始--------
  response.write "<table border=0 width='100%' cellspacing=0 cellpadding=1 ><tr><td>"
  response.write "<img src='images/dianhao.jpg'><a href='news/show.asp?newsID="&rsNew("newsID")&"' target='_blank'>" & gotTopic(rsNew("n_Title"),TitleLen) & "</a>"

		if ShowDateType=1  or ShowDateType=2 then
			if datediff("d",rsNew("Input_Time"),date())<2 then
			   response.write("</td><td align='right' nowrap style='width:1%x'><font color=red>" & month(rsnew("Input_Time")) & "-" & day(rsnew("Input_Time")) & "</font>")
			else
			   response.write("</td><td align='right' nowrap style='width:1%'><font color=#999999>" & month(rsnew("Input_Time")) & "-" & day(rsnew("Input_Time")) & "</font>")
			end if
		end if

			
  response.write "</td></tr><tr><td colspan='2'><table width='100%' border=0 cellspacing=0 cellpadding=0><tr><td height=1 background='images/bg_dian.gif'></td></tr></table></td></tr></table>"      'CSS定义虚线，放在table下 style='height:1; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #cccccc'
'--------------------------------稿纸效果修改结束--------
			
          rsNew.movenext     
		loop
	end if  
	rsNew.close
	set rsNew=nothing
end sub




'=================================================
'洪波根据ShowClassNewArticle2修改
'过程名：ShowContentNewArticle
'作  用：显示文章内容
'参  数：ContentLen   ----内容最多字符数，一个汉字=两个英文字符        
'		 intnewsID -----分类ＩＤ
'=================================================
sub ShowContentNewArticle(ContentLen,intnewsID)
	dim sqlNew,rsNew	
		sqlNew="select "	
	'阿明修改	
		'sqlNew=sqlNew & " A.ArticleID,A.Title,A.Author,A.Content,A.UpdateTime,A.Hits,L.LayoutFileName from article A inner join Layout L on L.LayoutID=A.LayoutID where A.Deleted=False and A.Passed=1 AND A.ClassID="&intClassID&"  order by A.UpdateTime desc,A.ArticleID desc"
	 sqlNew=sqlNew & "newsID, n_Title, n_body FROM News_Info where  newsID="&intnewsID&" AND Is_Del=0 And Is_check=-1;"
	'sqlNew=sqlNew & " A.ArticleID,A.Title,A.Author,A.UpdateTime,A.Hits,L.LayoutFileName from article A inner join Layout L on L.LayoutID=A.LayoutID where A.Deleted=False and A.Passed=1 order by A.UpdateTime desc,A.ArticleID desc"
	Set rsNew= Server.CreateObject("ADODB.Recordset")
	rsNew.open sqlNew,conn,1,1
	if ContentLen<0 or ContentLen>1000 then ContentLen=500
	if rsNew.bof and rsNew.eof then 
		response.write "没有文章" 
	else 
		do while not rsNew.eof
		
'--------------------------------稿纸效果修改开始--------
  response.write "<table border=0 width='100%' cellspacing=0 cellpadding=1 ><tr><td>"
  response.write "<a href='news/show.asp?newsID=" & rsNew("newsID") &"' target='_blank'>" & gotTopic(nohtml(rsNew("n_body")),ContentLen) & "</a>"
  response.write "</td></tr><tr><td colspan='2'><table width='100%' border=0 cellspacing=0 cellpadding=0><tr><td></td></tr></table></td></tr></table>"      'CSS定义虚线，放在table下 style='height:1; border-bottom-width: 1px; border-bottom-style: dotted; border-bottom-color: #cccccc'
'--------------------------------稿纸效果修改结束--------
			
          rsNew.movenext     
		loop
	end if  
	rsNew.close
	set rsNew=nothing
end sub


'**************************************************
'函数名：gotTopic
'作  用：截字符串，汉字一个算两个字符，英文算一个字符
'参  数：str   ----原字符串
'       strlen ----截取长度
'返回值：截取后的字符串
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
