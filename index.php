<?php

//framework
require_once('./small-php/small/small.php');

//fichier src
require_once('./src/author.php');
require_once('./src/bristol.php');

$small = new Small();

$small->get('/', function($request, $response) {

    $response->setData(['message'=>'pong']);
    
    return $response;
});

//get author name from its id
$small->get('/author', function($request, $response) {
    $data = getAuthor($request->params['idAuthor']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

?>