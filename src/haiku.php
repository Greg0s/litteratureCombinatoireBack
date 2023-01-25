<?php

require_once('init.php');

function getRandomHaiku(){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT group_num FROM haikus ORDER BY RAND() LIMIT 1");

    $sth->execute();
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getRandomHaikuText($num, $group_num) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text, id_haiku FROM haikutexts WHERE text_num = :num AND id_text = (SELECT id_text from haikus WHERE group_num = :group_num ORDER BY RAND() LIMIT 1) ORDER BY RAND() LIMIT 1");

    $sth->execute(array('num' => $num, 'group_num' => $group_num));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getAuthorsGroupHaiku($group_num){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT DISTINCT id_author FROM haikus WHERE group_num = :groupnum");

    $sth->execute(array('groupnum' => $group_num));
    
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function getAuthorHaiku($id_author){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT first_name, name FROM authors WHERE id_author = :id");

    $sth->execute(array('id' => $id_author));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

// function getHaikuAuthor($id_haiku){
//     $PDO = getPDO();
//     $sth = $PDO->prepare("SELECT name, first_name FROM authors WHERE id_author = (SELECT id_author from haikus WHERE id_haiku = :id)");

//     $sth->execute(array('id' => $id_haiku));
    
//     $result = $sth->fetch(PDO::FETCH_ASSOC);
//     return $result;
// }

?>