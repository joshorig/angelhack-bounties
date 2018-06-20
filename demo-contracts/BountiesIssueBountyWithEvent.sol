pragma solidity ^0.4.18;

contract Bounties {

  /*
  * Enums
  */
  enum BountyStatus { CREATED, ACCEPTED, CANCELLED }

  /*
  * Storage
  */

  Bounty[] public bounties;

  /*
  * Structs
  */
  struct Bounty {
      address issuer;
      uint deadline;
      string data;
      BountyStatus status;
      uint amount; //in wei
  }


  /**
   * @dev Contructor
   */
  constructor() public {}

  function issueBounty(
      string _data,
      uint64 _deadline
  )
      public
      payable
      hasValue()
      validateDeadline(_deadline)
      returns (uint)
  {
      bounties.push(Bounty(msg.sender, _deadline, _data, BountyStatus.CREATED, msg.value));
      emit BountyIssued(bounties.length - 1,msg.sender, msg.value, _data);
      return (bounties.length - 1);
  }

  /**
  * Modifiers
  */

  modifier hasValue() {
      require(msg.value > 0);
      _;
  }

  modifier validateDeadline(uint _newDeadline) {
      require(_newDeadline > now);
      _;
  }

  /**
  * Events
  */
  event BountyIssued(uint bounty_id, address issuer, uint amount, string data);


}
