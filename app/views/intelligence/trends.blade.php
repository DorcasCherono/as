@extends('layouts.help')
@section('content')
<br/>
<div class="row" style="margin-top: 5%;">
  <div class="col-lg-12">
    <div role="tabpanel">
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active">
            <a href="#one" aria-controls="one" role="tab" data-toggle="tab">
                Members
            </a>
        </li>
        <li role="presentation">
            <a href="#two" aria-controls="two" role="tab" data-toggle="tab">
             Loans
            </a>
        </li>
        <li role="presentation">
            <a href="#three" aria-controls="three" role="tab" data-toggle="tab">
             Savings
            </a>
        </li>
        <li role="presentation">
            <a href="#four" aria-controls="four" role="tab" data-toggle="tab">
             Shares
            </a>
        </li>
      </ul>
      <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="one">
      <br>
      <div class="col-lg-12"> 
        <div class="panel panel-default">            
                <div class="panel-body">
                    <canvas id="students-graph"  width="1000" height="400">
                        Men
                    </canvas>
                </div>
            </div>                
        </div>
    </div>      
    <div role="tabpanel" class="tab-pane" id="two">
      <br>
      <div class="col-lg-12">
        <div class="panel panel-default">             
            <div class="panel-body">                                                            
                                        
            </div>
        </div>
      </div>
    </div>
    <div role="tabpanel" class="tab-pane" id="three">
      <br>
      <div class="col-lg-12">
        <div class="panel panel-default">             
            <div class="panel-body">                                                                      
            </div>
            </div>
        </div>
    </div>
    <div role="tabpanel" class="tab-pane" id="four">
      <br>
      <div class="col-lg-12">
        <div class="panel panel-default">             
            <div class="panel-body">                                                            
                                        
            </div>
        </div>
      </div>
    </div>
    </div>
  </div>
 </div>
</div>
<script type="text/javascript">
      $(function(){
            $.getJSON("{{URL::to('/students/chart/data')}}", function (result) {

              var labels = [],data=[];
              for (var i = 0; i < result.length; i++) {
                  labels.push(result[i].month);
                  data.push(result[i].students);
              }

              var studentData = {
                labels : labels,
                datasets : [
                  {
                    label:"The front Chart",
                    fill: true,
                    data : data,
                    lineTension: 0.1,
                    backgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ],
            hoverBackgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ],
                    borderColor: "rgba(75,192,192,1)",
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    pointBorderColor: "rgba(75,192,192,1)",
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 1,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: "rgba(75,192,192,1)",
                    pointHoverBorderColor: "rgba(220,220,220,1)",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10
                  }
                ]
              };

              var students = document.getElementById('students-graph').getContext('2d');
              /*Render the chart*/     
              new Chart(students , {
                type: "line",
                data: studentData, 
                bezierCurve : true
             });         
              /*new Chart(students).Line(studentData, {
                  bezierCurve : true
                });*/              
              
            });
        });
</script> 
@stop