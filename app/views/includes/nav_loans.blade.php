 <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li>
                        <a href="{{ URL::to('disbursements') }}">
                            <i class="fa fa-random"></i> 
                            Disbursement Options
                        </a>
                    </li> 
                    <li>
                        <a href="{{ URL::to('matrices') }}">
                            <i class="fa fa-gavel"></i> 
                            Loan Collaterals
                        </a>
                    </li>                     
                    <li>
                        <a href="{{ URL::to('loanproducts') }}"><i class="glyphicon glyphicon-tags fa-fw"></i> Loan Products</a>
                    </li>                     
                    <li>
                        <a href="{{ URL::to('loans') }}"><i class="glyphicon glyphicon-pencil fa-fw"></i> Loan Applications</a>
                    </li>                                        
                </ul>
                <!-- /#side-menu -->
            </div>
            <!-- /.sidebar-collapse -->
        </nav>
        <!-- /.navbar-static-side -->