//SPDX-License-Indentifier: MIT

pragma solidity ^0.8.18;

contract ManualToke {

    mapping (address => uint256) private s_balances;

    function name() public pure returns (string memory) {
        return "Yarkul Token";
    }

    function totalSupply() public pure returns (uint256) {
        return 100 ether; //100000000000000000000
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function balanceOf(address _owner) public view returns (uint256){
        return s_balances[_owner];
    }
}