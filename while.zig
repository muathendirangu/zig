const expect = @import("std").testing.expect;
//4. While Loop
// In zig a while loop has 3 parts: a condition, a block and a continue expression(this is optional).
// a while loop with continue expression:

test "while loop with continue expression" {
    var i: u8 = 0;
    while (i < 10) : (i += 1) {
        if (i == 5) continue;
    }
}

test "while loop with break expression" {
    var i: u8 = 0;
    while (i < 10) : (i += 1) {
        if (i == 5) break;
    }
    try expect(i == 5);
}

test "while loop" {
    var i: u8 = 0;
    while (i < 10) : (i += 1) {
        try expect(i < 10);
    }
}
