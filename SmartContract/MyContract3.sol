pragma solidity 0.5.3;


contract ERC20Token{

	string public name;
	mapping(adress => uint256) public balances;

	function mint() public {
		balances[tx.origin] ++;
	}

}


contract MyContract{
	address payable wallet;
	address tocken;

	constructor (address payable  _wallet , adress _token) public {
		wallet=_wallet;
		token =_token;
	}

	function () external payable{
		buyToken();
	}
	function buyToken() public payable {
		//ERC20Token _token =(address(token));
		//_token.mint();
		ERC20Token(address(token)).mint();

		wallet.transfer(msg.value);
	}
}