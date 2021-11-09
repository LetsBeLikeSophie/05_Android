<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="a.b.c.com.paging.BoardDAO2"%>
<%@ page import="a.b.c.com.paging.BoardVO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.HashMap"%>

<!DOCTYPE html>
<html>
<head>
<title> SELECT LIST </title>
<style type="text/css">

	table, td {
		border: 1px solid red;		
	}
	table {
		width: 70%;
		height: 80%;
		margin: auto;
		text-align: center;
	}
</style>
</head>
<body>
<%
	BoardDAO2 dao = new BoardDAO2();

	//���� row����
	int pageSize = 10;
	//��ϱ׷�
	int groupSize = 5;	
	//���� ������
	int curPage = 1;
	//��ü �ۼ�
	int totalCount = 0;
	
	System.out.println("curPage >>> : " + request.getParameter("curPage"));
	
	//ó�� ����Ǹ� null���� ���´�.
	//���� �������� �̵���Ű�� null���� �ƴ϶� if���� ����ȴ�.
	if(request.getParameter("curPage") != null){
		//getParameter�� ���ϰ��� String������ int�� ����ȯ ���ش�.		
		curPage = Integer.parseInt(request.getParameter("curPage"));
		System.out.println("curPage2 >>> : " + curPage);
	}
	
	System.out.println("pageSize >>>; : "+pageSize);

	BoardVO bvo = null;
	bvo = new BoardVO();
	bvo.setPageSize(String.valueOf(pageSize));
	bvo.setCurPage(String.valueOf(curPage));
	
	ArrayList al = dao.selectList(bvo);
	
	//ArrayList�� al�� ����� 0�̸�
	if (al.size() == 0) return;
%>	
<table>
<tr>
	<td align="center" colspan="13">select�� ���� ���� : VO ���</td>
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
	<td>��������ȣ</td>
	<td>��ü�ۼ�</td>
</tr>
<%
	for (int i=0; i < al.size(); i++) {
		BoardVO _bvo = (BoardVO)al.get(i);
		
		totalCount = Integer.parseInt((String)_bvo.getTotalCoun());
%>
<tr>
	<td> <%= _bvo.getMnum() %></td>
	<td> <%= _bvo.getMtitle() %></td>
	<td> <%= _bvo.getMname() %></td>
	<td> <%= _bvo.getMemail() %></td>
	<td> <%= _bvo.getMarea() %></td>
	<td> <%= _bvo.getMpass() %></td>
	<td> <%= _bvo.getMref() %></td>
	<td> <%= _bvo.getMstep() %></td>
	<td> <%= _bvo.getMdepth() %></td>
	<td> <%= _bvo.getMwriteday()%></td>
	<td> <%= _bvo.getMhits() %></td>
	<td> <%= _bvo.getPageSize() %></td>
	<td> <%= _bvo.getTotalCoun() %></td>
</tr>
<%
	}
%>
<tr>
	<td colspan="13">
		<jsp:include page="paging.jsp" flush="true">
			<jsp:param name="url" value="boardSelectListVO.jsp"/>
			<jsp:param name="str" value=""/>
			<jsp:param name="pageSize" value="<%=pageSize%>"/>
			<jsp:param name="groupSize" value="<%=groupSize%>"/>
			<jsp:param name="curPage" value="<%=curPage%>"/>
			<jsp:param name="totalCount" value="<%=totalCount%>"/>
		</jsp:include>
	</td>
</tr>
</table>
</body>
</html>
<!--
se_BoardSelectList.jsp?searchString=111&searchtype=name&curPage=3
	str �ĸ����Ϳ� �ѱ� �� : searchString=111&searchtype=name
-->