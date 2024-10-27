<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRYPTOPANIC LATEST NEWS</title>
    <!-- Bootstrap CSS -->

    <link href="{{url('assets/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{url('assets/css/bootstrap-datepicker.min.css')}}" rel="stylesheet">

    <!-- DataTables CSS -->

</head>
<body>
    <div class="container mt-2">
        <h2 class="mb-4">CryptoPanic Latest News</h2>
        <table>
            <tr>
                <td>

                    <select name="start_date" id="start_date" class="form-control" style="max-width: 200px" onchange="show_data(0)">
                        <option value="0">Start Date</option>
                        @foreach($dates as $d)
                            <option value="{{$d}}"  >{{\Carbon\Carbon::parse($d)->format('d.m.Y')}}</option>
                        @endforeach

                    </select>

                </td>
                <td>
                    <select name="end_date" id="end_date" class="form-control" style="max-width: 200px" onchange="show_data(0)">
                        <option value="0">End Date</option>
                        @foreach($dates as $d)
                        <option value="{{$d}}"  >{{\Carbon\Carbon::parse($d)->format('d.m.Y')}}</option>
                        @endforeach

                    </select>

                </td>
                <td>
                    <select name="currency" id="currency" class="form-control" style="max-width: 200px" onchange="show_data(0)">
                        <option value="0">Currency</option>
                        @foreach($currencies as $d)
                            <option value="{{$d['code']}}"  >{{$d['code']}}</option>
                        @endforeach

                    </select>
                </td>
            </tr>
        </table>


        <div id="news_div"></div>

    </div>

    <!-- jQuery and DataTables JS -->
    <script src="{{url('assets/js/jquery-3.7.1.min.js')}}"></script>
    <script src="{{url('assets/js/bootstrap.min.js')}}"></script>


    <script>
        $(document).ready(function () {
                show_data(0);

        });



        async function show_data(page=0 ){




let txt ="/news-list/"+page+"/"+$('#start_date').val()+"/"+$('#end_date').val()+"/"+$('#currency').val() ;

console.log(txt);
$.get( txt, function( data ) {
        $('#news_div').html(data);

});

}
    </script>
</body>
</html>
