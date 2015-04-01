'use strict';

angular.module('orgInfoApp').controller('OrganizationCtrl', [ '$scope', 'OrgService', function($scope, OrgService) {
	$scope.message = "Information about organization will be shown here.";
	$scope.neworg = {};
	$scope.orgs = [];

	$scope.$on('$viewContentLoaded', function() {
		$scope.listOrgs();
	});

	$scope.createNewOrganization = function() {
		OrgService.save(function(neworg, res) {
			console.log(res);
		});
    };

    $scope.listOrgs = function() {
    	OrgService.list(function (orgs) {
    		if(orgs === 'ERR') {
    			alert('error while listing organizations');
    		} else {
    			$scope.orgs = orgs;
    		}
    	});
    };
}]);
