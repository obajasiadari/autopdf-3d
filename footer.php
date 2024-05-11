      
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script>
        $(document).ready(function() {
            $("#addWorks").click(function() {
                $("#works").append('<input type="text" name="works[]" required><br>');
            });
        });
    </script>
  </body>
</html>