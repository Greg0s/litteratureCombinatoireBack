<?php

require_once('init.php');

function getRandomSonnetText($num) {
    $PDO = getPDO();
    $sth = $PDO->prepare("SELECT text FROM sonnettexts WHERE text_num = :num ORDER BY RAND() LIMIT 1");

    $sth->execute(array('num' => $num));
    
    $result = $sth->fetch(PDO::FETCH_ASSOC);
    return $result;
}

?>

