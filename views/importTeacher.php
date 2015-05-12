

    <div class="three columns">
        <p>  </p>
    </div>

<div class="six columns u-full-width">
    <br> 
    <br> 
    <br> 
    <h2>
        Importation  
    </h2>

	<form enctype="multipart/form-data" action="index.php?action=importTeacher" method="post">
		<input type="hidden" name="MAX_FILE_SIZE" value="1000000"/>
        <label for="lvlNum">Numero du niveau</label>
        <input class="" type="number" name="lvlNum">
        <label for="lvlDescription">Description</label>
        <input class="" type="textarea" name="lvlDescription">
		<input type="file" name="userFile">
        <br>
		<input type="submit" value="Submit file">
	</form>
</div>

