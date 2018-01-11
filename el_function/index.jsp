<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="eltag" uri="/tagtest-tag" %>
<html>
  <head>
    
    
    <title>表达式语言 自定义函数</title>
	
  </head>
  
  
  <body >
    <form action="index.jsp" method="post">
    	字符串=<input type="text" name="name" value="${param.name}">
    	<input type="submit" value="提交">
    </form>
    <table border="1px" bgcolor="#80ffff">
       <tr>
         <td>表达式语言</td>
         <td>计算结果</td>
       </tr>
       <tr>
         <td>\${param.name }</td>
         <td>${param.name }</td>
       </tr>
       <!-- 使用reverse函数 -->
       <tr>
         <td>\${eltag:reverse(param.name)}</td>
         <td>${eltag:reverse(param.name)}</td>
       </tr>
       
        <!-- 使用countChar函数 -->
       <tr>
         <td>\${eltag:countChar(param.name)}</td>
         <td>${eltag:countChar(param.name)}</td>
       </tr>
    </table>
  </body>
</html>
