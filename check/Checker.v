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
 * This module takes in five adjacent points on the board, give out whether there are five adjacent
 * chesses with same color. If yes, give out the color, else give out 0
 */
module Checker(a, b, c, d, e, ans);
    input [1:0] a,b,c,d,e; //Five 2-bit inputs stands for five adjacent points on the board
    output reg [1:0] ans; //2-bit output; 0: no one win; 1: player 1 wins; 2: player 2 wins
    
    always@(*)
    begin
        // If all color 01, set ans to 01
        if((a==2'b01) && (b==2'b01) && (c==2'b01) && (d==2'b01) && (e==2'b01)) ans = 2'b01;
        // Else if all color 10, set ans to 10
        else if ((a==2'b10) && (b==2'b10) && (c==2'b10) && (d==2'b10) && (e==2'b10)) ans = 2'b10;
        // Else set ans to 00
        else ans = 2'b00;
    end

endmodule
