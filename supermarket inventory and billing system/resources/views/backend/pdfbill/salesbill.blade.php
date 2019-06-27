<!doctype html>
<html><head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head><body>
<p align="center"><strong>Grocery Management System (GMS)</strong></p>
<p align="center">Baneshwor Kathmandu</p>
<p align="center">PH: 977-01-4783838</p>
<p align="center">PAN No: 603655986</p>
<hr>
<p>Date: 2017-05-09</p>
<hr>
<table border="0" align="center">
    <thead>
    <tr>
        <th>S.N.</th>
        <th>Product Name</th>
        <th>Quantity</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <?php $i=1 ?>
    @foreach($report as $all)
    <tr>
        <td>{{$i++}}</td>
        <td>{{$all->name}}</td>
        <td>{{$all->quantity}}</td>
        <td>{{$all->price}}</td>
    </tr>
    @endforeach
    <tr>
        <td colspan="3"> Grand Total </td>
        <td>
            <?php $total=0 ?>
            @if($report)
                @foreach($report as $s)
                    @php
                        $price = $s->price;
                        $total += $price;
                    @endphp
                @endforeach
                Rs. {{$total}}
            @endif
        </td>
    </tr>
    </tbody>
</table>
<br>
<p>prepared by: Srada &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time: 12:06:46</p>
<p align="center">Thank You</p>
</body></html>


