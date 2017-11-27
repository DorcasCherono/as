@extends('layouts.help')
@section('content')
<br/>
<div class="row" style="margin-top: 5%;">
  <div class="col-lg-12">
    <div role="tabpanel">
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active">
		    <a href="#remittance" aria-controls="remittance" role="tab" data-toggle="tab">
		    Xara CBS
		    </a>
	    </li>
	    <li role="presentation">
		    <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">
		    Xara Payroll
		    </a>
	    </li>
	    <li role="presentation">
		    <a href="#financials" aria-controls="financials" role="tab" data-toggle="tab">
		    Xara Financials (ERP)
		    </a>
	    </li>
	  </ul>
	  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="remittance">
      <br>
      <div class="col-lg-12"> 
        <div class="panel panel-default">            
	        <div class="panel-body">
	        	<button data-toggle="collapse" data-target="#overallcbs" class="btn btn-info aria-controls col-lg-12" style="text-align: left;">
	        		XARA CBS SUMMARY
	        	</button>
				<div id="overallcbs" class="collapse col-lg-12">
					<p style="margin-top: 2%;">
					Xara Core Banking System(CBS) is an online system software that is geared towards easing the managenemt and administration tasks of the SACCOs and Microfinancial establishments.
					</p>
					<p>
						XARA CBS ensures proper running of the SACCOs and microfinances by automating the routine operations and providing an available platform that is accessible to both the SACCO members and the SACCO administrators and spells out the roles performed by different SACCO members that access the system.
					</p>
					<p>
						XARA CBS is organised into different interacting modules depicting the activities performed within a SACCO or microfinance. The modules are:
						<ol>
							<li>Member Management</li>
							<li>Savings Management</li>
							<li>Share Capital Management</li>
							<li>Loans Management</li>
							<li>Investment Management</li>
							<li>Reports Management</li>
							<li>Transactions Management</li>
							<li>Vendors Management</li>
						</ol>
					</p>
					<p>
						XARA CBS is SASRA-compliant and it includes a robust accounting module that spans all the activities within the SACCO. 
					</p>
					<p>
						XARA CBS supports both SMS and email notifications which occurs at crucial parts within the operation of the system such as loan approvals, guarantor approval et cetera. 
					</p>
					<p>
						XARA CBS has incorporated security features within the whole operation of the system.The system maintains a robust audit trail that records all the operations and activities within the system. The system also incorporates authentication and authorization mechanism to ensure proper usage of the system and consequently cushion the SACCOs and Microfinances from unforeseen lose through funds emezzlement and system misuse.
					</p>
					<p>
						Kindly watch the below XARA CBS OVERVIEW video tutorial to give you a feel of the system.						
					</p>
					<p style="margin-left: 12.5%;">
						<video width="500" controls>
						  <source src="{{ asset('public/uploads/videos/XARA CBS WALKTHROUGH.mp4')}}" type="video/mp4">						  
						  Your browser does not support HTML5 video.
						</video>						
					</p>
				</div>
	        	<button data-toggle="collapse" data-target="#member" class="btn btn-warning col-lg-12" style="text-align: left;">Member Management
	        	</button>
				<div id="member" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						After successful login into the system, you will be ushered into the system dashboard. On the dashboard there is a list of all available members.
					</p>
					<p>
						Member Management Module tackles all the tasks of creating, editing, retrieving details pertaining SACCO members.
					</p>
					<h3 style="text-decoration: underline;">Creating a New Member</h3>
					<p>
						<ol>
							<li>On the Left Navigation, click under the Member Submenu the New Member Link.
							</li>
							<li>
								Provide all the member details required and press Create Member Button to create a new member.
							</li>
						</ol>
					</p>
					<h3 style="text-decoration: underline;">Editing Member Details</h3>
					<p>
						<ol>
							<li>On the Dashboard list of members search for the particular member that details need to be edited, then click on the Manage Button for the respective member. 
							</li>
							<li>
								Click the Update Details Button on top of the member details displyed.
							</li>
							<li>
								Edit the member details required.
							</li>
							<li>Click Update Member Button</li>
						</ol>
					</p>
					<h3 style="text-decoration: underline;">Viewing Member Savings Details</h3>
					<p>
						<ol>
							<li>On the Dashboard list of members search for the particular member that details need to be edited, then click on the Savings Button for the respective member. 
							</li>
							<li>
								You can create a new saving account for the member, view savings transactions or carry out a savings transaction for the member.
							</li>							
						</ol>
					</p>
					<h3 style="text-decoration: underline;">Viewing Member Loan Details</h3>
					<p>
						<ol>
							<li>
							On the Dashboard list of members search for the particular member that details need to be edited, then click on the Loans Button for the respective member. 
							</li>
							<li>
								You can view all the loan accounts of the respective member or apply for the member a new loan.
							</li>							
						</ol>
					</p>
					<h3 style="text-decoration: underline;">Viewing Member Shares Details</h3>
					<p>
						<ol>
							<li>
							On the Dashboard list of members search for the particular member that details need to be edited, then click on the Shares Button for the respective member. 
							</li>
							<li>
								You can view the shares transactions for the respective member,or carry out share transaction for the given member.
							</li>							
						</ol>
					</p>
				</div>
				<button data-toggle="collapse" data-target="#saving" class="btn btn-success col-lg-12" style="text-align: left;">
					Saving Management
	        	</button>
				<div id="saving" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						XARA CBS allows the SACCO to define their own saving products so that their members can save for the defined products.
					</p>
					<p>
						<h3 style="text-decoration: underline;">Creating Saving Product</h3>
						<ol>
							<li>
								On the system dashboard, click on saving products link on the left navigation.
							</li>
							<li>
								From the submenu,click new product.
							</li>
							<li>
								Provide the product details.
							</li>
							<li>
								Click Create Product button.
							</li>
						</ol>
					</p>
				</div>
				<button data-toggle="collapse" data-target="#Sharecapital" class="btn btn-primary col-lg-12" style="text-align: left;">
					Share Capital Management
	        	</button>
				<div id="Sharecapital" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						XARA CBS share capital module allows members to observe their contribution to the operation of the SACCO and also reaping out of their saving in the SACCO through shares and dividends.
					</p>
					<p>
						Shares and dividends calculation are hinged upon the definition of the SACCO unit per share value.
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Share Settings
						</h3>
						<ol>
							<li>
								On the system dashboard, click on the Share Capital link.
							</li>
							<li>
								On the submenu click settings link.
							</li>
							<li>
								Click on the update link.
							</li>
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							View Contributions
						</h3>
						<ol>
							<li>
								On the system dashboard, click on the Share Capital link.
							</li>
							<li>
								On the submenu click contributions link.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							View Dividends
						</h3>
						<ol>
							<li>
								On the system dashboard, click on the Share Capital link.
							</li>
							<li>
								On the submenu click dividends link.
							</li>							
						</ol>
					</p>
				</div>
				<button data-toggle="collapse" data-target="#loans" class="btn btn-info col-lg-12" style="text-align: left;">
					Loan Management
	        	</button>
				<div id="loans" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						XARA CBS loan management module is further subdivided into submodules namely: 
						Disbursement Options, Guarantor Matrix, Loan Products and Loan Applications.
					</p>
					<p>
						Disbursement Options specifies the mode upon which loans will be disbursed to the members, by specifying the minimum and the maximum amount that can be disbursed by a given option.
					</p>
					<p>
						Guarantor matrix specify other loan securities apart from loan guarantors required for huge development loans.
					</p>
					<p>Loan Products enables creation of various loan products for the SACCO.</p>
					<p>
						Loan Applications provide a detailed, categorised list of the loan aplications. The applications are categorized into the new applications, approved applications, rejected applications and disbursed applications.
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Applying loans for members
						</h3>
						<ol>
							<li>
								On the system dashboard, select the member to apply a loan for.
							</li>
							<li>
								Click on the Loans button on the row containing the respective member.
							</li>
							<li>
								Click New Loan Button on top of the list of loans previously applied for.
							</li>
							<li>
								Click Submit Application Button.
							</li>
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Approving loans for members
						</h3>
						<ol>
							<li>
								On the system dashboard,from the left navigation click loans.
							</li>
							<li>
								From the submenu click loan applications link.
							</li>
							<li>
								On the New Applications Tab, select the member you will like to approve the loan for.
							</li>
							<li>
								On the Action Button, click approve.
							</li>
							<li>
								View the Credit Appraissal form before approving the loan.
							</li>
							<li>
								Click Approve Loan Button.
							</li>
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Rejecting loans for members
						</h3>
						<ol>
							<li>
								On the system dashboard,from the left navigation click loans.
							</li>
							<li>
								From the submenu click loan applications link.
							</li>
							<li>
								On the New Applications Tab, select the member you will like to reject the loan for.
							</li>
							<li>
								On the Action Button, click reject.
							</li>
							<li>
								View the Credit Appraissal form before rejecting the loan.
							</li>
							<li>
								Click Reject Loan Button.
							</li>
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Disbursing loans for members
						</h3>
						<ol>
							<li>
								On the system dashboard, from the left navigation click loans.
							</li>
							<li>
								From the submenu click on loan applications link.
							</li>
							<li>
								Click on The approved Applications Tab.
							</li>
							<li>
								Select the application to disburse.
							</li>
							<li>
								On the action Button, click disburse.
							</li>
							<li>
								Go through the loan details specified.
							</li>
							<li>
								Click Disburse Loan Button.
							</li>
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Repaying loans for members
						</h3>
						<ol>
							<li>
								On the system dashboard, from the left navigation click loans.
							</li>
							<li>
								From the submenu click on loan applications link.
							</li>
							<li>
								Click on The Disbursed Applications Tab.
							</li>
							<li>
								On the action Button, click Manage.
							</li>
							<li>
								On the top right corner click the Repay Loan Button.
							</li>
							<li>
								Provide the amount of money received.
							</li>
							<li>
								Click Repay Loan Button.
							</li>
						</ol>
					</p>
				</div>
				<button data-toggle="collapse" data-target="#Investment" class="btn btn-warning col-lg-12" style="text-align: left;">
					Investment Management
	        	</button>
				<div id="Investment" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						Investment Management module provides an interactive platform for the SACCO members to positively grow the SACCO and individually. The module ensures members are updated on the SACCO projects which they can invest in and grow the asset base.
					</p>
					<p>
						The module is organised into four(4) submodules: Categories, Investments, Projects and Project Orders submodules.
					</p>
					<p>
						The module allows the system administrator to define New Investement categories, define New Investments into their matching Invetsments Categories already defined. The investments are later divided into projects which are sold by The SACCO to its members at a price depending with the apreciation/depreciation rate of the asset invested on by the SACCO.
					</p>
					<p>
						Once the system admin has divided the investments into projects, the members can view the projects in their own portals and choose to invest in ceratin units of the projects. Once they choose to invest in a project, the requested reaches the admin as a project order. The admin can approve/ reject the project depending upon the payment mode selected by the member.
					</p>
				</div>				
				<button data-toggle="collapse" data-target="#Reports" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Reports Management
	        	</button>
				<div id="Reports" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						Reports Management module provides an avenue for the system user to view detailed reports pertaining various sectors within the system.
					</p>
					<p>
						XARA CBS provide robust and SASRA-compliant reporting capabilities that serve majority of the SACCOs just fine unless customizations are needed.
					</p>
					<p>
						The Module is subdivided into submodules namely: Member reports, Share reports,Saving reports, Loan reports and financial reports submodules.
						Under each submodules there are categorised reports.
					</p>
					
				</div>				
			</div>
		</div>
      </div>      
    </div>
    <div role="tabpanel" class="tab-pane" id="profile">
      <br>
      <div class="col-lg-12">
	    <div class="panel panel-default">		      
		    <div class="panel-body"> 		    					
	        	<button data-toggle="collapse" data-target="#emp_portal" class="btn btn-warning col-lg-12" style="text-align: left;">
	        		Employee Portal
	        	</button>
				<div id="emp_portal" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Allows one to add an employee, view, and update and deactivate the employee. One can also add next of kin details, attach documents, employee appraisal, company property, occurrences and benefits of specific employees. One can also download a blank employee template to fill.
					</p>					
					<h3 style="text-decoration: underline;">Adding an Employee</h3>
					<p>
						<ol>
							<li>
							Click on Employees link on the left side menu, then new employee.
							</li>
							<li>
							 Fill in all the details and click on Create Employee button.
							</li>
						</ol>
					</p>									
				</div>
				<button data-toggle="collapse" data-target="#hr_portal" class="btn btn-success col-lg-12" style="text-align: left;">
					HR portal
	        	</button>
				<div id="hr_portal" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Allows one to apply for a leave, amend applied leave, approve or reject it.
					</p>
					<p>
						<h3 style="text-decoration: underline;">Apply Leave</h3>
						<ol>
							<li>
								Click on Human Resource, then vacation.
							</li>
							<li>
								Click on New application button, fill in the form then click create.
							</li>							
						</ol>
					</p>
				</div>
				<button data-toggle="collapse" data-target="#emp_earnings" class="btn btn-primary col-lg-12" style="text-align: left;">
					Employee Earnings module
	        	</button>
				<div id="emp_earnings" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Allows one to and earnings, overtime worked and the allowances.
					</p>					
					<p>
						<h3 style="text-decoration: underline;">
							Add Earnings
						</h3>
						<ol>
							<li>
								Click on the left side menu, Payroll management then click on earnings.
							</li>
							<li>
								Click on New Employee Earning, fill in the form and click on create Employee earning button.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Add Allowances
						</h3>
						<ol>
							<li>
								Click on the left side menu, Payroll management then click on Allowances.
							</li>
							<li>
								Click on New Employee Allowance, fill in the form and click on create Employee Allowance button.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Add Overtimes
						</h3>
						<ol>
							<li>
								Click on the left side menu, Payroll management then click on Overtime.
							</li>
							<li>
								Click on New Overtime Earning, fill in the form and click on create overtime button.
							</li>							
						</ol>
					</p>

					<p>
						<h3 style="text-decoration: underline;">
							Add Deductions
						</h3>
						<ol>
							<li>
								Click on the left side menu, Payroll management then click on Deductions.
							</li>
							<li>
								Click on New Employee deduction, fill in the form and click on create Employee Deduction button.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Add Relief
						</h3>
						<ol>
							<li>
								Click on the left side menu, Payroll management then click on Relief.
							</li>
							<li>
								Click on New Employee relief, fill in the form and click on create Employee Relief button.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Add Non Taxable Income
						</h3>
						<ol>
							<li>
								Click on the left side menu, Payroll management then click on Non Taxable Income.
							</li>
							<li>
								Click on New Employee non Taxable Income, fill in the form and click on create Employee Non Taxable Income button.
							</li>							
						</ol>
					</p>

					<p>
						<h3 style="text-decoration: underline;">
							Process Payroll
						</h3>
						<ol>
							<li>
								Click on the left side menu, Process then click on Payroll.
							</li>
							<li>
								Fill in the form then click on select.
							</li>
							<li>
								Confirm whether the preview is correct then click on Process.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Process Advance Payroll
						</h3>
						<ol>
							<li>
								Click on the left side menu, Process then click on Advance Salaries.
							</li>
							<li>
								Fill in the form then click on select.
							</li>
							<li>
								Confirm whether the preview is correct then click on Process.
							</li>							
						</ol>
					</p>					
				</div>
				<button data-toggle="collapse" data-target="#pay_reports" class="btn btn-info col-lg-12" style="text-align: left;">
					Reports
	        	</button>
				<div id="pay_reports" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Includes Advance reports, payroll reports and statutory reports.
					</p>																			
				</div>								
		  	</div>
		</div>
      </div>
	</div>
    <div role="tabpanel" class="tab-pane" id="financials">
      <br>
      <div class="col-lg-12">
	    <div class="panel panel-default">		      
		    <div class="panel-body">  		    	  
	        	<button data-toggle="collapse" data-target="#items_module" class="btn btn-warning col-lg-12" style="text-align: left;">
	        	Items Module
	        	</button>
				<div id="items_module" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Allows one to add, edit, update and delete an item. An item can be captured as a service and a product.
					</p>					
					<h3 style="text-decoration: underline;">Adding an Item</h3>
					<p>
						<ol>
							<li>
								Click on item, then new item button
							</li>
							<li>
								Fill in all the required information and click on create an Item
							</li>
						</ol>
					</p>
					<h3 style="text-decoration: underline;">Editing an Item</h3>
					<p>
						<ol>
							<li>
								Click on Action, then update. 
							</li>
							<li>
								Fill in the information to be edited and click on update item button.
							</li>							
						</ol>
					</p>
					<h3 style="text-decoration: underline;">Deleting an Item</h3>
					<p>
						<ol>
							<li>
							Click on Action, then delete.
							</li>												
						</ol>
					</p>					
				</div>
				<button data-toggle="collapse" data-target="#client_module" class="btn btn-success col-lg-12" style="text-align: left;">
					Client’s module
	        	</button>
				<div id="client_module" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Allows one to add, edit, update and delete a client who can be a supplier or a customer. One also can view the client's details. Customer statement also available. Has an option to view clients with balance.
					</p>
					<p>
						<h3 style="text-decoration: underline;">Adding a Client</h3>
						<ol>
							<li>
								Click on Client/Supplier link on the left menu, then new Client button.
							</li>
							<li>
								Fill in all required information and click on create client button.
							</li>							
						</ol>
					</p>

					<p>
						<h3 style="text-decoration: underline;">Editing a Client’s Information</h3>
						<ol>
							<li>
								Click on Action, then update.
							</li>
							<li>
								Fill in the information to be edited and click on update Client button.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">Deleting a Client</h3>
						<ol>
							<li>
								Click on Action, then delete
							</li>												
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">View Client Information</h3>
						<ol>
							<li>
								Click on Action, then view Client.
							</li>													
						</ol>
					</p>
				</div>
				<button data-toggle="collapse" data-target="#sales_order" class="btn btn-primary col-lg-12" style="text-align: left;">
					Sales Orders
	        	</button>
				<div id="sales_order" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Allows one to place, view and cancel a sales order. It also allows generating an invoice and a receipt. The selling prices are editable to make work easier.
					</p>					
					<p>
						<h3 style="text-decoration: underline;">
							Placing a sales order
						</h3>
						<ol>
							<li>
								Click on Orders on the left side menu, then sales orders.
							</li>
							<li>
								Click on New order, fill in all the information then click on create.
							</li>
							<li>
								Fill in the item you are ordering, the quantity, store and click on place order button.
							</li>
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Generating Receipts
						</h3>
						<ol>
							<li>
								Click on View, then generate receipts button.
							</li>													
						</ol>
					</p>					
				</div>
				<button data-toggle="collapse" data-target="#purchase_orders" class="btn btn-info col-lg-12" style="text-align: left;">
					Purchase Orders
	        	</button>
				<div id="purchase_orders" class="collapse col-lg-12">
					<p style="margin-top: 5%;">
						Allows one to place, view, and cancel a purchase order. It also allows generating a purchase order.
					</p>									
					<p>
						<h3 style="text-decoration: underline;">
							Placing a purchase order
						</h3>
						<ol>
							<li>
								Click on Orders on the left side menu, then purchase orders.
							</li>
							<li>
								Click on New purchase order, fill in all the information then click on create.
							</li>
							<li>
								Fill in the item you are ordering, the quantity, and click on add sign and click on place order button.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Generating Purchase order
						</h3>
						<ol>
							<li>
								Click on Action, View then generate purchase order button.
							</li>							
						</ol>
					</p>					
				</div>
				<button data-toggle="collapse" data-target="#expense" class="btn btn-warning col-lg-12" style="text-align: left;">
					Expenses module
	        	</button>
				<div id="expense" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						Allows one to add, edit, update and delete an expense.
					</p>	
					<p>
						<h3 style="text-decoration: underline;">
							Adding an Expense
						</h3>
						<ol>
							<li>
								Click on Expenses, Expenses, then new expense button
							</li>
							<li>
								Fill in the form and click on create Expense button
							</li>												
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Editing an Expense
						</h3>
						<ol>
							<li>
								Click on Action, then update
							</li>
							<li>
								Fill in the information to be edited and click on update Expense button.
							</li>													
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Deleting an Expense
						</h3>
						<ol>
							<li>
								Click on Action, then delete
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Creating an Expense Type
						</h3>
						<ol>
							<li>
								Expense, Expense type then click on new expense type button.
							</li>
							<li>
								Fill in the expense name and click on create expense type button.
							</li>							
						</ol>
					</p>				
				</div>				
				<button data-toggle="collapse" data-target="#quotation" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Quotation
	        	</button>
				<div id="quotation" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						Allows one to process and generate quotations and invoices. Also one can approve/reject a quote. The Quotation is editable and can be emailed.
					</p>					
					<p>
						<h3 style="text-decoration: underline;">
							Creating a quotation
						</h3>
						<ol>
							<li>
								Click on quotation on the left side menu, then new quotation button.
							</li>
							<li>
								Fill in the information then click on create button.
							</li>
							<li>
								Fill in the quotation information then click on Process.
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Editing a quotation
						</h3>
						<ol>
							<li>
								Click on View, then edit quotation button
							</li>							
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Generation Invoices
						</h3>
						<ol>
							<li>
								Click on view, then generate invoice button.
							</li>							
						</ol>
					</p>
				</div>

				<button data-toggle="collapse" data-target="#budget" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Budget
	        	</button>
				<div id="budget" class="collapse col-lg-12">				
					<p>
						<h3 style="text-decoration: underline;">
							Creating a new budget
						</h3>
						<ol>
							<li>
								Click on budget on the left side menu, then new budget button.
							</li>
							<li>
								Fill in the form and click on create budget button.
							</li>													
						</ol>
					</p>
					<p>
						<h3 style="text-decoration: underline;">
							Editing the budget
						</h3>
						<ol>
							<li>
								Click on Action, then update
							</li>
							<li>
								Fill in the information to be edited and click on update budget button
							</li>								
						</ol>
					</p>					
				</div>
				<button data-toggle="collapse" data-target="#store" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Store module
	        	</button>
				<div id="store" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						Allows one to add stores, edit, and update and delete a store.
					</p>					
					<p>
						<h3 style="text-decoration: underline;">
							Adding a store
						</h3>
						<ol>
							<li>
								Click on store on the left side menu, then new store button.
							</li>
							<li>
								Fill in the form and click on create button
							</li>											
						</ol>
					</p>				
				</div>
				<button data-toggle="collapse" data-target="#stock" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Stock module
	        	</button>
				<div id="stock" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						One can receive stock and update it. Also stock tracking.
					</p>					
					<p>
						<h3 style="text-decoration: underline;">
							Receiving Stock
						</h3>
						<ol>
							<li>
								Click on stock on the left side menu, then receive stock button.
							</li>
							<li>
								Fill in the form and click on receive button.
							</li>													
						</ol>
					</p>					
				</div>
				<button data-toggle="collapse" data-target="#tax_module" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Taxes module 
	        	</button>
				<div id="tax_module" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						Allows one to add, edit, update and delete a taxes e.g. VAT
					</p>					
					<p>
						<h3 style="text-decoration: underline;">
							Creating a Tax
						</h3>
						<ol>
							<li>
								Click on Taxes on the left side menu, then new tax button.
							</li>
							<li>
								Fill in the form and click on create tax button.
							</li>												
						</ol>
					</p>					
				</div>	
				<button data-toggle="collapse" data-target="#payment" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Payments 
	        	</button>			
				<div id="erp_reports" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						The system allows payment to be made to respective accounts.
					</p>															
				</div>	
				<button data-toggle="collapse" data-target="#erp_reports" class="btn btn-primary col-lg-12" style="text-align: left;">
				 	Reports management
	        	</button>				
				<div id="payment" class="collapse col-lg-12">
					<p style="margin-top: 3%;">
						The system generates various reports including: sales, purchases, items, expenses, clients, payment methods, payments, store, stock report, price list, sales summary report and account balances. The system also includes financial report such as balance sheet, income statement and trial balance.
					</p>															
				</div>				
			</div>
		  	</div>
		</div>
      </div>
	</div>
  </div>
 </div>
</div>
@stop