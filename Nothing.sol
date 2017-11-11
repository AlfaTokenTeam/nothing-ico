pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Nothing is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Nothing(address _owner)  UpgradeableToken(_owner) {
    name = "Nothing";
    symbol = "Not";
    totalSupply = 1000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}