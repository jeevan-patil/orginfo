'use strict';

angular.module('orgInfoApp').controller('OrganizationCtrl', [ '$scope', '$resource', '$http', function($scope, $resource, $http) {
	$scope.message = "Information about organization will be shown here.";
	$scope.neworg = {};
	$scope.orgs = [];

	$scope.$on('$viewContentLoaded', function() {
		$scope.listOrgs();
	});

	$scope.createNewOrganization = function() {
		var Org = $resource('org/create');
		Org.save($scope.neworg, function(response) {
			console.log(response);
			$scope.orgs.push($scope.neworg);
			$('.orgCreation').hide();
		});
    };

    $scope.listOrgs = function() {
    	$http.get('org/list').success(function(data, status, headers, config) {
    		$scope.orgs = data;
		})
		.error(function(data, status, headers, config) {
			console.log('Could not get organization list');
		});
    };
}]);
