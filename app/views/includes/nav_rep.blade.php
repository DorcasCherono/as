 <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="{{ URL::to('reports') }}"><i class="glyphicon glyphicon-file fa-fw"></i> Member Reports</a>
                    </li>
                    <li>
                        <a href="{{ URL::to('groupreports') }}"><i class="glyphicon glyphicon-file fa-fw"></i> Group Reports</a>
                    </li>
                    <li>
                        <a href="{{ URL::to('sharereports') }}"><i class="glyphicon glyphicon-file fa-fw"></i>
                            Share Capital Reports
                        </a>
                    </li>
                    <li>
                        <a href="{{ URL::to('savingreports') }}"><i class="glyphicon glyphicon-file fa-fw"></i>
                            Share Deposits Reports
                        </a>
                    </li>                    
                    <li>
                        <a href="{{ URL::to('loanreports') }}"><i class="glyphicon glyphicon-file"></i>
                            Loan Reports
                        </a>
                    </li>
                    <li>
                        <a href="{{ URL::to('financialreports') }}"><i class="glyphicon glyphicon-file fa-fw"></i>
                            Financial Reports
                        </a>
                    </li> 
                </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
        </nav>
        <!-- /.navbar-static-side -->