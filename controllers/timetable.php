<?php namespace App;

class timetable extends Controller
{
    function view()
    {

        $teacher_id = $this->params[1];
        $week_start_day = $this->params[0];
        $counting_array = [];
        $result = [];
        $school_short_name = empty($_POST['school_short_name']) ? 'tkhk' : $_POST['school_short_name'];

        // Release session file to speed up concurrent ajax calls to this action
        session_write_close();

        // Perform the slow request to SV
        $json = HTTP::get("https://$school_short_name.siseveeb.ee/veebilehe_andmed/tunniplaan?opetaja=$teacher_id&nadal=$week_start_day");


        if ($data = json_decode($json, true)) {


            // Count the hours
            foreach ($data['tunnid'] as $day => $lessons) {
                foreach ($lessons as $lesson) {

                    // Init with 0
                    if (!isset($counting_array[$day][$lesson['grupp']][$lesson['aine']])) {
                        $counting_array[$day][$lesson['grupp']][$lesson['aine']] = 0;
                    }

                    // 1 lesson = 2 hours
                    $counting_array[$day][$lesson['grupp']][$lesson['aine']] += 2;

                }
            }


            // Build result array
            foreach ($counting_array as $day => $groups) {

                foreach ($groups as $group => $subjects) {

                    foreach ($subjects as $subject => $timetable_hours) {

                        $result[] = [
                            '',
                            $day,
                            $group,
                            $subject,
                            $timetable_hours,
                            ''
                        ];
                    }
                }
            }

        }

        stop(200, $result);

        exit();
    }
}