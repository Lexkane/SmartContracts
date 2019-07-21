pragma solidity 0.5.3;

contract MyContract{
	uint256 public peopleCunt=0;
	mapping (unit=>Person) public people;
	address owner;

	uint256 openingTime=1544669573; 

	modifier onlyWhileOpen(){
		require(block.timestramp >= openingTime);
		//require(msg.sender==owner);
		_;
	}

	struct Person{
		uint _id;
		string _firstName;
		string _lastName;
	}

	//constructor() public{
	//	owner=msg.sender;
	//}

	function addPerson(string memory _firstName, string memory _lastName)
	 public onlyWhileOpen {
		incrementCount();
		people[peopleCount]=Person(peopleCount,_firstName,_lastName);
	}

	function incrementCount() internal{
		peopleCount +=1;
	}
}