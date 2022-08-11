// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.16 and less than 0.9.0
pragma solidity ^0.8.16;

contract Verifier {
    function verifySha256(string memory s, bytes32 checksum) public returns (bool checksumOK) {
        return checksum == sha256(bytes(s));
    }
}
