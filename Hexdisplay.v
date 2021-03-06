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
 * This module is used to display the X/Y coordinate.
 */
module Hexdisplay(out, in);
    input [3:0] in;
    output [6:0] out;

    reg [6:0] num;

    always @ (*)
    begin
        case (in[3:0])
            4'b0000: num[6:0] = 7'b1000000; //0
            4'b0001: num[6:0] = 7'b1111001; //1
            4'b0010: num[6:0] = 7'b0100100; //2
            4'b0011: num[6:0] = 7'b0110000; //3
            4'b0100: num[6:0] = 7'b0011001; //4
            4'b0101: num[6:0] = 7'b0010010; //5
            4'b0110: num[6:0] = 7'b0000010; //6
            4'b0111: num[6:0] = 7'b1111000; //7
            4'b1000: num[6:0] = 7'b0000000; //8
            4'b1001: num[6:0] = 7'b0010000; //9
            4'b1010: num[6:0] = 7'b0001000; //A
            4'b1011: num[6:0] = 7'b0000011; //b
            4'b1100: num[6:0] = 7'b1000110; //C
            4'b1101: num[6:0] = 7'b0100001; //d
            4'b1110: num[6:0] = 7'b0000110; //E
            4'b1111: num[6:0] = 7'b0001110; //F
            default: num[6:0] = 7'b1111111;
       endcase
    end

    assign out[6:0] = num[6:0];
    
endmodule
