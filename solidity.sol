pragma solidity ^0.5.0;

contract analysisBase {

struct Analysis {
    address adr;
    string date;
    bytes32 hash;
    }

Analysis [] public analyzes;


function addAnalysis (address _adr, string memory _date, bytes32 _hash) public {
    analyzes.push(Analysis({adr: _adr, date: _date, hash: _hash}));
    
 } 

function isHashExist (bytes32 _hash) public view returns (bool) {
      for (uint i; i< analyzes.length; i++) {
          if (analyzes[i].hash==_hash)
          return true;
      }
  }
}
