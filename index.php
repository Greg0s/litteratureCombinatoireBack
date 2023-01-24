<?php

//framework
require_once('./small-php/small/small.php');

//fichier src
require_once('./src/author.php');
require_once('./src/haiku.php');
require_once('./src/sonnet.php');
require_once('./src/tale.php');
require_once('./src/narration.php');
require_once('./src/bristol.php');

$small = new Small();

$small->get('/', function($request, $response) {

    $response->setData(['message'=>'pong']);
    
    return $response;
});

//get random verse of haiku
$small->get('/haiku/{num}', function($request, $response) {
     $data = getRandomHaikuText($request->resource['num']);
 
     if(!$data){
         $response->setData(['error'=>"Le texte n'existe pas"]);
     }else{
         $response->setData($data);
     }
 
     return $response;
 });

 //get random verse of sonnet
$small->get('/sonnet/{num}', function($request, $response) {
    $data = getRandomSonnetText($request->resource['num']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get random id of tale
$small->get('/tale', function($request, $response) {
    $data = getRandomTaleId();

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get author of tale
$small->get('/tale/author/{id}', function($request, $response) {
    $data = getTaleAuthor($request->resource['id']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get text of tale
$small->get('/tale/text/{id}', function($request, $response) {
    $data = getTaleText($request->resource['id']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});
    
    
//get random verse of narration
$small->get('/narration/{num}', function($request, $response) {
    $data = getRandomNarrationText($request->resource['num']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get author name from its id
$small->get('/author/{idAuthor}', function($request, $response) {
    $data = getAuthor($request->resource['idAuthor']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});



//gets random pack of bristols and returns an array with all the texts
$small->get('/bristols/{idBristolGroup}', function($request, $response) {
    $data = shuffleTexts($request->resource['idBristolGroup']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

?>