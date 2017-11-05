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
 * This module takes 16 2-bit inputs (the information of 16 different points on the same row of
 * the game board) and a 4-bit select signal (the y-coordinate of a point). According to the
 * given y-coordinate, read the information for the point and forward it to output.
 */
module Y_Coordinate_Select_Read(in, select, out);
    input [31:0] in; // 16*2 input data
    input [3:0] select; // 4-bit select signal
    output [1:0] out; //output line

    //According to the select signal, put the right input data to the output line
    Select16to1 getDataFromPoint(.in(in), .select(select), .out(out));

endmodule
