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
 * This module give out a write_enable signal according to the current state of a point on the game board.
 */
module Enable_control(current_state, out);
    input [1:0] current_state; // the current state of a point
    output reg out; // write_enable signal
    
    always@(*)
    begin
        // If the point is not empty, set write_enable signal low
        if(current_state[1:0] != 2'b00) out <= 0;
        else out <= 1;
    end
endmodule
