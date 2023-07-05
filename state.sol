// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 9.0.0;

// struct Student{
//     uint roll;
//     string name;
// }

// contract Identity{
//     string name;
//     uint age;

//     constructor() public {
//         name="anish";
//         age=20;
//     }

//     function getName() view public returns (string memory){
//         return name;
//     }
//     function getAge() view public returns (uint){
//         return age;
//     }
//     function setAge() public{
//         age++;
//     }
// }
contract state{

    //    uint public age; //here we can assign with some value
//    uint public num;
// //    age=10;  will give compile error
// // or else we can create constructors

// //or can crreate set function

// function getAge() public returns(uint){
//     return age;
// }
  
 // 1.  // string name="anish";
    
        // function store() pure public returns (uint){
        //     // string memory friend="anish"; string have to declare memory in local variable cases
        //     uint num=10;
        //     uint age=20;
        //     return num;
        // }

 //2.   // uint age=10;
        // function name() visibility pure/view returns(data_type)

        // function getter() public view returns(uint){
        //   return age;
        // }
        // function setter(uint newage, uint newage2) public returns(uint){
        // age=newage+newage2;
        // }

//3. view can change state variables. whereas pure cant change state variables
        //uint public age=20;
        //function getter() public pure returns(uint){
        //  uint roll=20;
        // return age; //gives error  because of it is trying to change the state variable age and it is pure
        //  return roll;
        // }
        

//4.   
    //   uint public count;     
    //   constructor(uint new_count) {
    //     count=new_count;  
    //   }

//5.
    // int8 age=-128;
    // int8 num=127;

    // uint c=-12;//error for -ve sign

//6.
    // uint8 public money=255;

    // function setter() public{
    //     money++;
    // }


//7.  //fixed array

    //  uint[4] public arr=[10, 20, 30, 40];

    //  function setter(uint index, uint value) public{
    //      arr[index]=value;
    //  }
    //  function length() view public returns(uint){
    //    return arr.length;
    //  }

//8.  //dynamic size array
     
//      uint[] public arr;
//      function push_ele(uint item) public{
//          arr.push(item);
//      } 
//      function pop_ele() public{
//          arr.pop();
//      }
//      function length() view public returns(uint){
//          return arr.length;
//      }

//9. byte arrays
    // bytes3 public b3;  //3 bytes array
    // bytes2 public b2;  //2 bytes array

    // function setter() public{
    //     b2='ab'; //gives hexadecimal number a-61, b-62
    //     b3='abc';
    // }

//10.  byte array
    //  bytes public b1="abc";

    //  function push_ele()  public{
    //      b1.push('d');
    //  }
    //  function get_ele(uint ind) view public returns(bytes1){
    //      return b1[ind];
    //  }
    //  function getLength() view public returns(uint){
    //      return b1.length;
    //  }


//11.  // if else 

    // function check(int a) public pure returns(string memory){
    //    string memory value;
    //    if(a>0) value="greater than zero";
    //    else if(a==0) value="equal to zero";
    //    else value="less than zero";

    //    return value;
    // }


//12.  bool data type

    // bool public value=true;  //default false

    // function check(uint a)  public returns(bool){
    //     if(a>100){
    //         value=true;
    //      return value;
    //     } 
    //     else{
    //         value=false;
    //       return value;
    //     } 
    // }
    

//13. structure in solidity

     
    // Student public s1;

    // constructor(uint _roll, string memory _name) {
    //     s1.roll=_roll;
    //     s1.name=_name;
    // }
    // function change(uint _roll, string memory _name) public{
    //     Student memory new_stud=Student({
    //         roll: _roll,
    //         name: _name
    //     });
    //     s1=new_stud;
    // }

//14.  enum keyword

    //   enum user{allowed, not_allowed, hold}

    //   user public u1=user.allowed;
    //   uint public lottery=500;

    //   function owner() public{
    //       if(u1==user.allowed){
    //       lottery=0;
    //   }
    //   }

//15.  mapping
    
    //  mapping(uint=>string) public roll_no;

    //  function setter(uint keys, string memory name) public{
    //      roll_no[keys]=name;
    //  }
     

//16.   storage vs memory
      
    //   string[] public student=["ani", "asi"];
    //    function mem() view public{    //mem function will not change the value of index 0.
    //       string[] memory s1=student;
    //       s1[0]="anish";
    //   } 
    //   function sto() public{
    //       string[] storage s1=student;
    //       s1[0]="anish";
    //   } 


//17.  
    //  struct student {
    //      uint class;
    //      string name;
    //  }

    //   mapping(uint=>student) public data;

    //   function setter(uint _roll, string memory _name, uint _class) public{
    //       data[_roll]=student(_class, _name);
    //   }


//18.  global variables (https://docs.soliditylang.org/en/v0.8.6/units-and-global-variables.html)
    //    function demo() public view returns(uint block_no, uint time_stamp, address msg_Sender){
    //        return (block.number, block.timestamp, msg.sender);
    //    }


//19.  vid number 30 see again codeeater solidity playlist
//    address payable user= payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
//    function payEther() public payable{

//    }

//    function getBalance() public view returns(uint){
//        return address(this).balance;
//    }

//    function sendEtherAccount() public {
//       user.transfer(1 ether);
//    }

//20.vid no. 32 see u tube for code(private, public, external, internal)


//21. loops

      uint[3] public arr;
      uint public count;

      function loop() public{
    //      while(count<arr.length){
    //      arr[count]=count;
    //      count++;
    //  }

    // for(uint i=count; i<arr.length;i++){
    //  arr[i]=i;
    // }

    // do{
    //     arr[count]=count;
    //     count++;
    // }while(count<arr.length);

      } 
    
  }