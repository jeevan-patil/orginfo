
angular.module('orgInfoApp').service("OrgService", ['$resource', '$http', function($resource, $http) {
	var service = {};

	service.list = function(callback) {
		$http.get('org/list').success(function(data, status, headers, config) {
    		callback(data);
		})
		.error(function(data, status, headers, config) {
			callback('ERR');
		});
	};

	service.save = function(neworg, callback) {
		var Org = $resource('org/create');
		Org.save(neworg, function(response) {
			callback(response);
		});
	};
	
	return service;
}]);
