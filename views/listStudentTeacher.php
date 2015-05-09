   <div class="one columns">
        <p>  </p>
    </div>
<div class="eight columns">
<br>
<br>
<br>
<br>
<br>
<form action="index.php?action=listStudentAnswers" method="post">
<table class=" u-full-width">
  <thead>
    <tr>
      <th>Matricule</th>
      <th>Nom</th>
      <th>Prenom</th>
      <th>Deja connecte</th>
      <th>Progression</th>
	  <th><input type="submit" name"answersStudent" value="Voir Reponses"></th>
	

    </tr>
  </thead>
  <tbody>
		<?php foreach ($students as $index=>$student){?>
		<tr>
			<td> <a href="" > </a><?php echo $student[0];?> </td>
			<td> <?php echo $student[1];?> </td>
			<td> <?php echo $student[2];?> </td>
			<td> <?php echo $student[3] == null ? 'NON' : 'OUI';?> </td>
			<td> <?php echo $student[4] . '%' ;?> </td>
			<th><input type="radio" name="answerStudent" value=<?php echo $student[0] ?> ></th>
		
		</tr>
		<?php }?>

  </tbody>
</table>
</form>
</div>