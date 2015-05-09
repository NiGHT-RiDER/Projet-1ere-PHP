
  <div class="one columns">
       <p></p>
    </div>
<div class="eight columns">
 <h3><?php echo($notification)?></h3>
 
<table class=" u-full-width">
  <thead>
    <tr>
	  <th>Matricule</th>
      <th>ID Question</th>
      <th>Numero de l'exercise</th>
      <th>Question</th>
      <th>Reponses </th>
	

    </tr>
  </thead>
  <tbody>
		<?php foreach ($answers as $index=>$answers){?>
		<tr>
			<td><?php echo $_POST['answerStudent']?></td>
			<td> <?php echo $answers[0];?> </td>
			<td> <?php echo $answers[1];?> </td>
			<td> <?php echo $answers[2];?> </td>
			<td> <?php echo $answers[3];?> </td>
		
		</tr>
		<?php }?>

  </tbody>
</table>
</div>