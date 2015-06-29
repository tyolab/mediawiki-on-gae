<?php

function redirect($url, $statusCode = 303)
{
   header('Location: ' . $url, true, $statusCode);
   die();
}

$path = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

$file = '/wiki/';

redirect($file);
