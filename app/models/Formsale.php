<?php

class Formsale extends \Eloquent {
    
    protected $table='form_sales';
	// Add your validation rules here
	public static $rules = [
		// 'title' => 'required'
	];

	// Don't forget to fill this array
	protected $fillable = [];

}