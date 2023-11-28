const std = @import("std");

//1. ASSIGNNMENT of values to variables and constants

// **IMPORTANT POINT** constants and variables must always have values assigned to them
// **IMPORTANT POINT** if no values are assigned to them, the undefined value is given which can be coreced to any type
// as long as a type annotation is provided

const constant: i32 = 11; // signed i32 integer
var variable: u32 = 11000; // unsigned i32 integer

// **IMPORTANT POINT** where possible const values are preffered over var values *

const infered_constant = @as(i32, 11); // @as performs an explicit coercion
var infered_variable = @as(u32, 11000); // @as performs an explicit coercion

pub fn main() void {
    std.debug.print("Hello,{s}\n", .{"world!"});
}
