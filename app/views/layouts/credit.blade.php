
@include('includes.head')
@include('includes.navc')
@include('includes.nav_credit')

<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    @yield('content')
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
@include('includes.footer')
