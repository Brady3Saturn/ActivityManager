<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<s:head theme="xhtml"/>
<sx:head parseContent="true"/>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>

<body>
	<!--<a href="ModifyInfo.jsp">�޸ĸ�����Ϣ</a>-->
	<div>
	
			<s:iterator  value="#session.user" id="item">

				<p>�ҵ����ƣ�<s:property value="name"/></p>
			
			</s:iterator>

	</div>
	<div>
		--------------------------�ҷ����Ļ----------------------
			<s:iterator  value="#session.MyActivity" id="item">

				<p>
					
					<s:url id="checkAct_url" action="show_ShowActInfo" >
 
   							<s:param name="activity.Id">
 
    		  					<s:property value="Id"/>

  			 				</s:param>
 
					</s:url>

					<s:a href="%{checkAct_url}">  <s:property value="name"/>    <s:property value="begin"/>  </s:a>
				</p>
			
			</s:iterator>

	</div>
	<div>
		--------------------------�Ҳμӵ����----------------------
	<s:iterator  value="#session.teamList" id="item">
		<p>�������ƣ� <s:property value="name"/></p>	
			�������ԣ�<s:property value="message"/><br/><br/>
	
			����QQȺ��<s:property value="QQ"/><br/><br/>
	
			����������<s:property value="memberNum"/><br/><br/>
	
			����״̬��
			<s:if test="team.state==0">
				��Ƹ��Ա������
			</s:if>
			<s:else>
				��Ա��~
			</s:else>
			
		<s:url id="checkAppList_url" action="app_ShowAppList" >
 
   				<s:param name="team.Id">
 
    		  			<s:property value="Id"/>

  			 	</s:param>
 
		</s:url>
		
		<p>  <s:a href="%{checkAppList_url}"> �鿴�����б�  </s:a>  </p>
		
		<br/><br/>--------------------------------	
	</s:iterator>
	
	<br/><br/>
	--------------------------����������----------------------
	<s:iterator  value="#session.appTeamList" id="item">
		<p>�������ƣ� <s:property value="name"/></p>	
		--------------------------------	
	</s:iterator>
	
	<br/><br/>
	--------------------------���ܾ������----------------------
	<s:iterator  value="#session.failTeamList" id="item">
		<p>�������ƣ� <s:property value="name"/></p>	
		-------------------------------
	</s:iterator>
	
	</div>
</body>
</html>