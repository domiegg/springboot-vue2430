<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="shiyanxiangmuhsgb" scope="page" class="com.bean.ShiyanxiangmuBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shiyanxiangmu.xls");
%>
<html>
  <head>
    <title>ʵ����Ŀ</title>
  </head>

  <body >
 <%
			String sql="select * from shiyanxiangmu  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>��Ŀ���</td>    <td align='center'>ʵ������</td>    <td align='center'>�о�����</td>    <td align='center'>Ԥ�ڳɹ�</td>    <td  width='65' align='center'>ʵ��ʱ��</td>        <td align='center'>ָ����ʦ</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=shiyanxiangmuhsgb.getAllShiyanxiangmu(9);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.xiangmubianhao}</td>    <td>${u.shiyanmingcheng}</td>    <td>${u.yanjiuketi}</td>    <td>${u.yuqichengguo}</td>    <td>${u.shiyanshijian}</td>        <td>${u.zhidaolaoshi}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

