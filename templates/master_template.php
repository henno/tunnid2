<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<?= BASE_URL ?>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title><?= PROJECT_NAME ?></title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/components/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery UI core CSS -->
    <link href="vendor/components/jqueryui/themes/base/jquery-ui.min.css" rel="stylesheet">

    <!-- Site core CSS -->
    <link href="assets/css/main.css" rel="stylesheet">

    <style>
        body {
            padding-top: 70px;
        }
    </style>


    <!-- jQuery -->
    <script src="vendor/components/jquery/jquery.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->


</head>

<body>

<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">SVanalyzer</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <?php foreach ($schools as $master_template_school): ?>
                    <li <?= $controller == 'schools' && $params[0] == $master_template_school['school_short_name'] ? 'class="active"' : '' ?>>
                        <a href="schools/<?= $master_template_school['school_short_name'] ?>"><?= $master_template_school['school_name'] ?></a>
                    </li>
                <?php endforeach ?>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="settings"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
                <li title="<?= __('Log out') ?> <?= $auth->name ?>"><a href="logout"><span
                                class="glyphicon glyphicon-log-out" aria-hidden="true"></a></li>
        </div>
        <!--/.nav-collapse -->
    </div>
    <div id="progress-bar" style="height: 4px; background-color: red; width: 0"></div>
</nav>
<div class="container">

    <!-- Main component for a primary marketing message or call to action -->
    <?php if (!file_exists("views/$controller/{$controller}_$action.php")) {
        error_out('The view <i>views/' . $controller . '/' . $controller . '_' . $action . '.php</i> does not exist. Create that file.');
    } ?>
    <?php @require "views/$controller/{$controller}_$action.php"; ?>

</div>
<!-- /container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="vendor/components/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/components/jqueryui/jquery-ui.min.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
<?php require 'system/error_translations.php' ?>