/* File: Challenge-10.k
 ---------------------------
In this exercise, your job is to get Karel to create a checkerboard pattern of
beepers inside an empty rectangular world.

This problem has a nice decomposition structure along with some interesting
algorithmic issues. As you think about how you will solve the problem,
you should make sure your solution works with checkerboards that are different
in size from the standard 8×8 checkerboard shown in the example. Odd-sized
checkerboards are tricky, and you should make sure that your program generates
the following pattern in a 5×3 world.

Another special case you need to consider is that of a world that is only
one column wide or one row high.
*/
import "turns";
function SolveChallenge(){
	while(leftIsClear()){
		infinitePattern();
	}
}

function infinitePattern(){
	putBeeper();
	if(frontIsClear()){
    move();
  }
	if(frontIsClear()){
    move();
  }
	if(frontIsBlocked()){
		if(facingEast()){
      turnWest();
    }
		else {turnEast();}
	}
}



function turnWest(){
	turnLeft();
	if(frontIsClear()){
		move();
	}
	turnLeft();
}

function turnEast(){
	turnRight();
	if(frontIsClear()){
		move();
	}
	turnRight();
}
