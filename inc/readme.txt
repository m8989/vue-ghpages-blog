******页面结构说明****
一般情况下，../inc/head.asp是头文件，../inc/copyright.asp是尾文件。
但是，在子目录中不直接包含这两个文件，而是包含./incLeft.asp和./incRight.asp

incLeft.asp为三栏表格的前一半代码。最前面包含../inc/head.asp
incRight.asp为三栏表格的后一半代码。与incLeft.asp合为一个完整的表格.最后面包含../inc/copyright.asp

当整个网站采用框架结构时，将incLeft.asp和incRight.asp的内容全部删除即可。
每个子栏目的左右文件可以不相同，如果要修改。可以正常的用于T形框架结构。
*************************************



