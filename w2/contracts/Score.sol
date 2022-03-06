//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0; 
contract Score {
    mapping(address => uint256) score;
    address teacher;

    constructor() {
        teacher = address(new Teacher(address(this)));
    }

    modifier _onlyTeacher() {
        require(msg.sender == teacher, "not teacher");
        _;
    }

    function addScore(uint sum) external _onlyTeacher {
        require(score[msg.sender] + sum <= 100, "add too much");
        score[msg.sender] += sum;
    }

    function subScore(uint sum) external _onlyTeacher {
        score[msg.sender] -= sum;
    }
}

contract Teacher {
    Score score;

    constructor(address _score) {
        score = Score(_score);
    }

    function addScore(uint sum) external {
        score.addScore(sum);
    }

    function subScore(uint sum) external {
        score.subScore(sum);
    }
}