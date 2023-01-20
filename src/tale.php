<?php

require_once('init.php');

function getRandomTaleId() {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_tale FROM tales ORDER BY RAND() LIMIT 1");

    $sth->execute();

    $result = $sth->fetch(PDO::FETCH_ASSOC);
    echo $result;
    return $result;
}

function getTaleTextsIds($id) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_text FROM talelinks WHERE id_tale = :id)");

    $sth->execute(array('num' => $num));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

function getTaleText($id, $num){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text FROM taletexts WHERE id_text = :id AND text_num = :num)");

    $sth->execute(array('id' => $id, 'num' => $num));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result; 
}

function getTextChoices($id){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT choice_text, id_choice, id_text_next FROM talechoices WHERE id_text_previous = :id)");

    $sth->execute(array('id' => $id, 'num' => $num));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
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