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
 * This module is used to switch between player (current chess color).
 */
module Color(turn, resetn, out, change_enable);
    input turn, change_enable; //switch triger
    input resetn; //reset
    output [1:0] out; // curren chess color, 1 for player0, 2 for player1.

    reg [1:0] color;
    //always player0 first
    initial begin
        color = 2'b01;
    end

    //Switch player whenever get a triger or reset
    always@(posedge turn, negedge resetn)
    begin
       if(!resetn) color = 2'b01;
       else if (color == 2'b01 && change_enable) color = 2'b10;
       else if (color == 2'b10 && change_enable) color = 2'b01;
    end

    assign out = color;

endmodule

