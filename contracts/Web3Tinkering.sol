// Specifies the version of Solidity, using semantic versioning.
// Learn more: https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html#pragma
//SPDX-License-Identifier: MIT
pragma solidity >=0.7.3;

// Defines a contract named `HelloWorld`.
// A contract is a collection of functions and data (its state). Once deployed, a contract resides at a specific address on the Ethereum blockchain. Learn more: https://solidity.readthedocs.io/en/v0.5.10/structure-of-a-contract.html
contract Web3Tinkering {

   event UpdatedMessages(string oldStr, string newStr);

   string public message;
   string public firstName = 'I am a placeholder for firstName value';
   string public lastName = 'I am a placeholder for lastName value';
    
    constructor(string memory initMessage) {

     message = initMessage;
   }

   struct MyData {
        string[] firstName;
        string[] lastname;
    }

    MyData[] myInfo;

   function update(string memory newMessage) public {
      string memory oldMsg = message;
      message = newMessage;
      emit UpdatedMessages(oldMsg, newMessage);
   }

   function getMessage(string memory _name) public pure {
    _name = 'My Name is Jaylan';
   }

   function setMyInfo(string[] memory _firstName, string[] memory _lastName) public {
        myInfo.push(MyData(_firstName, _lastName));
    }

   function getMyInfo() public view returns (MyData[] memory){
        return myInfo;
    }

}