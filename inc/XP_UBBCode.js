$UBBCode = 0               // UBB代码功能.1(关闭).0(打开)
$imglink = 0               // 帖图功能
$html    = 0               // HTML功能
$Smilies = 0               // 表情功能

function XP_UBBCode(temp)
{
        temp=patch(temp);
        temp=Smilies(temp);

	if (!$imglink)
	{
		temp = temp.replace(/(http:\/\/)([\w\+\-\/\=\?\.\~]+\.(jpg|gif|pcx|bmp))/ig, "<HR SIZE=1 Noshade width=100% align=\"left\"><img src=\"\/\/$2\" alt=\"$2\">");
	}
	
        if (!$UBBCode)
        { // UBB 代码的支持，这里仅仅提供了一些常用的代码。
//链接
	        temp = temp.replace(/(^|\s)(http|https|ftp)(:\/\/[^\";,<>]+)/ig, "<a href=\"$2$3\" target=_blank>$2$3</a>");
	        temp = temp.replace(/([^\//]])(www\.[^\";,<>]+)/ig, "<a href=\"http:\/\/$2\" target=_blank>$2</a>");
	        temp = temp.replace(/(^|\s)(www\.[^\";,<>&]+)/ig, "<a href=\"http:\/\/$2\" target=_blank>$2</a>");
                temp = temp.replace(/(\[URL\])(http|https|ftp)(:\/\/\S+)(\[\/URL\])/ig, "<A HREF=\"$2$3\" TARGET=_blank>$2$3</A>");
                temp = temp.replace(/(\[URL\])(\S+)(\[\/URL\])/ig, " <A HREF=\"http:\/\/$2\" TARGET=_blank>$2</A>");
                temp = temp.replace(/(\[URL=)(http|https|ftp)(:\/\/\S+)(\])(.+)(\[\/URL\])/ig, "<A HREF=\"$2$3\" TARGET=_blank>$5</A>");
                temp = temp.replace(/(\[URL=)(\S+)(\])(.+)(\[\/URL\])/ig, "<A HREF=\"http:\/\/$2\" TARGET=_blank>$4</A>");
//插图
		//temp = temp.replace(/(\[IMG\])(\S+)(\[\/IMG\])/ig, "<img src=\"$2\" alt=\"$2\" align=\"right\" onload=\"javascript:if(this.width>screen.width-350)this.width=screen.width-350\">");		
		temp = temp.replace(/(\[IMG\])(\S+)(\[\/IMG\])/ig, "<img src=\"$2\" alt=\"$2\" align=\"right\" onload=\"javascript:if(this.width>screen.width-550)this.width=screen.width-550\">");
//代码		
                temp = temp.replace(/(\[code\])(.+)(\[\/code\])/ig, "<BR><BLOCKQUOTE><strong>Code</strong>:<HR Size=1>$2<HR SIZE=1><\/BLOCKQUOTE>");
//文字颜色
                temp = temp.replace(/(\[COLOR=)(\S+)(\])(.+)(\[\/COLOR\])/ig, "<FONT COLOR=\"$2\">$4<\/FONT>");
//字体
		temp = temp.replace(/(\[FACE=)(\S+)(\])(.+)(\[\/FACE\])/ig, "<FONT FACE=\"$2\">$4<\/FONT>");
//字体大小
		temp = temp.replace(/(\[SIZE=)(\S+)(\])(.+)(\[\/SIZE\])/ig, "<FONT SIZE=\"$2\">$4<\/FONT>");
                temp = temp.replace(/(\[list\])(.+)(\[\/list\])/ig, "<UL TYPE=SQUARE>$2<\/UL>");
//斜体
                temp = temp.replace(/(\[i\])(.+)(\[\/i\])/ig, "<I>$2<\/I>");
                temp = temp.replace(/(\[\*\])/ig, "<LI>");
//粗体
		temp = temp.replace(/(\[b\])(.+)(\[\/b\])/ig, "<b>$2</b>");
//邮件
	        temp = temp.replace(/(\w+\@\w+.[\w.]+)/ig, "<a href=\"mailto:$1\">$1</a>");
        }
	return (temp);
}

function Smilies(temp)
{
        if (!$Smilies)
        {
                temp = temp.replace(/\:\)/ig, "<img src=xp_ubbicon\/smile.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:\(/ig, "<img src=xp_ubbicon\/frown.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:D/g, "<img src=xp_ubbicon\/biggrin.gif ALIGN=absmiddle>");
                temp = temp.replace(/\&lt\;\)/ig, "\&lt\;\ )");
                temp = temp.replace(/\&gt\;\)/ig, "\&gt\;\ )");
                temp = temp.replace(/\;\)/ig, "<img src=xp_ubbicon\/wink.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:o/g, "<img src=xp_ubbicon\/redface.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:p/g, "<img src=xp_ubbicon\/tongue.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:cool/ig, "<img src=xp_ubbicon\/cool.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:rolleyes/g, "<img src=xp_ubbicon\/rolleyes.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:mad/g, "<img src=xp_ubbicon\/mad.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:eek/ig, "<img src=xp_ubbicon\/eek.gif ALIGN=absmiddle>");
                temp = temp.replace(/\:confused/ig, "<img src=xp_ubbicon\/confused.gif ALIGN=absmiddle>");
        }
        return (temp);
}

function patch(temp)
{
	if (!$html)
	{
                temp = temp.replace(/</ig, "&lt;");
                temp = temp.replace(/>/ig, "&gt;");
                temp = temp.replace(/\r\n/ig, "<BR> ");
	}
        temp = temp.replace(/\n\r\n/ig, "<P>");
        temp = temp.replace(/\n/ig, "<BR>");
        temp = temp.replace(/\r/ig, "");
	return (temp);
}  