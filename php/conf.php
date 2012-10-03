<?php
    $host = "localhost";
    $user = "cs453st2";
    $pass = "batmanondrugs";
    $con = mysql_pconnect($host, $user, $pass) or die(mysql_error());
    mysql_select_db("cs453db2",$con);
    
    $musicQuery = $_POST["musicQuery"];
    $movieQuery = $_POST["movieQuery"];
    $gameQuery = $_POST["gameQuery"];
    
    function search() {    
        if ("musicQuery" != "") {
            echo "Querying: " . $_POST["musicQuery"];
            $search_sql = "SELECT * FROM products WHERE music.name = musicQuery";
        } elseif ("movieQuery" != "") {
            echo "Querying: " . $_POST["movieQuery"];
            $search_sql = "SELECT * FROM products WHERE movie.name = movieQuery";
        } elseif ("gameQuery" != "") {
            echo "Querying: " . $_POST["gameQuery"];
            $search_sql = "SELECT * FROM products WHERE game.name = gameQuery";
        }
    }
?>
