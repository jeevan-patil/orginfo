'use strict';

angular.module('orgInfoApp').controller('OrganizationCtrl', [ '$scope', '$resource', '$http', function($scope, $resource, $http) {
	$scope.message = "Information about organization will be shown here.";
	$scope.neworg = {};

	$scope.createNewOrganization = function() {
		var Org = $resource('org/create');
		Org.save($scope.neworg, function(response) {
			console.log(response);
		});

/*		$http.post('org/create', $scope.neworg).success(function(data, status, headers, config) {
			console.log(status);
		})
		.error(function(data, status, headers, config) {
		});*/
    };

    $scope.listUsers = function() {
    	$http.get('users').
	        success(function(data) {
	            console.log(data);
	        });
    };
}]);
