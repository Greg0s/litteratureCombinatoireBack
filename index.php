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

/* ----- HAIKUS ----- */

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

//get random verse of haiku
// $small->post('/haiku/text', function($request, $response) {
//      $data = getRandomHaikuText($request->params['num'], $request->params['group_num']);
 
//      if(!$data){
//          $response->setData(['error'=>"Le texte n'existe pas"]);
//      }else{
//          $response->setData($data);
//      }
 
//      return $response;
//  });

//get text id of a group
$small->get('/haiku/textGroup/{group_num}', function($request, $response) {
    $data = getHaikuTextId($request->resource['group_num']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get text from id text
$small->post('/haiku/text', function($request, $response) {
    $data = getRandomHaikuText($request->params['num'], $request->params['id_haiku']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

 //get haiku author group
$small->get('/haiku/authorGroup/{group_num}', function($request, $response) {
    $data = getAuthorsGroupHaiku($request->resource['group_num']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

 //get haiku author
 $small->get('/haiku/author/{id_author}', function($request, $response) {
    $data = getAuthorHaiku($request->resource['id_author']);

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
        $response->setData(['error'=>"Le conte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get author of tale
$small->get('/tale/author/{id_tale}', function($request, $response) {
    $data = getTaleAuthor($request->resource['id_tale']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get text by its id_text
$small->get('/tale/text/{id_text}', function($request, $response) {
    $data = getTaleText($request->resource['id_text']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get choices of text
$small->get('/text/choices/{id_text}', function($request, $response) {
    $data = getTextChoices($request->resource['id_text']);

    if(!$data){
        $response->setData(['error'=>"Les choix n'existent pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});
    
/* ----- NARRATIONS ----- */

/*
//get random verse of narration
$small->get('/narrationrand/{num}', function($request, $response) {
    $data = getRandomNarrationText($request->resource['num']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
}); */

//get random narration
$small->get('/narration', function($request, $response) {
    $data = getRandomNarration();

    if(!$data){
        $response->setData(['error'=>"Erreur narration"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

// //get random verse of narration
// $small->post('/narration/text', function($request, $response) {
//      $data = getRandomNarrationText($request->params['num'], $request->params['group_num']);
//      if(!$data){
//          $response->setData(['error'=>"Le texte n'existe pas"]);
//      }else{
//          $response->setData($data);
//      }
 
//      return $response;
//  });

//get text id of a group
$small->get('/narration/textGroup/{group_num}', function($request, $response) {
    $data = getNArrationTextId($request->resource['group_num']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

//get text from id text
$small->post('/narration/text', function($request, $response) {
    $data = getRandomNarrationText($request->params['num'], $request->params['id_narration']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

 //get narration author group
 $small->get('/narration/authorGroup/{group_num}', function($request, $response) {
    $data = getAuthorsGroupNarration($request->resource['group_num']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});

 //get narration author
 $small->get('/narration/author/{id_author}', function($request, $response) {
    $data = getAuthorHaiku($request->resource['id_author']);

    if(!$data){
        $response->setData(['error'=>"L'auteur n'existe pas"]);
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


//gets the random Id of a serie of bristols
$small->get('/bristols', function($request, $response) {
    $data = getRandomSerieID();
    if(!$data){
        $response->setData(['error'=>"La série de bristols n'existe pas"]);
    }else{
        $response->setData($data);
    }
    return $response;
});


//get texts of bristols shuffled
$small->get('/bristols/serie/{idBristolGroup}', function($request, $response) {
    $data = shuffleTexts($request->resource['idBristolGroup']);

    if(!$data){
        $response->setData(['error'=>"Le texte n'existe pas"]);
    }else{
        $response->setData($data);
    }

    return $response;
});





?>