<?php namespace App;


class schools extends Controller
{
    public $school;

    function index()
    {
        header('Location: '.BASE_URL .'schools/tkhk');
        exit();
    }

    function view()
    {
        $this->n = 0;
        $this->person_id = empty($_GET['person_id']) ? 0 : $_GET['person_id'];
        $this->gridData = json_encode([
            ['day' => 1, 'group' => 2, 'subject' => 3, 'room' => 4, 'timetable_hours' => 5, 'daybook_hours' => 6],
            ['day' => 1, 'group' => 2, 'subject' => 3, 'room' => 4, 'timetable_hours' => 5, 'daybook_hours' => 6],
        ]); //Subject::getAll(28243);
        $this->school = School::get(['school_short_name' => $this->params[0]]);
        $this->persons = Person::getAll($this->school['school_id']);
        list($this->week_begins, $this->week_ends) = Week::getAll();
        $this->from = empty($_GET['from']) ? $this->week_begins[0] : $_GET['from'];
        $this->to = empty($_GET['to']) ? date('Y-m-d' ) : $_GET['to'];
        $this->subjects = get_all("SELECT * FROM subjects");
    }


}