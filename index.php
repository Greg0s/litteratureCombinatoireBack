<?php

//framework
require_once('./small-php/small/small.php');

//fichier src
require_once('./src/author.php');

$small = new Small();

//get author name from its id
$small->get('/author', function($request, $response) {
    $data = getAuthor($request->params['idAuthor']);

    if(!$data){
        $response->setData([]);
    }else{
        $response->setData($data);
    }

    return $response;
});

?>