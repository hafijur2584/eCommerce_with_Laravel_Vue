@extends('admin.layout.master')

@section('content')
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <router-view></router-view>
          <!-- set progressbar -->
        <vue-progress-bar></vue-progress-bar>
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
@endsection