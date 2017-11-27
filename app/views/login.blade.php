@include('includes.head')

<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">

                <div class="login-panel panel panel-default">
                      
                    <div class="panel-body">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        {{ HTML::image("images/logo.png", "Logo") }}
               
                        {{ Confide::makeLoginForm()->render() }}
                    </div>
                </div>
            </div>
        </div>
    </div>