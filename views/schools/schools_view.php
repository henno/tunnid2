<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css"
      rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.16/css/dataTables.bootstrap.min.css"
      rel="stylesheet">

<style>
    .week {
        min-width: 121px;
    }

    .data-table td:nth-child(1) {
        text-align: right;
    }

    .data-table tfoot td {
        font-weight: bold;
    }
</style>


<div class="row" id="vue">

    <h1><?= $school['school_name'] ?></h1>


    <div class="filters">
        <form class="form-inline">
            <div class="form-group">
                <select class="form-control select2" id="teacher">
                    <?php foreach ($persons as $person): ?>
                        <option value="<?= $person['person_sv_id'] ?>"
                            <?= $person['person_sv_id'] == $person_id ? 'selected' : '' ?>>
                            <?= $person['person_name'] ?>
                        </option>
                    <?php endforeach ?>
                </select>
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
            <div class="form-group">
                <select class="form-control select2 week" id="end-day">
                    <?php foreach ($week_ends as $week): ?>
                        <option value="<?= $week ?>"
                            <?= $week == $to ? 'selected' : '' ?>>
                            <?= $week ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="btn-group btn-group-sm">
                <a href="#" class="btn btn-default" id="update-database"><i
                            class="glyphicon glyphicon-refresh"></i></a>
            </div>
        </form>
    </div>

    <div class="table-responsive">

        <table class="table table-bordered table-striped data-table">
            <thead>
            <tr>
                <th>#</th>
                <th>Päev</th>
                <th>Grupp</th>
                <th>Aine</th>
                <th title="Kui palju on sellel päeval tunniplaanis selle aine tunde">Tunniplaanis tunde</th>
                <th title="Kui palju on sellel päeval päevikus selle aine tunde">Päevikus tunde</th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            </tfoot>
            <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            </tbody>
        </table>

    </div>

</div>


<?php //require 'templates/vue/period-selection.php' ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.2/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/URI.js/1.19.0/URI.min.js"></script>
<script src="assets/js/maximize-select2-height.min.js"></script>

<script>

    var dt = null;


    $('.select2').select2({
        theme: "bootstrap"
    }).maximizeSelect2Height();

    // Init DataTable
    dt = $('.data-table').DataTable({
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Estonian.json"
        },
        "search": true,
        "paging": false,
        initComplete: function () {
            this.api().columns([1, 2, 3]).every(function () {
                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo($(column.footer()).empty())
                    .on('change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search(val ? '^' + val + '$' : '', true, false)
                            .draw();
                    });

                column.data().unique().sort().each(function (d, j) {
                    select.append('<option value="' + d + '">' + d + '</option>')
                });
            });
        },
        "footerCallback": function (row, data, start, end, display) {

            var api = this.api();

            // Create select dropdowns for filtering fields
            this.api().columns([1, 2, 3]).every(function (colNr) {

                var column = this;
                var select = $('<select><option value=""></option></select>')
                    .appendTo($(column.footer()).empty())
                    .on('change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search(val ? '^' + val + '$' : '', true, false)
                            .draw();
                    });

                column.data().unique().sort().each(function (d, j) {
                    if(column.search() === '^'+d+'$'){
                        select.append( '<option value="'+d+'" selected="selected">'+d+'</option>' )
                    } else {
                        select.append( '<option value="'+d+'">'+d+'</option>' )
                    }
                });


            });


            // Calculate total for last two columns
            for (col = 4; col <= 5; col++) {

                total = api
                    .column(col, {search: 'applied'})
                    .data()
                    .reduce(function (a, b) {
                        return parseInt(a) + parseInt(b);
                    }, 0);


                // Update footer
                $(api.column(col).footer()).html(total);
            }

        }
    })
    ;

    // Make the first column to be the index column
    dt.on('order.dt search.dt', function () {
        dt.column(0, {search: 'applied', order: 'applied'}).nodes().each(function (cell, i) {
            cell.innerHTML = i + 1 + '.';
        });
    });

    $('#teacher').on("select2:select", function (e) {
        location.href = new URI().setSearch("person_id", $(this).val()).normalizeSearch(); // returns the URI instance for chaining
    });

    $('#begin-day').on("select2:select", function (e) {
        location.href = new URI().setSearch("from", $(this).val()).normalizeSearch(); // returns the URI instance for chaining
    });

    $('#end-day').on("select2:select", function (e) {
        location.href = new URI().setSearch("to", $(this).val()).normalizeSearch(); // returns the URI instance for chaining
    });

    $('#update-database').on('click', function (e) {

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

        // Clear table
        dt.clear();

        for (week = 0; week < weeksCount; week++) {

            ajax('timetable/view/' + weeks[week] + '/' + $('#teacher').val(), {school_short_name: '<?=$school['school_short_name']?>'}, function (res) {

                weeksDone++;

                // Calculate progress done
                var percent = weeksDone + '/' + weeksCount;

                // Update progress bar
                $('#progress-bar').css('width', percent);

                // Add this row to table
                console.log(res.data);
                if (typeof res.data !== 'undefined') {

                    res.data.forEach(function (row) {
                        dt.row.add(row);
                    });
                }

                // When this is the last AJAX callback, redraw
                if (weeksDone === weeksCount) {

                    // Order table by date
                    dt.order([1, 'asc']);

                    // Redraw
                    dt.draw();

                }
            });

        }

        return false;
    });


</script>