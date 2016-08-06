<form action="verifyupdategame.jsp" method="post">
	<input type="hidden" name="gameid" value=<%=rs.getInt("id_Game")%>>
	<input type="submit" name="Update" value="Update">
</form>