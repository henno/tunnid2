<?php
/**
 * Created by PhpStorm.
 * User: henno
 * Date: 22/11/2017
 * Time: 16:11
 */

namespace App;


class School
{

    static function get($criteria = null)
    {
        $where = is_array($criteria) ? 'WHERE ' . implode('AND', escape($criteria)) : '';

        $schools = get_all("SELECT *
                        FROM schools
                        $where
                        ORDER BY school_name");

        // Return a simple array if it is the only school
        if( count($schools) == 1){
            $schools = $schools[0];
        }

        return $schools;
    }
}