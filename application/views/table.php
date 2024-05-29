<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.7/css/dataTables.dataTables.css" />
    <title>Document</title>
</head>
<body>
    <table id="memListTable" class="display" style="width:100%">
        <thead>
            <tr>
                <th>#</th>
                <th>First name</th>
                <th>Middle name</th>
                <th>Last Name</th>
                <th>Birthdate</th>
                <th>Age</th>
                <th>Gender</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th></th>
                <th>First name</th>
                <th>Middle name</th>
                <th>Last Name</th>
                <th>Birthdate</th>
                <th>Age</th>
                <th>Gender</th>
            </tr>
        </tfoot>
    </table>
</body>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/2.0.7/js/dataTables.js"></script>
<script>
    $(document).ready(function(){
        $('#memListTable').DataTable({
            // Processing indicator
            "processing": true,
            // DataTables server-side processing mode
            "serverSide": true,
            // Initial no order.
            "order": [],
            // Load data from an Ajax source
            "ajax": {
                "url": "table/getList", // 1.controler table
                "type": "POST"
            },
            //Set column definition initialisation properties
            "columnDefs": [{ 
                "targets": [0],
                "orderable": false
            }]
        });
    });
</script>
</html>