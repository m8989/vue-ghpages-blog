<%@LANGUAGE="VBScript.Encode" CODEPAGE="936"%>
<!--#include file="../inc/ado.asp"-->
<!--#include file="../inc/tools.asp"-->
<!--#include file="../inc/check.asp"-->
<%#@~^HQAAAA==@#@&YC(V'JVEdY|fnYmksdr@#@&5AcAAA==^#~@%>
<%#@~^LQAAAA==r6P.;!+/DR6GDs`E/!4hrD+Nrb'rYD!nEPDtx~Pv己提交Qw4AAA==^#~@%>
<%#@~^NQQAAA==@#@&d7!/Dxm:xD;;+kY WKD:vEEk+D	Ch+r#@#@&7d2Ck/AWM['M+5;/Y WKDh`r2m/dSWMNJ*@#@&7d@#@&7W!Y^4m3v/tm3jCsE`!/nDUCs+S Bq!BFQfy~J用户名Eb*@#@&dK;Dm4m0`Z4+1V.mV;+vwCdkhWM[~+~FySq_2 3%SJ登陆密码Eb*@#@&@#@&7d6kns9F'C.Mlz`r;k+.	ls+JBJaC/khGD9Jb@#@&dd7CV!+F{C.DmXvEd+.Um:n~aC/khG.9#@#@&@#@&d7/$s{JihfzK2,J,'PDl8VP'~rP?APPr@#@&i7WWMPb'TPOG,E8W!UNv0rn^NFb@#@&d7dk5^Px,/$VPLP6r+^Nq`b#~',J'EEPLPD2sl1+v\CV;n8`r#BEBr~EvEJ#~',JvJ,@#@&d7ik6Pk,@!@*~E(W;x9`WrVN8bPDt+	@#@&didi/5Vxd$V~[,E~rP@#@&iddnsk+@#@&i7idd$V{/;^PL~J,h4+M+~ik+DgC:'Br~'PDDb:c/ndkkGxvEM!+dO|j/n.glh+rb*[EEJ@#@&didUN,kWd@#@&77	+6D@#@&idhK.['r管理员密码修改成功"r@#@&d^G	x 2Xnm!Yn~k;V@#@&@#@&nVkn,Pv进入页面@#@&iddid@#@&difr:,Idq@#@&di9ksP/$s@#@&idGkhP]d8{UEs]WS/@#@&id/5s{Jj2d3;K~CP,sI}H,!E/O{G+OCbV/,	CAI2,;d+Mxm:n'vELPODbh`k+ddbWxcEVEn/Dm`/nM1m:+r#*~[rBE@#@&d7jYP"dF,'PUn.\DcZ.+COr8L^YvJ)9}fA ]mGD9dYE*@#@&dd"/8 b1Yr\ZGU	+mDrW	P',\\{1W	xm?P]&1!@#@&7d"/q UWE.^PxPk5^@#@&idED+kwKU/RADbYn~k;V@#@&diBDd2W	/Rnx[@#@&d7IkqR;E.dKDKz2PxPZ@#@&d7"/8RZ!DkGDdW^lDkGU,'Py@#@&idIkq SKm0Kzwn~{Pq@#@&7d"/q }w+Uc*@#@&di]kFm	EsIWS/,xPZ@#@&diyBUBAA==^#~@%>
		<%#@~^EAAAAA==r6P]kFc2rwPD4+	P3AQAAA==^#~@%>
			<%#@~^CgEAAA==@#@&d7iDjId'"n;!+dYc?n.7+DjCDbl4^nd`rC:KK{]3w2]2"E#,B取得前一页的i]d@#@&77iIn/aG	/ncMkYPr@!/1DrwDPsC	oEmL+{9l7CjmMkaYqRq@*mVnDDcB您的操作有误！E#I&CtkdOKDzR(C13c F*iP返回前页Czr~@#@&d7d"+d2Kx/ MkY~EP9W1Eh+UOcVGmmOkKxxvr[P.n`IJ[rvp@!&kmMkwD@*r~B自动刷新前一页@#@&7diIndaWxknRAxN@#@&7dirkQAAA==^#~@%>
		<%#@~^BAAAAA==n^/nqQEAAA==^#~@%>
			<%#@~^XgAAAA==v设置初始值@#@&7id!/+Mxmh+{IdFvJ;dDxmh+r#@#@&77dalk/AW.[{IdFvEwm/dAKDNEb@#@&7dU9Pr6@#@&+x9PbW@#@&ZBYAAA==^#~@%>
