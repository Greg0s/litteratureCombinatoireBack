<?php

require_once('init.php');

function getRandomNarration(){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT group_num FROM narrations ORDER BY RAND() LIMIT 1");

    $sth->execute();
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getRandomNarrationText($num, $group_num) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text, id_narration FROM narrationtexts WHERE text_num = :num AND id_text = (SELECT id_text from narrations WHERE group_num = :group_num ORDER BY RAND() LIMIT 1) ORDER BY RAND() LIMIT 1");

    $sth->execute(array('num' => $num));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getNarrationGroup($group_num){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT DISTINCT id_author FROM narrations WHERE group_num = :groupnum");

    $sth->execute(array('groupnum' => $group_num));
    
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function getAuthorNarration($id_author){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT first_name, name FROM authors WHERE id_author = :id");

    $sth->execute(array('id' => $id_author));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

/*
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
*/
?>