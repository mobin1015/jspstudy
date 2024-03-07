<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <%--
    <c:if>
    1. else 개념이 없는 if 문 태그이다.
    2. 형식
      <c:if test="조건식">
        실행문
      </c:if>
   --%>
  
  <c:set var="age" value="<%=(int)(Math.random()*101) %>" scope="page"/>
  <c:if test="${age >= 20}">
    <div>${age}살은 성인입니다.</div>
  </c:if>
  <c:if test="${age < 20}">
    <div>${age}살은 미성년입니다.</div>
  </c:if>
  
  <c:set var="grade" value="<%=(int)(Math.random()*101) %>" scope="page"/>
    <c:if test="${grade >= 90}">
  <c:set var="mark" value="A"/>
    </c:if>
  <c:if test="${grade >= 80 && grade <90}">
    <c:set var="mark" value="B"/>
    </c:if>
  <c:if test="${grade >= 70 && grade <80}">
     <c:set var="mark" value="C"/>
    </c:if>
  <c:if test="${grade >= 60 && grade <70}">
     <c:set var="mark" value="D"/>
   </c:if>
  <c:if test="${grade < 60}">
    <c:set var="mark" value="F"/>
  </c:if>
  
   <div>점수는 ${grade}점이고, 학점은 ${mark}입니다.</div>
  
</body>
</html>