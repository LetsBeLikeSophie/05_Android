<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="a.b.c.com.paging.BoardDAO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.HashMap"%>

<!DOCTYPE html>
<html>
<head>
<title> SELECT LIST </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	td {
		width: 300px;
		text-align: center;
	}
</style>
</head>

<body>
<div class="container">

<%
	BoardDAO dao = null;
	dao = new BoardDAO();
%>

<%
	int pageSize = 10;
	int groupSize = 5;
	
	int curPage = 5;
	int totalCount = 0;
	
	if(request.getParameter("curPage") != null)
	{
		curPage = Integer.parseInt(request.getParameter("curPage"));
	}
System.out.println("pageSize >>>> : " + pageSize);
System.out.println("curPage >>>> : " + curPage);
	ArrayList al = dao.selectList(pageSize, curPage);
	
	if (al.size() == 0)
	{
%>
<table border="1">
	<tr>
		<td width="400" align="center">NO DATA</td>
	</tr>
</table>	
<%
	}
	else
	{
		Iterator iter = al.iterator();
%>	
<!-- 
https://www.w3schools.com/bootstrap4/bootstrap_tables.asp
 --> 
<table class="table-sm table-striped table-hover table-dark">	
	<tr>
		<td align="center" colspan="13">select�� ���� ���� : ��Ʈ��Ʈ�� ���</td>
	</tr>
	<tr>
		<td>�۹�ȣ</td>
		<td>����</td>
		<td>�ۼ���</td>
		<td>�̸���</td>
		<td>�۳���</td>
		<td>��й�ȣ</td>
		<td>REF</td>
		<td>STEP</td>
		<td>DEPTH</td>
		<td>�ۼ���</td>
		<td>��ȸ��</td>
		<td>������</td>
		<td>��ü�ۼ�</td>
	</tr>
<%
		while(iter.hasNext()) 
		{
			HashMap hm = (HashMap)iter.next();
			totalCount = Integer.parseInt((String)hm.get("TOTALCOUNT"));
%>
	<tr>
		<td align="center"> <%=hm.get("mnum")%></td>
		<td align="center"> <%=hm.get("mtitle")%></td>
		<td align="center"> <%=hm.get("mname")%></td>
		<td align="center"> <%=hm.get("memail")%></td>
		<td align="center"> <%=hm.get("marea")%></td>
		<td align="center"> <%=hm.get("mpass")%></td>
		<td align="center"> <%=hm.get("mref")%></td>
		<td align="center"> <%=hm.get("mstep")%></td>
		<td align="center"> <%=hm.get("mdepth")%></td>
		<td align="center"> <%=hm.get("mwriteday")%></td>
		<td align="center"> <%=hm.get("mhits")%></td>
		<td align="center"> <%=hm.get("PAGENO")%></td>
		<td align="center"> <%=hm.get("TOTALCOUNT")%></td>
	</tr>
<%
		}
	}
%>
</table>



<jsp:include page="paging.jsp" flush="true">
	<jsp:param name="url" value="boardSelectList2.jsp"/>
	<jsp:param name="str" value=""/>
	<jsp:param name="pageSize" value="<%=pageSize%>"/>
	<jsp:param name="groupSize" value="<%=groupSize%>"/>
	<jsp:param name="curPage" value="<%=curPage%>"/>
	<jsp:param name="totalCount" value="<%=totalCount%>"/>
</jsp:include>

</div>
</body>

<html>
<!--
se_BoardSelectList.jsp?searchString=111&searchtype=name&curPage=3
	str �ĸ����Ϳ� �ѱ� �� : searchString=111&searchtype=name
-->