pragma solidity ^0.8.7 ;

contract studentContract {

	struct student{
		string name ;
		uint roll ;
		string subject ;
		bool passOut ;
	}

	mapping ( uint => student ) studentMap ;

	function enrollStudents( uint _roll , string memory _name , string memory _subject) public {

		studentMap[_roll].roll = _roll ;
		studentMap[_roll].name = _name ;
		studentMap[_roll].subject = _subject ;
		studentMap[_roll].passOut =  false ;
 	}

	function getStudentDetails(uint _roll) view public returns (uint,string memory,string memory,bool) {

		return (
				studentMap[_roll].roll,
				studentMap[_roll].name,
				studentMap[_roll].subject,
				studentMap[_roll].passOut
				);
	}

	function updateStatus(uint _roll) public {

		studentMap[_roll].passOut = true ;
	}
}

https://polygonscan.com/tx/0x32Bee9632154A62cBDc1A54602B6c64A1aEC968D
pragma solidity ^0.8.9 ;
import "./new.sol" ;

contract Employer {
    studentContract s1 = studentContract()
}
