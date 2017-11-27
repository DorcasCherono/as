<?php

/*
|--------------------------------------------------------------------------
| Application & Route Filters
|--------------------------------------------------------------------------
|
| Below you will find the "before" and "after" events for the application
| which may be used to do any work before or after a request into your
| application. Here you may also register your custom route filters.
|
*/

App::before(function($request)
{
	
});


App::after(function($request, $response)
{
	//
});


Route::filter('limit', function(){

	$organization = Organization::find(1);


	$members = count(Member::all());

	if($organization->licensed <= $members){

		return View::make('members.memberlimit');
	}

});


Route::filter('license', function(){

$organization = Organization::find(1);

$string = $organization->name;
$license_key =$organization->license_key;
$license_code = $organization->license_code;

$validate = $organization->license_key_validator($license_key,$license_code,$string);

if($validate){

	return View::make('activate', compact('organization'))->withErrors('License activation failed. License Key not valid');


	}

});

/*
|--------------------------------------------------------------------------
| Authentication Filters
|--------------------------------------------------------------------------
|
| The following filters are used to verify that the user of the current
| session is logged into this application. The "basic" filter easily
| integrates HTTP Basic authentication for quick, simple checking.
|
*/

Route::filter('auth', function()
{
	if (Auth::guest())
	{
		if (Request::ajax())
		{
			return Response::make('Unauthorized', 401);
		}
		else
		{
			return Redirect::guest('login');
		}
	}
});


Route::filter('auth.basic', function()
{
	return Auth::basic();
});

/*
|--------------------------------------------------------------------------
| Guest Filter
|--------------------------------------------------------------------------
|
| The "guest" filter is the counterpart of the authentication filters as
| it simply checks that the current user is not logged in. A redirect
| response will be issued if they are, which you may freely change.
|
*/

Route::filter('guest', function()
{
	if (Auth::check()) return Redirect::to('/');
});

/*
|--------------------------------------------------------------------------
| CSRF Protection Filter
|--------------------------------------------------------------------------
|
| The CSRF filter is responsible for protecting your application against
| cross-site request forgery attacks. If this special token in a user
| session does not match the one given in this request, we'll bail.
|
*/

Route::filter('csrf', function()
{
	if (Session::token() !== Input::get('_token'))
	{
		throw new Illuminate\Session\TokenMismatchException;
	}
});


Route::filter('edit_loan_product', function()
{
    if (! Entrust::can('edit_loan_product') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('view_loan_product', function()
{
    if (! Entrust::can('view_loan_product') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('delete_loan_product', function()
{
    if (! Entrust::can('delete_loan_product') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('create_loan_account', function()
{
    if (! Entrust::can('create_loan_account') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('edit_loan_product', function()
{
    if (! Entrust::can('edit_loan_product') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});


Route::filter('view_loan_account', function()
{
    if (! Entrust::can('view_loan_account') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('approve_loan_account', function()
{
    if (! Entrust::can('approve_loan_account') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('create_savingproduct', function()
{
    if (! Entrust::can('create_savingproduct') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('view_savingproduct', function()
{
    if (! Entrust::can('view_savingproduct') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('delete_savingproduct', function()
{
    if (! Entrust::can('delete_savingproduct') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('disburse_loan', function()
{
    if (! Entrust::can('disburse_loan') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('view_savings_account', function()
{
    if (! Entrust::can('view_savings_account') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('open_saving_account', function()
{
    if (! Entrust::can('open_saving_account') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('create_member', function()
{
    if (! Entrust::can('create_member') ) // Checks the current user
    {
        return Redirect::back()->with('notice2', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('deactivate_member', function()
{
    if (! Entrust::can('deactivate_member') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('update_member', function()
{
    if (! Entrust::can('update_member') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('view_users', function()
{
    if (! Entrust::can('view_users') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('create_users', function()
{
    if (! Entrust::can('create_users') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('deactivate_users', function()
{
    if (! Entrust::can('deactivate_users') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('create_roles', function()
{
    if (! Entrust::can('create_roles') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('view_roles', function()
{
    if (! Entrust::can('view_roles') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('deactivate_roles', function()
{
    if (! Entrust::can('deactivate_roles') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('create_accounts', function()
{
    if (! Entrust::can('create_accounts') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('view_accounts', function()
{
    if (! Entrust::can('view_accounts') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('deactivate_accounts', function()
{
    if (! Entrust::can('deactivate_accounts') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});

Route::filter('create_journals', function()
{
    if (! Entrust::can('create_journals') ) // Checks the current user
    {
        return Redirect::back()->with('notice', 'You do not have access to this resource. Contact your system admin');
    }
});