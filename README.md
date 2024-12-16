# RC Robots Simulation

## Overview
This is a Ruby program that simulates the navigation of Remote-Controlled (RC) Robots in a rectangular warehouse grid. The robots can move forward, turn left, or turn right based on a set of instructions. The program ensures that the robots stay within the boundaries of the grid while following the given commands.

## Problem Description
A robot's position is represented by its x and y coordinates and its facing direction (N, S, E, or W). Robots are controlled using a series of instructions:
- `L`: Turn left 90 degrees without moving.
- `R`: Turn right 90 degrees without moving.
- `M`: Move forward one grid square in the direction the robot is currently facing.

### Input
The input consists of:
1. The warehouse size (upper-right coordinates of the grid), where the bottom-left corner is assumed to be `(0, 0)`.
2. A series of robot commands, where each robot's input is provided in two lines:
   - **Line 1**: Starting position (`x, y, direction`) of the robot.
   - **Line 2**: Movement instructions (a string of `L`, `R`, and `M`).

### Output
For each robot, the final position and direction are displayed after executing all instructions.

---

## How to Run the Program

### Steps
1. Clone or download the repository to your local machine.
2. Navigate to the project directory.
3. Run the script:
   ```bash
   ruby run_robots.rb
