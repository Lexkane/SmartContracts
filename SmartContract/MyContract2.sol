pragma solidity 0.5.3;

contract MyContract{
	mapping (adress=> uint256) public balances;
	address payable wallet;

	event Purchase (
		address indexed _buyer,
		uint256 _amount
		);



	constructor (adress payable  _wallet) public {
		wallet=_wallet
	}

	function () external payable{
		buyToken();
	}
	function buyToken() public payable {
		//buy a token
		balances[msg.sender] +=1;
		//send ehter to the wallet
		wallet.transfer(msg.value);
	}
}