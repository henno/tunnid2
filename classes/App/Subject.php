<?php
/**
 * Created by PhpStorm.
 * User: henno
 * Date: 23/11/2017
 * Time: 09:32
 */

namespace App;


class Subject
{

    public static function getAll($person_id, $school_id)
    {
        return get_all("SELECT day, count(timetable_id) FROM timetable WHERE school_id=$school_id");
    }
}