app.factory('JobService', function($http) {
	var jobService = {};
	var BASE_URL = "http://localhost:8008/project2backend"

	jobService.getAllJobs = function() {
		return $http.get(BASE_URL + "/getAllJobs");
	}

	jobService.getJobDetail = function(jobId) {
		return $http.get(BASE_URL + "/getJobDetail/" + jobId);
	}

	jobService.saveJob = function(job) {
		return $http.post(BASE_URL + "/postJob", job);

	}

	return jobService;
})