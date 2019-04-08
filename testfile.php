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
<input type="text" name="testArray[]" value="x">
<input type="text" name="testArray[]" value="y">
<input type="text" name="testArray[]" value="z">

    <script>
      function test() {
        var psharr = [];
        $('input[name="testArray[]"]').each(function(indexCounter, thisElement){
          console.log($(thisElement).val());
          psharr.push($(thisElement).val());
          // console.log(psharr);
        });
        testparam(psharr);
}

      function testparam(arrayy) {
        console.log(arrayy);
      }
      $(function(){
        test();
      });
    </script>
</body>
</html>