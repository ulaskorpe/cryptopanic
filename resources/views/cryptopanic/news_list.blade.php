<table id="dataTable" class="table table-striped table-bordered">
    <thead>
        <tr>

            <th>Title</th>
            <th>Source</th>
            <th>Currency</th>
            <th>URL</th>
            <th>Published Date</th>
        </tr>
    </thead>

        <tr>
            <td colspan="5" class="text-center" style="text-align: center;">
                @include('cryptopanic.paginate')
            </td>

        </tr>
@foreach($news as $item)
        <tr>

            <td>{{$item['title']}}</td>

            <td>
                @if(!empty($item['source']))
                @php
                $source = json_decode($item['source']);
            @endphp
               <a href="http://www.{{ $source->domain }}" target="_blank"> {{ $source->title }}</a>

                @endif
            </td>
            <td>
                @if(!empty($item['currency']))
                @php
                $currencies = json_decode($item['currency']);
                $array = [];
            @endphp
            @foreach($currencies as $currency)

                @if(!in_array($currency->code,$array))
                        {{ $currency->code }}<br>
                        @php
                        $array[]=$currency->code;
                    @endphp
                        @endif
                    @endforeach

            @endif
            </td>
            <td> <a href="{{$item['url']}}" target="_blank">Details</a></td>
            <td>{{ \Carbon\Carbon::parse($item['published_at'])->format('d.m.Y H:i')}}</td>
        </tr>
        @endforeach

    </tbody>
</table>
