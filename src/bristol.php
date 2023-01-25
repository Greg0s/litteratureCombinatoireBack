<?php

require_once('init.php');

/*function getIdAuthorFromBristols($id) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_author FROM bristols WHERE id_bristol = :id");

    $sth->execute(array('id' => $id));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}*/


//selects a random serie of bristols
function getRandomSerieID() {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_bristol, id_author FROM bristols ORDER BY Rand()");
    $sth->execute();
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}


//returns an array with all the texts with the same bristol Id (ie from the same author)
function getTextsFromSerie($id){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text FROM bristoltexts WHERE id_bristol = :id");
    $sth->execute(array('id'=>$id));
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}


//shuffles the array with all the texts from the same bristol
function shuffleTexts($id)
{
    $texts = getTextsFromSerie($id);
    shuffle($texts);
    return $texts;
}

?>