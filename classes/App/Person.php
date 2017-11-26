<?php
/**
 * Created by PhpStorm.
 * User: henno
 * Date: 24/11/2017
 * Time: 09:47
 */

namespace App;


class Person
{

    public static function getAll($school_id)
    {
        return get_all("SELECT * FROM persons WHERE school_id = $school_id ORDER BY person_name");
    }
}