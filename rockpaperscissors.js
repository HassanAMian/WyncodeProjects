// Rock, Paper, Scissors Game in JavaScript 
// from Codecademy JavaScript course

var r = "rock wins";
var p = "paper wins";
var s = "scissors wins";

var rockPaper = function(shoot1,shoot2) {
if (r && s) 
return r;
else
return "error";

if (r && p) 
return p;
else
return "error";

if (r && r) 
return "DRAW";
else
return "error";

if (p && p) 
return "DRAW";
else
return "error";


if (s && s) 
return "DRAW";
else
return "error";
};

console.log(rockPaper(p, p));
