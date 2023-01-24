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

//get random haiku
$small->get('/haiku', function($request, $response) {
    $data = getRandomHaiku();

    if(!$data){
        $response->setData(['error'=>"Erreur haiku"]);
    }else{
        $response->setData($data);
    }

    return $response;
});
/* ----- HAÏKUS ----- */

//get random verse of haiku
$small->post('/haiku/text', function($request, $response) {
     $data = getRandomHaikuText($request->params['num'], $request->params['group_num']);
 
     if(!$data){
         $response->setData(['error'=>"Le haïku n'existe pas"]);
     }else{
         $response->setData($data);
     }
 
     return $response;
 });

 //get haiku author group
$small->get('/haiku/authorGroup/{group_num}', function($request, $response) {
    $data = getAuthorsGroup($request->resource['group_num']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

 //get haiku author
 $small->get('/haiku/author/{group_num}', function($request, $response) {
    $data = getAuthorHaiku($request->resource['group_num']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});
 /* ----- SONNETS ----- */

 //get random verse of sonnet
$small->get('/sonnet/{num}', function($request, $response) {
    $data = getRandomSonnetText($request->resource['num']);

    if(!$data){
        $response->setData(['error'=>"Le vers de sonnet n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

/* ----- TALES ----- */

//get random id of tale + its title
$small->get('/tale', function($request, $response) {
    $data = getRandomTale();

    if(!$data){
        $response->setData(['error'=>"Le conte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get tale by id
$small->get('/talebyid/{id}', function($request, $response) {
    $data = getTale($request->resource['id']);

    if(!$data){
<<<<<<< HEAD
        $response->setData(['error'=>"Le conte n'existe pas"]);
=======
        $response->setData(['error'=>"Cet id de conte n'existe pas"]);
>>>>>>> 7cb330d973167364a1c38515fa74cfd9e23d11a2
    }else{
        $response->setData($data);
    }

    return $response;
});

//get author of tale
$small->get('/tale/author/{id_tale}', function($request, $response) {
    $data = getTaleAuthor($request->resource['id_tale']);

    if(!$data){
<<<<<<< HEAD
        $response->setData(['error'=>"L'auteur n'existe pas"]);
=======
        $response->setData(['error'=>"Cet auteur de conte n'existe pas"]);
>>>>>>> 7cb330d973167364a1c38515fa74cfd9e23d11a2
    }else{
        $response->setData($data);
    }

    return $response;
});

//get text by its id_text
$small->get('/tale/text/{id_text}', function($request, $response) {
    $data = getTaleText($request->resource['id_text']);

    if(!$data){
        $response->setData(['error'=>"Le texte de conte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get choices of text
$small->get('/text/choices/{id_text}', function($request, $response) {
    $data = getTextChoices($request->resource['id_text']);

    if(!$data){
<<<<<<< HEAD
        $response->setData(['error'=>"Les choix n'existent pas"]);
=======
        $response->setData(['error'=>"Ce choix n'existe pas"]);
>>>>>>> 7cb330d973167364a1c38515fa74cfd9e23d11a2
    }else{
        $response->setData($data);
    }

    return $response;
});
    
/* ----- NARRATIONS ----- */

//get random narration
$small->get('/narrationrand/{num}', function($request, $response) {
    $data = getRandomNarrationText($request->resource['num']);
    if(!$data){
        $response->setData(['error'=>"La narration n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get group of narration
$small->get('/narration/group/{id_narration}', function($request, $response) {
    $data = getNarrationGroup($request->resource['id_narration']);
    if(!$data){
        $response->setData(['error'=>"Le groupe n'existe pas"]);
    }else{
        $response->setData($data);
    }
    return $response;
});

//get author of narration
$small->get('/narration/authors/{id_narration}', function($request, $response) {
    $data = getNarrationAuthors($request->resource['id_narration']);
    if(!$data){
        $response->setData(['error'=>"Cet auteur de narration n'existe pas"]);
    }else{
        $response->setData($data);
    }
    return $response;
});

/* ----- AUTHORS ----- */

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

?>