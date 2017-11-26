<?php namespace App;

use DOMDocument;


/**
 * Created by PhpStorm.
 * User: henno
 * Date: 22/11/2017
 * Time: 15:14
 */
class import extends Controller
{
    function persons()
    {

        // Sv shows only teachers who have lessons on given week
        $week = empty($_POST['week']) ? date('Y-m-d', strtotime("last Monday")) : $_POST['week'];
        $school_id = empty($_POST['school_id']) ? null : $_POST['school_id'];

        if (!$school_id) {
            stop(400, "Bad school_id");
        }

        $school = get_first("SELECT * FROM schools WHERE school_id = $school_id");

        Import_Model::persons($school, $week);

        stop(200);
    }

}