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

//2. Arrays
//arrays are denoted as [N]T where N is the number of elements in the array and T is the type of the elements
// when working with array literals N must be replaced with _ to infer the size of the array
const zig_name = [3]u8{ 'z', 'i', 'g' }; // array of 3 u8 elements
const rust_name = [_]u8{ 'r', 'u', 's', 't' }; //declare an array literal of 4 u8 elements

const rust_name_length = rust_name.len; // get the length of the array which is 4
const rust_name_first_char = rust_name[0]; // get the first element of the array which is 'r'
const rust_name_last_char = rust_name[3]; // get the last element of the array which is 't'

pub fn main() void {
    std.debug.print("Hello,{s}\n", .{"world!"});
}
