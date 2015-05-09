
   <div class="one columns">
        <br>
    </div>
	
<div class="five columns">
	<h3>Exportation</h3>
	<form method="post" name="csvExport" action="index.php?action=export">
			<br>
			<br>
			<br>
			<br>
			<select name="csvExport">
					<?php foreach ($levels as $index=>$levels){ ?>
					  <option value=<?php echo $levels[0] ?> ><?php echo ($levels[2]== null) ? (($levels[1] == null) ? $levels[0] : $levels[1]  ) : $levels[2] ?></option>
					<?php }?>
			</select>
			
			<input type="submit" name"csvExport" value="Exporter">
	</form>
</div>