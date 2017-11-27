<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReceiptsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('receipts',function($table){
			$table->increments('id');
            $table->string('receipt_no');
            $table->enum('type',array('loans','savings','shares'))->default('savings');
            $table->string('trans_no');
            $table->float('amount',11,2)->default(0.00);
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
		Schema::drop('receipts');
	}
}
