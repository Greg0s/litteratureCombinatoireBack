<?php

require_once('init.php');

function getIdAuthorFromBristols($id) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT id_author FROM bristols WHERE id_bristol = :id");

    $sth->execute(array('id' => $id));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

?>