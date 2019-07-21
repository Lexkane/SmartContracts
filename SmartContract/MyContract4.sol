pragma solidity 0.5.3;


contract ERC20Token{

	string public name;
	mapping(adress => uint256) public balances;

	constructor (string memory _name) public {
		name =_name;
	}

	function mint() public {
		balances[tx.origin] ++;
	}

}
contract MyToken is ERC20Token{
	constructor (string memory _name,string memory _symbol)
	 ERC20Token(_name)public {
	 	symbol=_symbol;
	}

	function mint() public {
		super.mint();
		ownerCount++;
		owners.push(msg.sender);
	}
}
