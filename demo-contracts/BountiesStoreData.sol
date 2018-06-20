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


}
