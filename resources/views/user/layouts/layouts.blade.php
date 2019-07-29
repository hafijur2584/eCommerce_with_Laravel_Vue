<!DOCTYPE HTML>
<html lang="en">



@include('user.partials._head')

<body>
    <div id="app">

        <!-- for login modal.// -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form class="px-4 py-3" action="" method="post">
                        <div class="modal-body">

                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" value=" name="email" class="form-control" placeholder="email@example.com">

                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input id="" type="password" name="password" class="form-control" placeholder="Password">

                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Login</button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- for login modal end.// -->



        @include('user.partials._errors')

        @section('content')

        @show

        @include('user.partials._footer')
    </div>

</body>
</html>