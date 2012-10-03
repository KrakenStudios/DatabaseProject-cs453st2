<?php include 'conf.php';
    echo("attempt to establish a connection to the db server\n");
    $con = mysql_connect($host,$user,$pass);
    
    if(!$con)
    {
        die('could not connect: ' . mysql_error());
    }
    mysql_close($con);
    echo("connection closed!");
 ?>
