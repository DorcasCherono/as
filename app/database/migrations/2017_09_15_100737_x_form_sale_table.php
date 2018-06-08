<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class XFormSaleTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('form_sales',function($table){
			$table->increments('id');
            $table->integer('member_id')->unsigned();
            $table->string('trans_no');
            $table->float('amount_paid',11,2)->default(0.00);
			$table->timestamps();	
		});		
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('form_sales');
	}
}
