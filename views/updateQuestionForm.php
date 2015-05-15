<div class="eight columns">


<h3>Modification d'une question </h3>

<h3><?php echo $notification ?></h3>


<form action="index.php?action=updateQuestionForm" method="post" >
  <div class="row">
	<!-- topic field-->
    <div class="six columns">
      <label for="topic">Theme</label>
      <input class="u-full-width" type="text" placeholder="" name="topic">
    </div>
	
	<!-- query_nb field-->
    <div class="six columns">
      <label for="query_nb">Numero de la question </label>
	  <input class="u-full-width" type="text" placeholder="" name="query_nb">
    </div>
  </div>
	<!-- num_level field -->
  <label for="query_nb">Nombres de colonnes  </label>
	  <input class="u-full-width" type="text" placeholder="" name="num_level">
	
	<!-- question field-->
  <label for="question">Question</label>
  <textarea class="u-full-width" placeholder="Selectionner tout" name="question"></textarea>
  
	<!-- query field-->
  <label for="query">Query</label>
  <textarea class="u-full-width" placeholder="Select * FROM bd1.albums" name="query"></textarea>
  
  <input class="button-primary"  type="submit" value="MAJ">

 </form>

</div>
