'use strict';

angular
.module('orgInfoApp', [
  'ngAnimate',
  'ngCookies',
  'ngResource',
  'ngRoute',
  'ngSanitize',
  'ngTouch',
  'ui.bootstrap',
  'ui.router'
])
.config(function ($stateProvider) {
	$stateProvider
	.state('/', {
        templateUrl: 'resources/views/home.html',
        controller: 'HomeCtrl',
        url : '/'
    })
    .state('organizations', {
    	templateUrl: 'resources/views/organization/orgs.html',
    	controller: 'OrganizationCtrl',
	    url : '/organizations'
    })
    .state('bu', {
    	templateUrl: 'resources/views/bunit/bunits.html',
    	controller: 'BunitCtrl',
    	url: 'bu'
    })
    .state('emp', {
    	templateUrl: 'resources/views/emp/emp.html',
    	controller: 'EmpCtrl',
    	url: 'emp'
    });
})
.run(function($state) {
	$state.go('/');
});