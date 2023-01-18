<?php

require_once('init.php');

function getAuthor($id) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT first_name, name FROM authors WHERE id_author = :id");

    $sth->execute(array('id' => $id));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}


?>