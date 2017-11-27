<?php

class ProductCharge extends \Eloquent {
    
    protected $table='productCharges';
    
	// Add your validation rules here
	public static $rules = [
		// 'title' => 'required'
	];
	
	// Don't forget to fill this array
	protected $fillable = [];

}