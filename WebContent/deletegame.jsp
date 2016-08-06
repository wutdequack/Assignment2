<form action="verifydeletegame.jsp" method="post">
	<input type="hidden" name="gameid" value=<%=rs.getInt("id_Game")%>>
	<input type="submit" name="Delete" value="Delete">
</form>