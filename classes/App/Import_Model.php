<?php namespace App;

use DOMDocument;

class Import_Model
{

    public static function getLastMonday($school_id)
    {
        return get_one("SELECT MIN(day) FROM timetable WHERE school_id = $school_id");
    }

    public static function persons($school,$week)
    {

        if (!$school) {
            throw new \Exception('No such school');
        }

        // Release the session for the next PHP request
        session_write_close();

        $nadal = date('d.m.Y', strtotime($week));

        // Get timetable page html (sloow)
        $tunniplaani_html = HTTP::get("https://$school[school_short_name].siseveeb.ee/veebivormid/tunniplaan/opetajad?nadal=$nadal");

        $DOM = new DOMDocument;


        // New style
        if (preg_match("/<select name=\"opetaja\".*?>.*?<\/select>/", $tunniplaani_html, $output_array)) {

            $select_element_of_teachers = $output_array[0];

            $DOM->loadHTML($select_element_of_teachers);

            $select = $DOM->getElementByID('opetaja');
            $options = $select->getElementsByTagName('option');
            foreach ($options as $option) {
                $value = $option->getAttribute('value');
                $text = $option->textContent;

                if ($value !== '0') {

                    insert('persons', [
                        'person_name' => utf8_decode($text),
                        'person_sv_id' => $value,
                        'school_id' => $school['school_id']
                    ]);
                }


            }
            return;
        }


        // Old style
        if (preg_match("/<table class=\"data_table w_100 footable\".*?>.*?<\/table>/", $tunniplaani_html,
            $output_array)) {


            $table_of_teachers_html = $output_array[0];

            libxml_use_internal_errors(true);

            $DOM->loadHTML($table_of_teachers_html);

            $as = $DOM->getElementsByTagName('a');

            ini_set("xdebug.overload_var_dump", "off");

            foreach ($as as $a) {

                insert('persons', [
                    'person_name' => utf8_decode(preg_replace('/(.*), (.*)/', '$2 $1    ', $a->textContent)),
                    'person_sv_id' => utf8_decode(preg_replace('/.*opetaja=(.*)#.*/', '$1', $a->getAttribute('href'))),
                    'school_id' => $school['school_id']
                ]);

            }

        }

    }
}
