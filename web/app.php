<?php

use Symfony\Component\ClassLoader\ApcClassLoader;
use Symfony\Component\HttpFoundation\Request;
//use Symfony\Component\Debug\Debug;

//$loader = require_once __DIR__.'/../app/bootstrap.php.cache';

//$loader = new ApcClassLoader('sylius', $loader);
//$loader->register(true);
require_once __DIR__.'/../app/bootstrap.php.cache';
require_once __DIR__.'/../app/AppKernel.php';
//require_once __DIR__.'/../app/AppCache.php';
//Debug::enable();
$kernel = new AppKernel('prod', true);
$kernel->loadClassCache();
//$kernel = new AppCache($kernel);

$request = Request::createFromGlobals();
Request::enableHttpMethodParameterOverride();

$response = $kernel->handle($request);
$response->send();

$kernel->terminate($request, $response);
