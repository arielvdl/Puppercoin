pragma solidity ^0.5.0;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


// Inherit the crowdsale contracts:
contract PupperCoinSale is Crowdsale, MintedCrowdsale{

    constructor(
        // Constructor parameters:
        uint rate,
        address payable wallet,
        PupperCoin token,
        uint goal
        
        
        
    
        
    )
        // Pass constructor parameters to the crowdsale contracts:
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor can stay empty
    }
}
