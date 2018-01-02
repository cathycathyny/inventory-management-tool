<?php
  if(!isset($page_title)) { $page_title = 'Staff Area'; }
?>

<!doctype html>

<html lang="en">
  <head>
    <title><?php echo h($page_title); ?></title>
    <meta charset="utf-8">
    <link rel="stylesheet" media="all" href="<?php echo url_for('/css/reset.css'); ?>" />
    <link rel="stylesheet" media="all" href="<?php echo url_for('/css/home.css'); ?>" />
    <link rel="stylesheet" media="all" href="<?php echo url_for('/css/addpage.css'); ?>" />
    <link rel="stylesheet" media="all" href="<?php echo url_for('/css/removePage.css'); ?>" />
    <link rel="stylesheet" media="all" href="<?php echo url_for('/css/nav.css'); ?>" />
    <link rel="stylesheet" media="all" href="<?php echo url_for('/css/inventoryPage.css'); ?>" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/search.js"></script>
    <script type="text/javascript" src="js/addInventory.js"></script>
    <script type="text/javascript" src="js/removeInventory.js"></script>
    <script type="text/javascript" src="js/filter.js"></script>
    <script type="text/javascript" src="js/home.js"></script>

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  </head>

  <body>
