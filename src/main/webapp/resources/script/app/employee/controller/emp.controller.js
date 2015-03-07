'use strict';

angular.module('orgInfoApp').controller('EmpCtrl', [ '$scope', '$resource', '$http', function($scope, $resource, $http) {
	$scope.message = "List of Employees will be shown here.";
	$scope.users = [];

	$scope.$on('$viewContentLoaded', function(){
		$scope.listUsers();
	});

	$scope.listUsers = function() {
    	$http.get('users').success(function(data) {
    		$scope.users = data;
    	});
    };
}]);
