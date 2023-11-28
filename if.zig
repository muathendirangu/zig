//3. If statement
//if statements are denoted as if (condition) { code }
//if statements only accept bool values in zig

const expect = @import("std").testing.expect;

test "if statement" {
    var truthvalue = true;
    var a: u8 = 11;
    if (truthvalue) {
        a += 1;
    } else {
        a -= 1;
    }
    try expect(a == 12);
}

//if statements also work as expressions in zig
test "if statement as expression" {
    var truthvalue = true;
    var a: u8 = 11;
    a += if (truthvalue) 1 else 1;
    try expect(a == 12);
}
