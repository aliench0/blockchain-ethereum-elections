var Election = artifacts.require("./Election.sol");

contract("Election", function(accounts) {
	it("Test initialization of 3 candidates", function(){
		return Election.deployed().then(function(instance){
			return instance.candidatesCount();
		}).then(function(candidatesCount){
			assert.equal(candidatesCount, 3);
		});
	})

	/*
	TODO: test the vote functionality
	*/
})