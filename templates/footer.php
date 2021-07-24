    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="<?php echo BURL;?>assets/chosen/chosen.jquery.min.js"></script>
    <script src="<?php echo BURL;?>assets/ckeditor/ckeditor.js"></script>
    <script>
        $(document).ready(function(){
            $(".chosen-select").chosen();
            // CKEDITOR.replace('description');
        });
        var roxyFileman = '<?php echo BURL; ?>/fileman/index.html'; 
        $(function(){
        CKEDITOR.replace( 'description',{filebrowserBrowseUrl:roxyFileman,
                                        filebrowserImageBrowseUrl:roxyFileman+'?type=image',
                                        removeDialogTabs: 'link:upload;image:upload'}); 
        });
        function preview(e){
            let img = document.getElementById('img');
            img.src = URL.createObjectURL(e.target.files[0]);
        }

    </script>
</body>
</html>