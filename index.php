<?php
    require_once('pdo.php');

    echo "<h1>Top manga:</h1>";
    $findmangas = $dbPDO->prepare("SELECT id,titre,publication FROM mangas ORDER BY publication");
    $findmangas->execute();
    $mangas = $findmangas->fetchAll(PDO::FETCH_CLASS);
    echo '<ul>';
    foreach($mangas as $manga) {
        echo '<li><a href="http://localhost/POUX_Manga_Laxxy/manga.php?id='.$manga->id.'">'.$manga->titre.'</a><br><p>'.$manga->publication.'</p>';
    }
    echo '</ul>'
?>