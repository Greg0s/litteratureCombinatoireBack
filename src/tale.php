<?php

require_once('init.php');

function getRandomTale() {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_tale, id_first_text, title FROM tales ORDER BY RAND() LIMIT 1");

    $sth->execute();

    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getTaleAuthor($id_tale) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT first_name, name from authors where id_author = (SELECT id_author FROM tales WHERE id_tale = :id)");

    $sth->execute(array('id' => $id_tale));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

// function getTaleTextsIds($id) {
//     $PDO = getPDO();
//     $sth = $PDO->prepare("SELECT text, text_num from taletexts where id_text = (SELECT id_text FROM talelinks WHERE id_tale = :id) AND text_num = 1)");
//     SELECT 
//     $sth->execute(array('num' => $num));
    
//     $result = $sth->fetch(PDO::FETCH_ASSOC);
//     return $result;
// }

// function getTaleTextsIds($id) {
//     $PDO = getPDO();
//     $sth = $PDO->prepare("SELECT id_text FROM talelinks WHERE id_tale = :id)");

//     $sth->execute(array('num' => $num));
    
//     $result = $sth->fetch(PDO::FETCH_ASSOC);
//     return $result;
// }

function getTaleText($id_text){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text FROM taletexts WHERE id_text = :id");

    $sth->execute(array('id' => $id_text));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result; 
}

function getTextChoices($id_text){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT choice_text, id_choice, id_text_next FROM talechoices WHERE id_text_previous = :id");

    $sth->execute(array('id' => $id_text));
    
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result; 
}

// function getTextChoicesId(){
//     $PDO = getPDO();
//     $sth = $PDO->prepare("SELECT id_choice FROM talechoices WHERE id_text_previous = :id)");

//     $sth->execute(array('id' => $id, 'num' => $num));
    
//     $result = $sth->fetch(PDO::FETCH_ASSOC);
//     return $result; 
// }

// function getChoiceNextText($id){
//     $PDO = getPDO();
//     $sth = $PDO->prepare("SELECT id_text_next FROM talechoices WHERE id_choice = :id)");

//     $sth->execute(array('id' => $id, 'num' => $num));
    
//     $result = $sth->fetch(PDO::FETCH_ASSOC);
//     return $result; 
// }

?>