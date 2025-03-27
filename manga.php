<?php
    require_once('pdo.php');

    $id = $_GET['id'];
    $findmangas = $dbPDO->prepare("SELECT id,titre,publication,descr FROM mangas WHERE id = :idmanga");
    $findmangas->execute([
        'idmanga' => $id,
    ]);
    $findpersos = $dbPDO->prepare("SELECT nom FROM personnages WHERE id_manga = :idmanga");
    $findpersos->execute([
        'idmanga' => $id,
    ]);
    $mangas = $findmangas->fetchAll(PDO::FETCH_CLASS);
    $persos = $findpersos->fetchAll(PDO::FETCH_CLASS);
    foreach($mangas as $manga) {
        $titre = $manga->titre;
        $publication = $manga->publication;
        $descr = $manga->descr;
    }
    echo '<h1>'.$titre.'</h1><p>'.$publication.'</p><p>'.$descr.'</p><ul>';
    foreach($persos as $perso) {
        echo '<li><a href="http://localhost/POUX_Manga_Laxxy/index.php">'.$perso->nom.'</a>';
    }
    echo '</ul>'
?>