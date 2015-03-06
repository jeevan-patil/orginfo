'use strict';

angular.module('orgInfoApp').controller('OrganizationCtrl', function($scope) {
	$scope.message = "Information about organization will be shown here.";
	$scope.neworg = [];

	$scope.createNewOrganization = function() {
		console.log($scope.neworg);
    };
});
