# ActionScript 3 Collision Detection Bug
This repository demonstrates a common bug in ActionScript 3 collision detection and its solution. The bug arises from using `getBounds()` on MovieClips that aren't on the same display list level, leading to inaccurate collision detection results.

## Bug Description
The `checkCollision` function uses `getBounds()` to determine if two MovieClips are colliding.  However, if the MovieClips are on different display list levels (e.g., one is a child of another object), `getBounds()` returns a rectangle relative to the parent, leading to incorrect intersection calculations.

## How to Reproduce
1.  Clone this repository.
2.  Open `CollisionBug.as` in a suitable ActionScript 3 editor (like FlashDevelop).
3.  Compile and run. Observe inaccurate collision detection.

## Solution
The solution involves using `globalToLocal()` to convert coordinates to a common coordinate system before the collision check.

## Solution Code
The corrected code is provided in `CollisionSolution.as`.