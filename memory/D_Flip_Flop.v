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

/* This module implements the D-flip-flop. It takes one bit input, a clock signal and an active-low
 * asynchronous reset signal, put out one bit answer.
 */
module D_Flip_Flop(d, clock, write_enable, reset, q);
    input d, clock, reset, write_enable;
    output reg q;

    initial begin
       q = 0;
    end
    // Update the information records in the D-flip-flop at each positive edge of clock and each
    // negative edge of reset
    always@(posedge clock, negedge reset) begin
        // If reset signal is low, set the information
        if (reset == 1'b0)
            q <= 0;
        // Else, update the information according to the given input
        else if (write_enable)
            q <= d;
    end

endmodule