<html>
<head>
<title>修改管理员的资料</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="inc/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../inc/check.js"></script>
<script LANGUAGE="javascript">
<!--
function add_onsubmit(add) {
// 验证二次密码
if(add.password.value!=add.repassword.value){
	alert('两次密码不相同!');
	return false;
}
//客户端验证

if (!checkvalue(add.username,2,10,1+32,"用户名")) return false;
if (!checkvalue(add.password,6,12,1+32+8,"登陆密码")) return false;
//alert('ok!');
}
//-->
</SCRIPT>
</head>
<body>
<!--# inc lude file file="incLeft.asp"-->
<%#@~^LQAAAA==r6P.;!+/DR6GDs`E/!4hrD+Nrb'rYD!nEPDtx~Pv己提交Qw4AAA==^#~@%>
<%#@~^PAEAAA==.j]d'"+;!+kORU+.\D#CMkl(s+k`J_PPn|IAs3I3]r#~B取得前一页的`]S@#@&]nkwWUdR	DbOPE@!/1DkaY,sl	o;lT+xBm\lU^DbwY8 q@*mVDO`v~r[~hK.N,[E~'请重新登陆！B#I&Ctr/DGMX (l13` F*IP返回前页CzEP@#@&v]/wKU/RMrO+,J,NGm;hxOR^GmmYrG	'BE',Dnj"JLJvp@!J/mMkaO@*rPv自动刷新前一页@#@&IndaWxknRqDkDn~J,NKm;:nUDRsW1CYbWUxEVWLr	RC/avp@!&kmMkwD@*r~B自动刷新前一页@#@&k1cAAA==^#~@%>
<!--center><br>
<br>
<br>
<br>
<font color="#FF0000" size="+2"> 
<%=#@~^BQAAAA==AKD[,3AEAAA==^#~@%></font>
</center-->
<%#@~^BgAAAA==~VdP6QEAAA==^#~@%>
<br>
<br>
<br>

<table width="100%" border="0" align="center" cellspacing="0">
  <tr>
    <td height="100" valign="top">
	<form name="add" id="add" method="post" action="" onsubmit="return add_onsubmit(this)">
	<input name="submited" type="hidden" value="true">
        <table width="100%" border="0" cellspacing="0" bgcolor="#fdf1f5">
          <tr bgcolor="#0099FF"> 
            <td height="35" colspan="3" align="center"><font  color=#ffffff><strong><font color="#0000CC">修改管理员的资料</font></strong></font></td>
          </tr>
          <tr> 
            <td height="48" align="right">旧用户名：</td>
            <td> <%=#@~^GQAAAA==d/dbW	`JVEdY|jd+M1ChJ#IAkAAA==^#~@%> <br> </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="30%" height="48" align="right"><font color="#FF0000">新</font>用户名：</td>
            <td width="160"> <input name="username" type="text" value="<%=#@~^CAAAAA==;k+.	ls+YAMAAA==^#~@%>" size=10  >
              <font color="#FF0000">*</font> <br> </td>
            <td>（用户名可以有汉字、英文字母，数字或下划线组成，长度应在4-10个字节之间。建议用汉字。）</td>
          </tr>
          <tr> 
            <td width="30%" align="right"><font color="#FF0000">新</font>登陆密码：</td>
            <td width="160"> <INPUT name="password" type=password value="<%=#@~^CAAAAA==2m/dSWMNcwMAAA==^#~@%>" size=10 maxLength=10> 
              <font color="#FF0000">*</font><BR> </td>
            <td>（密码长度6-8个字节，区分英文字母大小写。只能由英文字母，数字或下划线组成）</td>
          </tr>
          <TR> 
            <TD width="30%" height=32> <DIV align=right>再次输入密码：</DIV></TD>
            <TD height=32><INPUT name=repassword type=password value="<%=#@~^CAAAAA==2m/dSWMNcwMAAA==^#~@%>" size=10 maxLength=10> 
              <font color="#FF0000">* </font></TD>
            <TD height=32>两次输入密码必须相同。</TD>
          </TR>
          <TR> 
            <TD height=32>&nbsp;</TD>
            <TD height=32><input type="submit" name="Submit" value="修改"></TD>
            <TD height=32><input type="reset" name="Submit2" value="重填"></TD>
          </TR>
        </table>
      </form></td>
  </tr>
</table>

<%#@~^BgAAAA==n	N~b0JgIAAA==^#~@%>
<!--# inc lude file file="incRight-admin.asp"--> 
</body>
</html>

