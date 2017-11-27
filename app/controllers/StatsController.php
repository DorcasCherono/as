<?php

class StatsController extends BaseController
{

    public function getIndex()
    {
        return View::make('intelligence.trends');
    }

    /**
     * Display a the chart for students.
     * GET /students/chart/data
     *
     * @return Response
     */
    public function studentChartData(){
        $stdlist = DB::table('loanaccounts')
            ->select(DB::raw('MONTHNAME(created_at) as month'), DB::raw("DATE_FORMAT(created_at,'%Y-%m') as monthNum"), DB::raw('count(*) as students'))
            
            ->groupBy('monthNum')
            ->get();

        return $stdlist;
    }


}