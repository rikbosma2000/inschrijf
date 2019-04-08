<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>

<input type="radio" name="editie" value="natuur">
<input type="radio" name="editie" value="zee">
<input type="radio" name="editie" value="strand">

<p>natuur <input class="natuur" type="text" id="natuurgeld"></p>
<p>natuur <input class="natuur" type="text" id="natuuryolo"></p>
<p>natuur <input class="natuur" type="text" id="natuurhaha"></p>

<p>zee <input class="zee" type="text" id="zeegeld"></p>
<p>zee <input class="zee" type="text" id="zeeyolo"></p>
<p>zee <input class="zee" type="text" id="zeehaha"></p>

<p>strand <input class="strand" type="text" id="strandgeld"></p>
<p>strand <input class="strand" type="text" id="strandyolo"></p>
<p>strand <input class="strand" type="text" id="strandhaha"></p>

<?php 
  if (isset($_GET['editie']) && !empty($_GET['editie'])) {
    $editie = $_GET['editie'];
    
    if ($editie === 'natuur') {
      echo "<script>
      $('.zee').css('display', 'none');
      $('.strand').css('display', 'none');
      $('.natuur').css('display', 'block');
      </script>";
    } else if ($editie === 'zee') {
      echo "<script>
      $('.zee').css('display', 'block');
      $('.strand').css('display', 'none');
      $('.natuur').css('display', 'none'); 
      </script>";
    } else if ($editie === 'strand') {
      echo "<script>
      $('.zee').css('display', 'none');
      $('.strand').css('display', 'block');
      $('.natuur').css('display', 'none');  
      </script>";
    } else {
      echo "<script>
      $('.zee').css('display', 'block');
      $('.strand').css('display', 'block');
      $('.natuur').css('display', 'block'); 
      </script>";
    }
  }
?>

<script>

  $('input[type="radio"]').click(function() {
      var yz = $(this).val();

      if (yz === 'natuur') {
        $('.zee').css('display', 'none');
        $('.strand').css('display', 'none');
        $('.natuur').css('display', 'block');
      } else if(yz === 'zee') {
        $('.zee').css('display', 'block');
        $('.strand').css('display', 'none');
        $('.natuur').css('display', 'none');       
      } else if(yz === 'strand') {
        $('.zee').css('display', 'none');
        $('.strand').css('display', 'block');
        $('.natuur').css('display', 'none');  
      } else {
        $('.zee').css('display', 'block');
        $('.strand').css('display', 'block');
        $('.natuur').css('display', 'block');  
      }
  });
</script>
</body>
</html>