// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

contract Twitter {
    mapping (address=>string[])public tweet;

    function createTweet(string memory _tweet)public{
        tweet[msg.sender].push(_tweet);
    }
    
    function getTweet(address _address,uint _i)public view returns(string memory){
        return tweet[_address][_i];
    }
    function getAllTweet(address _add)public view returns(string[] memory ){
        return tweet[_add];
    }

}