<?php

class sharereportsController extends \BaseController{
	//The index page for share reports
	public function index(){
		return View::make('sharereports.index');
	}
	//Contribution Listing Report
	public function c_listing(){
		$members=Member::all();
		$organization=Organization::find(1);
		$pdf = PDF::loadView('sharereports.pdf.contributionlisting', compact('organization','members'))
		->setPaper('a5')->setOrientation('potrait');
		return $pdf->stream('Members Contributions Report.pdf');
	}
	//Shares Listing Report
	public function s_listing(){
		$organization= Organization::find(1);
		$fromDate = Input::get('fromDate');
    $toDate = Input::get('toDate');
		$id=Input::get('memberid');
		$members=Member::all();
		$counter=DB::table('members')->count();
		$view = \View::make('sharereports.pdf.sharelisting', compact('organization','members','fromDate','toDate'));
		$html = $view->render();
		if($counter > 75){
					$pdf = new TCPDF('L');
		}
		if($counter <= 75){
					$pdf = new TCPDF('P');
		}
		$pdf->SetTitle('SACCO MEMBERS SHARE REPORT');
		$pdf->SetPrintHeader(false);
		$pdf->SetPrintFooter(false);
		$pdf->AddPage();
		$pdf->writeHTML($html, true, false, true, false);
		$pdf->Output('Members Shares Report.pdf');
	}
	//Individual Contribution Report
	public function show(){
		$members=Member::all();
		return View::make('sharereports.individualcontribution',compact('members'));
	}

	//View Individual Contribution
	public function individual(){
		//Obtain member ID selected
		$fromDate = Input::get('fromDate');
    $toDate = Input::get('toDate');
		$id=Input::get('memberid');
		$member=Member::where('id','=',$id)->get()->first();
		$contributions=Savingtransaction::where('savingaccount_id','=',$id)
					  ->where('type','=', 'credit')->whereBetween('date',array($fromDate,$toDate))->sum('amount');
		$transactions=Savingtransaction::where('savingaccount_id','=',$id)->whereBetween('date',array($fromDate,$toDate))->get();
		$organization= Organization::find(1);
		$view = \View::make('sharereports.pdf.individualcontribution', compact('organization','member','contributions','transactions'));
		$html = $view->render();

		$pdf = new TCPDF('P');
		$pdf->SetTitle('SACCO MEMBERS SHARE REPORT');
		$pdf->SetPrintHeader(false);
    $pdf->SetPrintFooter(false);
		$pdf->AddPage();
		$pdf->writeHTML($html, true, false, true, false);
		$pdf->Output('Individual Member Contribution Report.pdf');
	}
}
