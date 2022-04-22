const getContractAddress = require("@ethersproject/address").getContractAddress;
var futureAddress = getContractAddress({
    from:"0x2Cf9716885F6C169863e21AEac502172a38a5da7",
    nonce: 1
});

console.log(futureAddress)

//