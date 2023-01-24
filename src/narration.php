<?php

require_once('init.php');

function getRandomNarrationText($num) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text FROM narrationtexts WHERE text_num = :num ORDER BY RAND() LIMIT 1");

    $sth->execute(array('num' => $num));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getRandomNarration() {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT * FROM narrations ORDER BY RAND() LIMIT 1");

    $sth->execute();
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}


function getNarrationGroup($id_narration) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT group_num FROM narrations where id_narration = :id");

    $sth->execute(array('id' => $id_narration));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getNarrationAuthors($id_narration) {
    $PDO = getPDO();
    $group = getNarrationGroup($id_narration);
    $sth = $PDO->prepare("SELECT DISTINCT first_name, name FROM authors JOIN narrations ON narrations.id_author = authors.id_author WHERE narrations.group_num = :group");

    $sth->execute(array('group' => $group['group_num']));
    
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

?>