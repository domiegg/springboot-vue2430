<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="jiaoxueziliaohsgb" scope="page" class="com.bean.JiaoxueziliaoBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=jiaoxueziliao.xls");
%>
<html>
  <head>
    <title>��ѧ����</title>
  </head>

  <body >
 <%
			String sql="select * from jiaoxueziliao  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>���</td>    <td align='center'>����</td>    <td align='center'>���</td>        <td  width='90' align='center'>����</td>    <td align='center'>������</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=jiaoxueziliaohsgb.getAllJiaoxueziliao(8);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.bianhao}</td>    <td>${u.mingcheng}</td>    <td>${u.leibie}</td>        <td width='90' align='center'><a href='${u.fujian}' target='_blank'>����</a></td>    <td>${u.faburen}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

