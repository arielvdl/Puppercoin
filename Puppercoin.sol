// SPDX-License-Identifier: MIT

pragma solidity ^0.5.0;

import "https://github.com/Creepybits/openzeppelin/blob/main/contracts/token/ERC20/ERC20.sol";
import "https://github.com/Creepybits/openzeppelin/blob/main/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/Creepybits/openzeppelin/blob/main/contracts/token/ERC20/ERC20Mintable.sol";

contract Puppercoin is ERC20, ERC20Detailed, ERC20Mintable {
    constructor(
        string memory _name,
        string memory _symbo,
        uint initial_supply
    )
        ERC20Detailed(name, symbol, decimals)
        public
    {
        // constructor can stay empty
    }
}
