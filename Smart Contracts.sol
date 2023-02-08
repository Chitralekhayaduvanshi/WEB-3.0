// SPDX-License-Identifier: MIT  /*Providing the License, if any or mark Unlicensed. Remember Solidity is case sensitive language!*/

pragma solidity ^ 0.8.13; //it is used to declare the version of solidity in use.

//creating the contract with in built libraries to embed
contract Hello_World{
    //declaring the variables
    string public greetingPrefix="Hey";
    string public NFT_Name;
    string public Year;
    string public Owner;
//assigning the default values
    constructor(){
       NFT_Name = "Logo";
       Year="2022";
       Owner="Chitralekha Yaduvanshi";
    }
//creating various functions to CRUD the variables
    function setNFT_Name(string memory newNFT_Name) public{
        NFT_Name=newNFT_Name;
    }
    function setYear(string memory newYear) public{
        Year=newYear;
    }
    function setOwner(string memory newOwner) public{
        Owner=newOwner;
    }
    function greet() public view returns (string memory){
        return string(abi.encodePacked(greetingPrefix,"My NFT is", NFT_Name, "Launched in Year", Year, "Currently it is owned by", Owner));
    }
}