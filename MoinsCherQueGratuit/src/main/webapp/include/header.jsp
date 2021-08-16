<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!--  Si jamais la variable user existe en session (donc l'utilisateur est connecté) -->
<c:if test="${!empty user}">
	Vous êtes connecté avec l'utilisateur ${user.prenom} ${user.nom}
</c:if>
<!--  Sinon on affiche un lien qui redirige sur une page de connexion -->
<c:if test="${empty user}">
	Vous n'êtes pas connecté : <a href="./login.jsp">Accéder à la page de connexion</a>
</c:if>


<!--  Si jamais le cookie "ville" existe -->
<c:if test="${!empty cookie.ville}">
	, votre ville : ${cookie.ville.value}
</c:if>
 

<hr />


<nav>
	<ul>
		<li><a href="${pageContext.request.contextPath}/accueil.jsp">Accueil</a></li>
		<li><a href="${pageContext.request.contextPath}/page1.jsp">Page 1</a></li>
		<li><a href="${pageContext.request.contextPath}/page2.jsp">Page 2</a></li>
		<li><a href="${pageContext.request.contextPath}/page3.jsp">Page 3</a></li>
		
		<li><a href="${pageContext.request.contextPath}/user/compte.jsp">Mon Compte</a></li>
		<li><a href="${pageContext.request.contextPath}/user/infos.jsp">Infos persos</a></li>
	</ul>
</nav>

<hr />