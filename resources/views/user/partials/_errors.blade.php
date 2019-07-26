@if ($errors->any())
    <div class="alert alert-danger" role="alert">
        <div class="container">
            <div class="alert-icon">
                <i class="now-ui-icons objects_support-17"></i>
            </div>
            <strong>Oh snap!</strong> <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">
                                <i class="now-ui-icons ui-1_simple-remove"></i>
                            </span>
            </button>
        </div>
    </div>
@endif

@if (Session::has('success'))
    <div class="alert alert-success" role="alert">
        <div class="container">
            <div class="alert-icon">
                <i class="now-ui-icons ui-2_like"></i>
            </div>
            <strong>Well done!</strong> {{ Session::get('success') }}.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">
                                <i class="now-ui-icons ui-1_simple-remove"></i>
                            </span>
            </button>
        </div>
    </div>
@endif

@if (Session::has('warning'))
    <div class="alert alert-warning" role="alert">
        <div class="container">
            <div class="alert-icon">
                <i class="now-ui-icons ui-1_bell-53"></i>
            </div>
            <strong>Warning!</strong> {{ Session::get('warning') }}.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">
                                <i class="now-ui-icons ui-1_simple-remove"></i>
                            </span>
            </button>
        </div>
    </div>
@endif