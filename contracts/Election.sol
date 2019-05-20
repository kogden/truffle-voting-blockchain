pragma solidity ^0.5.0;

contract Election {
	// Model candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Store candidate

	// Generate candidates function automatically that will allow us to fetch out candidates
	mapping(uint => Candidate) public candidates;

	// Store Candidates count
	uint public candidatesCount;

	// Constructor
	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string memory _name) private {
		candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
}