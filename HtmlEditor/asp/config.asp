<%
Dim sLicense
sLicense = ""

Dim sUsername, sPassword
sUsername = "admin"
sPassword = "admin987654321"

Dim aStyle()
Redim aStyle(4)
aStyle(1) = "full650||||||office2003|||../up_Files/|||650|||400|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|png|||rm|flv|wmv|asf|mov|mpg|mpeg|avi|mp3|wav|mid|midi|ra|wma|||gif|jpg|bmp|||500999|||100999|||100999|||100999|||100999|||1|||1|||EDIT|||0|||0||||||/up_Files/|||../up_Files/|||1|||0|||650px宽度界面下的所有功能按钮展示,功能按钮有可能重复|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100999|||100|||1|||73|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0|||0|||0||||||{yyyy}{mm}{dd}/|||1|||{page}|||0|||2000|||1|||0||||||0|||200|||0|||2|||1|||1|||1|||0||||||0|||||||||||||||||||||1|||||||||300|||1|||||||||||||||"
aStyle(2) = "menu400||||||office2003|||uploadfile/|||400|||250|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|png|||rm|flv|wmv|asf|mov|mpg|mpeg|avi|mp3|wav|mid|midi|ra|wma|||gif|jpg|bmp|||500|||100|||100|||100|||100|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||400px宽度,工具栏全部菜单按钮,所有功能,占位小|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||FF0000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100|||100|||1|||73|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0|||0|||0||||||{yyyy}{mm}{dd}/|||1|||{page}|||0|||2000|||1|||0||||||0|||200|||0|||2|||1|||1|||1|||0||||||0|||||||||||||||||||||1||||||"
aStyle(3) = "coolblue||||||office2003|||../up_Files/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|png|||rm|flv|wmv|asf|mov|mpg|mpeg|avi|mp3|wav|mid|midi|ra|wma|||gif|jpg|bmp|||500999|||100999|||100999|||100999|||100999|||1|||1|||EDIT|||0|||0||||||/up_Files/|||../up_Files/|||1|||0|||V4.x版保留,standard550标配,office2003皮肤|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100999|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0|||0|||0||||||{yyyy}{mm}{dd}/|||1|||{page}|||0|||2000|||1|||0||||||0|||200|||0|||2|||1|||1|||1|||0||||||0|||||||||||||||||||||1|||||||||300|||1|||||||||||||||"
aStyle(4) = "popup||||||office2003|||../up_Files/|||550|||350|||rar|zip|pdf|doc|xls|ppt|chm|hlp|||swf|||gif|jpg|jpeg|bmp|png|||rm|flv|wmv|asf|mov|mpg|mpeg|avi|mp3|wav|mid|midi|ra|wma|||gif|jpg|bmp|||500999|||100999|||100999|||100999|||100999|||1|||1|||EDIT|||0|||0||||||/up_Files/|||../up_Files/|||1|||0|||V4.x版保留,standard550标配,office2003皮肤,弹窗模式调用|||1|||zh-cn|||0|||300|||120|||0|||版权所有...|||000000|||12|||宋体||||||0|||jpg|jpeg|||100|||FFFFFF|||1|||1|||gif|jpg|bmp|wmz|png|||100999|||100|||1|||66|||17|||5|||5|||0|||100|||100|||1|||5|||5|||88|||31|||1|||0|||1|||1|||1|||1|||1|||0|||0|||0||||||{yyyy}{mm}{dd}/|||1|||{page}|||0|||2000|||1|||0||||||0|||200|||0|||2|||1|||1|||1|||0||||||0|||||||||||||||||||||1|||||||||300|||1|||||||||||||||"

Dim aToolbar()
Redim aToolbar(12)
aToolbar(1) = "1|||TBHandle|FormatBlock|FontName|FontSize|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|FindReplace|SpellCheck|TBSep|UnDo|ReDo|TBSep|SelectAll|UnSelect|TBSep|absolutePosition|zIndexBackward|zIndexForward|||Toolbar1|||1"
aToolbar(2) = "1|||TBHandle|Bold|Italic|UnderLine|StrikeThrough|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|TBSep|OrderedList|UnOrderedList|Indent|Outdent|TBSep|ForeColor|BackColor|TBSep|BgColor|BackImage|TBSep|Fieldset|Iframe|HorizontalRule|Marquee|TBSep|CreateLink|Anchor|Map|Unlink|||Toolbar2|||2"
aToolbar(3) = "1|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|FormMenu|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|TBSep|BR|Paragraph|ParagraphAttr|TBSep|Symbol|Emot|Art|NowDate|NowTime|Excel|Quote|TBSep|PrintBreak|Print|TBSep|ShowBorders|ZoomMenu|Refresh|Maximize|About|||Toolbar3|||3"
aToolbar(4) = "1|||TBHandle|FontMenu|ParagraphMenu|ComponentMenu|ObjectMenu|ToolMenu|FileMenu|TBSep|TableMenu|TableInsert|TableProp|TableCellProp|TableCellSplit|TableRowProp|TableRowInsertAbove|TableRowInsertBelow|TableRowMerge|TableRowSplit|TableRowDelete|TableColInsertLeft|TableColInsertRight|TableColMerge|TableColSplit|TableColDelete|TBSep|FormMenu|FormText|FormTextArea|FormRadio|FormCheckbox|FormDropdown|FormButton|||Toolbar4|||4"
aToolbar(5) = "1|||TBHandle|TBSep|GalleryMenu|GalleryImage|GalleryFlash|GalleryMedia|GalleryFile|TBSep|Code|EQ|TBSep|Big|Small|TBSep|ModeCode|ModeEdit|ModeText|ModeView|TBSep|SizePlus|SizeMinus|TBSep|ZoomSelect|TBSep|Template|QuickFormat|Capture|FontSizeMenu|FontNameMenu|FormatBlockMenu|TBSep|Pagination|PaginationInsert|TBSep|Site|||Toolbar5|||5"
aToolbar(6) = "2|||TBHandle|FontNameMenu|FontSizeMenu|FormatBlockMenu|TBSep|EditMenu|FontMenu|ParagraphMenu|ComponentMenu|ObjectMenu|ToolMenu|FormMenu|TableMenu|FileMenu|GalleryMenu|TBSep|ZoomMenu|Maximize|About|||mini toolbar|||1"
aToolbar(7) = "3|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(8) = "3|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(9) = "3|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|QuickFormat|Capture|TBSep|Fieldset|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Maximize|About|||工具栏3|||3"
aToolbar(10) = "4|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|TBSep|SuperScript|SubScript|UpperCase|LowerCase|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||工具栏1|||1"
aToolbar(11) = "4|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BackColor|BgColor|BackImage|TBSep|RemoteUpload|LocalUpload|ImportWord|ImportExcel|||工具栏2|||2"
aToolbar(12) = "4|||TBHandle|Image|Flash|Media|File|GalleryMenu|TBSep|TableMenu|QuickFormat|Capture|TBSep|Fieldset|HorizontalRule|Marquee|CreateLink|Unlink|Map|Anchor|TBSep|Template|Symbol|Emot|Art|Excel|Quote|ShowBorders|TBSep|Save|About|||工具栏3|||3"
%>