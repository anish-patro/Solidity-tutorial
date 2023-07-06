// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0<9.0.0;

contract eventOranize{

    struct Event{
        address organizer;
        string name;
        uint date;
        uint price;
        uint ticketCount;
        uint ticketRemain;
    }

    mapping(uint=>Event) public events;
    mapping(address=>mapping(uint=>uint)) public tickets;
    uint public nextId;

  function createEvent(string memory name, uint date, uint price, uint ticketCount) external {
      require(date>block.timestamp, "you can create events for future dates");
      require(ticketCount>0, "you can organize an event if you have more than 0 tickets");

      events[nextId]=Event(msg.sender, name, date, price, ticketCount, ticketCount);
      nextId++;
  }

  function ticketBuy(uint id, uint quantity) external payable{
    Event storage _event = events[id];
    require(_event.date!=0, "event doesnot exist");
    require(block.timestamp<_event.date, "event has already occured");
    require(quantity<=_event.ticketRemain, "Not enough tickets");
    require(quantity>0, "you have to buy atleats one ticket");
    require(msg.value==_event.price*quantity, "Ether is not enough");
    _event.ticketRemain-=quantity;
    tickets[msg.sender][id]+=quantity; 
  }
  function transfer(uint id, uint quantity, address to) external {
      Event storage _event=events[id];
      require(_event.date!=0, "event doesnot exist");
      require(block.timestamp<_event.date, "event has already occured");
      require(tickets[msg.sender][id]>=quantity, " you donot have enough tickets to transfer");
      tickets[msg.sender][id]-=quantity;
      tickets[to][id]=quantity;

  }
}