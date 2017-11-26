<?php namespace App;

/**
 * Created by PhpStorm.
 * User: henno
 * Date: 26/11/2017
 * Time: 13:52
 */


class settings extends Controller
{
    function index(){
        list($this->week_begins, $this->week_ends) = Week::getAll();
        $this->from = empty($_GET['from']) ? $this->week_begins[0] : $_GET['from'];
        $this->to = empty($_GET['to']) ? date('Y-m-d' ) : $_GET['to'];

    }
}