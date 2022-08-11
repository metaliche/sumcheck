// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.16 and less than 0.9.0
pragma solidity ^0.8.16;

import "truffle/Assert.sol";
import "../contracts/verifier.sol";

contract TestVerifier {
    Verifier v = new Verifier();

    function testVerifySha256_ReturnsTrue() public {
        string memory text = "Hello world";
        bytes32 sumcheck = sha256(bytes(text));
        Assert.equal(v.verifySha256(text, sumcheck), true, "Returns true for correct sumcheck");
    }

    function testVerifySha256_ReturnsFalse() public {
        Assert.equal(v.verifySha256("wrong", bytes32("wrong")), false, "Returns false for wrong sumcheck value");
    }
}
