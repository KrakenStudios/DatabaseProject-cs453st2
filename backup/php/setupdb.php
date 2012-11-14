<?php include 'conf.php';

    $con = mysql_connect($host,$user,$pass);
    
    if(!$con)
    {
        die('Could not connect: ' . mysql_error());
    }
    
    if(mysql_query("CREATE DATABASE IF NOT EXISTS cs453db2", $con)) {
    } else {
        echo "could not create db: " . mysql_error();
    }
    mysql_select_db("cs453db2", $con);
    $sql = "CREATE TABLE phptesttable
    (
    personId int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(personId),
    LastName varchar(15),
    FirstName varchar(15),
    Age int
    );";

    if(mysql_query($sql, $con)) {
        echo " Table successfully created! ";
    } else {
        echo " Table not created >_< ";
    }
 
    
    mysql_close($con);
 ?>
