<?php 
require_once __DIR__ . '/database.php';
require_once __DIR__ . '/../helpers.php';

session_start();
$connection = getConnection();

$requestType = $_SERVER['REQUEST_METHOD'];

if ($requestType !== 'POST') {
    http_response_code(500);
    exit('Request type must be POST.');
}

$formInput = $_POST;
$_SESSION['form_input'] = $formInput;

$errors = [];

$name = $formInput['name'];
if(!array_key_exists('name', $formInput)) {
    $errors['name'] = 'Name Section must be filled out';
}
if (strlen($name) < 3 || strlen($name) > 40) {
    $errors['name'] = 'Name must be longer than 3 characters and less than 40.';
}

$email = $formInput['email'];
if(!array_key_exists('email', $formInput)) {
    $errors['email'] = 'Email must be entered';
}
if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors['email'] = 'Email Address must be valid.';
}

$message = $formInput['message'];
if(!array_key_exists('message', $formInput)) {
    $errors['message'] = 'Message is required';
}
if(strlen($message) < 5 || strlen($message) > 360) {
    $errors['message'] = 'Your message must be more than 5 characters and less than 360 characters.';
}

$_SESSION['form_errors'] = $errors;


if(count($errors) === 0) {
    $to = 'jakeclarke499@gmail.com';
    $subject = 'Lets Get In Touch';
    $message = '';

    mail($to, $subject, $message);
    header('Location: /../clarke_jake_portfolio/index.php');
}

prettyDump($formInput);
prettyDump($errors);

?>