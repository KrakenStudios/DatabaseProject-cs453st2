<html>
<body>
Welcome to FYH Search!
<br />
<?php 
include '../php/conf.php';
    $search = NULL;
    $searchType = NULL;
    if(!is_null($_POST["musicQuery"])) {
        $search = $_POST["musicQuery"];
        $searchType = "music";
    } elseif (!is_null($_POST["movieQuery"])) {
        $search = $_POST["movieQuery"];
        $searchType = "movie";
    } elseif (!is_null($_POST["gameQuery"])) {
        $search = $_POST["gameQuery"];
        $searchType = "game";
    }
    $sql = mysql_query("select * from Products where ProductName='$search' or
                        ProductDescription like '%$search%' and 
                        ProductType like '%$searchType%'");
    if(!is_null($search)) {
         while ($row = mysql_fetch_array($sql)) {
            echo 'ID: '.$row['Id'];
            echo '<br/> UPCCode: '.$row['UPCCode'];
            echo '<br/> Brand: '.$row['ProductBrand'];
            echo '<br/> Type: '.$row['ProductType'];
            echo '<br/> Name: '.$row['ProductName'];
            echo '<br/> Description: '.$row['ProductDescription'];
            echo '<br/> Sell Price: '.$row['ProductSellPrice'];
            echo '<br/> Buy Price: '.$row['ProductWholesalePrice'];
            echo '<br/> # in stock: '.$row['AmountInStock'];
            echo '<br/> Department: '.$row['Department'];
            echo '<br/> Available: '.$row['InStock'];
            echo '<br/><br/>';
        }
    } else {
        echo 'enter a search term!';
   } 
?>

</body>
</html>
