<nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="{{ URL::to('member') }}">
                            <i class="fa fa-home fa-fw"></i>
                            Member
                        </a>
                    </li>
                    <li>
                        <a href="{{ URL::to('memberloans') }}">
                            <i class="fa fa-tasks fa-fw"></i>
                            Loans
                        </a>
                    </li>
                    <li>
                        <a href="{{ URL::to('loanliabilities') }}">
                            <i class="fa fa-gavel"></i>
                            Liabilities
                        </a>
                    </li>
                    <li>
                        <a href="{{ URL::to('guarantorapproval') }}">
                            <i class="fa fa-user fa-fw"></i> 
                            Guarantor Approval
                        </a>
                    </li>
                    <li>
                        <a href="{{ URL::to('savings') }}">
                            <i class="glyphicon glyphicon-folder-close fa-fw"></i>
                            Savings
                        </a>
                    </li>
                    <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-briefcase fa-fw">                            
                        </i>Investments 
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="nav" id="side-menu">                                                                                    
                        <li>
                            <a href="{{ URL::to('projects/orders/show') }}"><i class="fa fa-pie-chart"></i>
                                Project Orders
                            </a>
                        </li>    
                    </ul>                 
                    </li>       
                    <li>
                        <a href="#">
                            <i class="fa fa-home fa-fw"></i>
                            Shop
                        </a>
                    </li>                    
                </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
</nav>
<!-- /.navbar-static-side -->