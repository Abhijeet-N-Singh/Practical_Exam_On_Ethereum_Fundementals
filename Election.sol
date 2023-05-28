pragma solidity ^0.8.20 ;

contract election {

    struct voter {
        uint voterId  ;
        string name   ;
        bool voted    ;
    }

    struct candidate {
        uint candidateId ;
        string name ;
        uint totalVote ;
    }

    mapping (uint => voter ) voterMap ;
    mapping (uint => candidate) candidateMap ; 

    function enrollVoter(uint _voterId, string memory _name) public {

        voterMap[_voterId].voterId = _voterId ;
        voterMap[_voterId].name = _name ;
        voterMap[_voterId].voted = false ;
    }

    function getVoterDetails (uint _voterId) view public returns(uint,string memory,bool){

        return( voterMap[_voterId].voterId,
                voterMap[_voterId].name,
                voterMap[_voterId].voted
                );
    }


    function  enrollCandidate (uint _candidateId , string memory _name ) public {

        candidateMap[_candidateId].candidateId = _candidateId;
        candidateMap[_candidateId].name = _name  ;
        candidateMap[_candidateId].totalVote = 0 ;
    }

    function getCandidateDetails(uint _candidateId) view public returns(uint,string memory,uint){

        return(candidateMap[_candidateId].candidateId,
               candidateMap[_candidateId].name,
               candidateMap[_candidateId].totalVote ) ;
    }

    function vote (uint _candidateId,uint _voterId) public {
        voterMap[_voterId].voted = true ;

        candidateMap[_candidateId].totalVote++ ;
    }



}


