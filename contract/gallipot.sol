pragma solidity ^0.4.0;
contract Gallipot {
     
    address creator;
    string tokenName;
    uint256 totalSupply;
    uint256 unitCharge;

    mapping(address => uint256) public balance;

     function Gallipot(uint256 _initialSupply, string _tokenName, uint256 _unitHourCharge) {
        creator = msg.sender;
        tokenName = _tokenName;
        totalSupply = _initialSupply;
        balance[msg.sender] = _initialSupply;
        unitCharge = _unitHourCharge;
     }

     struct item {
         string name;
         address uia;
         address owner;
     }

     mapping (address => item) directory;

     
}