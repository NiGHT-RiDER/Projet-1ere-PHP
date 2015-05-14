<div class="five columns">
	<h3>Modification</h3>
	
    <!-- form containing the select level of the page  -->
    <form method="post" name="level" action="index.php?action=updateQuestion">
			<br>
			<br>
			<br>
			<br>
			<select name="level">
					<?php foreach ($levels as $index=>$levels){ ?>
					  <option value=<?php echo $levels[0] ?> ><?php echo ($levels[2]== null) ? (($levels[1] == null) ? $levels[0]                       : $levels[1]  ) : $levels[2] ?></option>
					<?php }?>
			</select>
			
			<input type="submit" name"level" value="Selectionner">
	</form>
    <!-- end of the form for the select level  -->

    <!-- start of the question update table -->
   	<form action="index.php?action=updateQuestion" method="post">
		<table> 
		<thead>
			<tr>
				<th>Question</th>
				<th>Numero</th>
				<th>Sujet</th>
				<th>Query</th>
				<th>Auteur</th>
				<th>Derniere mise a jour </th>
				<th><input type="submit" name="delete" value="Effacer"></th>
			</tr>
		</thead>
		<tbody>
			<?php for ($i=0;$i<count($queriesArray);$i++) { ?>
				<tr>
                    <?php for($j=1 ; $j< 7 ; $j++) { ?>
					<td><?php echo $queriesArray[$i][$j] ?></td>
                    <?php } ?>
					<td><input type="radio" name="query" value="<?php echo $queriesArray[$i][0] ?>"></td>					
				</tr>
			<?php } ?>
		</tbody>
		</table>
	</form> 
</div>

