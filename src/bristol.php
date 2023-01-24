<?php

require_once('init.php');

/*function getIdAuthorFromBristols($id) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_author FROM bristols WHERE id_bristol = :id");

    $sth->execute(array('id' => $id));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

//selects all the id's of the bristols
function selectBristolsID() {

    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_bristol FROM bristols");
    $sth->execute(array('id'=>$id));

    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}*/


//returns an array with all the texts with the same bristol Id (ie from the same author)
function getbristolsFromID($id){
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text FROM bristoltexts JOIN bristollinks ON bristoltexts.id_text = bristollinks.id_text WHERE id_bristol = :id");
    $sth->execute(array('id'=>$id));
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}


//shuffle the array with all the id's and returns an id
/*function ShuffleIds(){
    $ids = selectBristolsID();
    shuffle($id);
    return $id;
}*/

//shuffles the array with all the texts from the same bristol
function shuffleTexts($id)
{
    $texts = getbristolsFromID($id);
    shuffle($texts);
    return $texts;
}

?>