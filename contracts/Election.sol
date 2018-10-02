pragma solidity ^0.4.24;

/**
 * The Election contract does this and that...
 */
contract Election {

	struct Candidate {
		uint id;
		string name;
		uint votes;		
	}
	
	mapping (uint => Candidate) public candidates;
	mapping (address => bool) public voters;
	uint public candidatesCount;

	constructor () public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
		addCandidate("Candidate 3");
	}

	function addCandidate(string name) private {
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, name, 0);
	}

	function vote(uint candidateID) public {
		require (!voters[msg.sender]);
		require (candidateID > 0 && candidateID <= candidatesCount);
		
		voters[msg.sender] = true;
		candidates[candidateID].votes++;
	}

}
