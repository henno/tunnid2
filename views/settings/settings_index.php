<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css"
      rel="stylesheet"/>
<style>
    .week {
        min-width: 121px;
    }
</style>

<h1>Hooldus</h1>


<form class="form-inline">
    <div class="form-group">
    Impordi õpetajad, kes on andnud koolis

        <select class="form-control select2 week" id="school">
            <?php foreach ($schools as $school): ?>
                <option value="<?= $school['school_id'] ?>">
                    <?= $school['school_short_name'] ?></option>
            <?php endforeach ?>
        </select>
        tunde alates
    </div>
    <div class="form-group">
        <select class="form-control select2 week" id="begin-day">
            <?php foreach ($week_begins as $week): ?>
                <option value="<?= $week ?>"
                    <?= $week == $from ? 'selected' : '' ?>>
                    <?= $week ?></option>
            <?php endforeach ?>
        </select>
    </div>
    kuni
    <div class="form-group">
        <select class="form-control select2 week" id="end-day">
            <?php foreach ($week_ends as $week): ?>
                <option value="<?= $week ?>"
                    <?= $week == $to ? 'selected' : '' ?>>
                    <?= $week ?></option>
            <?php endforeach ?>
        </select>
    </div>.
    <p></p>
    <div class="form-group">
        <button id="btnImportPersons" type="button" class="btn btn-success btn-lg">Impordi õpetajad</button>
    </div>

</form>


<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.2/moment.min.js"></script>
<script src="assets/js/maximize-select2-height.min.js"></script>
<script>

    $('.select2').select2({
        theme: "bootstrap"
    }).maximizeSelect2Height();

    $('#btnImportPersons').on('click', function (e) {

        // Init vars
        var beginWeek = $('#begin-day');
        var endWeek = $('#end-day');
        var weeks = [];
        var weeksDone = 0;
        var weeksCount = 0;
        var day = moment(beginWeek.val());
        var endDay = moment(endWeek.val());

        // Count weeks
        while (day.isBefore(endDay)) {
            weeks.push(day.format('YYYY-MM-DD'));
            day.add(7, 'days');
        }

        weeksCount = weeks.length;

        for (week = 0; week < weeksCount; week++) {

            ajax('import/persons', {week:weeks[week], school_id: $('#school').val()}, function (res) {

                weeksDone++;

                // Calculate progress done
                var percent = weeksDone + '/' + weeksCount;

                // Update progress bar
                $('#progress-bar').css('width', percent);

                // When this is the last AJAX callback, redraw
                if (weeksDone === weeksCount) {

                    alert('Done!');

                }
            });

        }

        return false;

    });
</script>
