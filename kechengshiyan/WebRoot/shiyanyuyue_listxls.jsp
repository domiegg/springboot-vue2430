<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="shiyanyuyuehsgb" scope="page" class="com.bean.ShiyanyuyueBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shiyanyuyue.xls");
%>
<html>
  <head>
    <title>ʵ��ԤԼ</title>
  </head>

  <body >
 <%
			String sql="select * from shiyanyuyue  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>��Ŀ���</td>    <td align='center'>ʵ������</td>    <td align='center'>ʵ��ʱ��</td>    <td align='center'>ָ����ʦ</td>        <td align='center'>ѧ��</td>    <td align='center'>����</td>    <td  width='80' align='center'>�Ƿ����</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=shiyanyuyuehsgb.getAllShiyanyuyue(10);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.xiangmubianhao}</td>    <td>${u.shiyanmingcheng}</td>    <td>${u.shiyanshijian}</td>    <td>${u.zhidaolaoshi}</td>        <td>${u.xuehao}</td>    <td>${u.xingming}</td>    <td align='center'>${u.issh} <input type="button" value="���" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=shiyanyuyue'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

