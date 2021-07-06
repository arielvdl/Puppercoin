// SPDX-License-Identifier: MIT

pragma solidity ^0.5.0;

import "https://github.com/Creepybits/Puppercoin/blob/main/PupperCoin.sol";
import "https://github.com/Creepybits/openzeppelin/blob/main/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/Creepybits/openzeppelin/blob/main/contracts/crowdsale/emission/MintedCrowdsale.sol";


// Inherit the crowdsale contracts:
contract PupperCoinCrowdsale is Crowdsale, MintedCrowdsale{

    constructor(
        // Constructor parameters:
        uint rate,
        address payable wallet,
        SvenskTiger token,
        uint goal,
        uint open,
        uint close
    )
        // Pass constructor parameters to the crowdsale contracts:
        Crowdsale(rate, wallet, token)
        public
    {
        // constructor can stay empty
    }
}

contract PuppercoinSaleDeployer {

    address public token_sale_address;
    address public token_address;

    constructor(
        // Constructor parameters:
        string memory name,
        string memory symbol,
        address payable wallet,
        uint goal
    )
        public
    {
        // Create the Puppercoin and keep its address:
        PupperCoin token = new PupperCoin(name, symbol, decimals);
        token_address = address(token);

        // Create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and (now + 24 weeks):
        PupperCoinSale token_sale = new PupperCoinSale(1, wallet, token, goal, now, now + 24 weeks);
        token_sale_address = address(token_sale);

        // Make the PupperCoinSale contract a minter, then have the PupperCoinSaleDeployer renounce its minter role:
        token.addMinter(token_sale_address);
        token.renounceMinter();
    }
}
