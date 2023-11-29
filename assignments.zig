const expect = @import("std").testing.expect;

//1. ASSIGNNMENT of values to variables and constants

// **IMPORTANT POINT** constants and variables must always have values assigned to them
// **IMPORTANT POINT** if no values are assigned to them, the undefined value is given which can be coreced to any type
// as long as a type annotation is provided

// variables names use the snake_case format

const constant: i32 = 11; // signed i32 integer
var variable: u32 = 11000; // unsigned i32 integer
test "assigning values to variables and constants" {
    try expect(constant == 11);
    try expect(variable == 11000);
}

// **IMPORTANT POINT** where possible const values are preffered over var values *

const infered_constant = @as(i32, 11); // @as performs an explicit coercion
var infered_variable = @as(u32, 11000); // @as performs an explicit coercion

test "assigning values to inferred variables and constants" {
    try expect(infered_constant == 11);
    try expect(infered_variable == 11000);
}
