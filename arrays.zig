//2. Arrays
//arrays are denoted as [N]T where N is the number of elements in the array and T is the type of the elements
// when working with array literals N must be replaced with _ to infer the size of the array
const expect = @import("std").testing.expect;

const zig_name = [3]u8{ 'z', 'i', 'g' }; // array of 3 u8 elements
const rust_name = [_]u8{ 'r', 'u', 's', 't' }; //declare an array literal of 4 u8 elements

const rust_name_length = rust_name.len; // get the length of the array which is 4
const rust_name_first_char = rust_name[0]; // get the first element of the array which is 'r'
const rust_name_last_char = rust_name[3]; // get the last element of the array which is 't'

test "array zig array properties" {
    try expect(zig_name[0] == 'z');
    try expect(zig_name.len == 3);
}

test "array rust array properties" {
    try expect(rust_name_length == 4);
    try expect(rust_name_first_char == 'r');
    try expect(rust_name_last_char == 't');
}
