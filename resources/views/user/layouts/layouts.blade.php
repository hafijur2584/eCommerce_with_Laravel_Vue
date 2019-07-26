<!DOCTYPE HTML>
<html lang="en">



@include('user.partials._head')

<body>
<div id="app">
    @include('user.partials._header')

    @include('user.partials._errors')

    @section('content')

    @show

    @include('user.partials._footer')
</div>

</body>
</html>