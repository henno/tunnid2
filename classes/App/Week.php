<?php
/**
 * Created by PhpStorm.
 * User: henno
 * Date: 25/11/2017
 * Time: 20:39
 */

namespace App;


use DateTime;

class Week
{

    const AUGUST = 8;

    public static function getAll()
    {

        $begins = [];
        $ends = [];

        $septemberFirst = (date('m', strtotime('today')) < 9)
            ? date('Y-m-d', strtotime('1st September last year'))
            : date('Y-m-d', strtotime('1st September this year'));

        $septemberFirstMonday = date(
            'Y-m-d',
            strtotime('First Monday of', strtotime($septemberFirst))
        );

        $Date = new DateTime($septemberFirstMonday);

        while ($Date->format('m') != self::AUGUST ) {

            // Add this date to result
            $begins[] = $Date->format('Y-m-d');
            $ends[] = $Date->modify('+6 day')->format('Y-m-d');

            // Increase date
            $Date->modify('+1 day');

        }

        return [$begins, $ends];
    }

}