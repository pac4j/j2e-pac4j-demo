<%@page session="false" %>
<%@page import="org.pac4j.core.profile.ProfileManager"%>
<%@ page import="org.pac4j.core.context.JEEContext" %>
<%@ page import="org.pac4j.core.context.session.JEESessionStore" %>
<h1>Not protected page</h1>
<a href="..">Back</a><br />
<br /><br />
<%
    JEEContext context = new JEEContext(request, response);
    ProfileManager manager = new ProfileManager(context, JEESessionStore.INSTANCE);
%>
profiles: <%=manager.getProfiles()%><br />
