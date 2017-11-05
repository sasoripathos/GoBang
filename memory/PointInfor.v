// Copyright Zhili (Jerry) Pan, July 2017
// Distributed under the terms of the GNU General Public License.
//
// This file is part of GoBang.
//
// GoBang is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// GoBang is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this file.  If not, see <http://www.gnu.org/licenses/>.

/**
 * This module is a module which use two D-flip-flops to record the state of a point on the game
 * board. 2'b00 means empty, 2'b01 means white, 2'b10 means black. 
 */
module PointInfor(d, clock, reset, write_enable, q);
    input [1:0] d; // data input, write_enable signal
    input clock, reset, write_enable; // clock and active-low asynchronous reset signal
    output [1:0] q; // data output of the two flip flop

    //Instantiate the flip flop for the higher bit of the information 
    D_Flip_Flop first_bit(.d(d[1]), .clock(clock), .write_enable(write_enable), .reset(reset), .q(q[1]));
    //Instantiate the flip flop for the lower bit of the information 
    D_Flip_Flop second_bit(.d(d[0]), .clock(clock), .write_enable(write_enable), .reset(reset), .q(q[0]));
    
    
endmodule
