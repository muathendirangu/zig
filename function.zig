const expect = @import("std").testing.expect;

// 5. functions
// functions are immutable by default in zig and if a copy is desired a user must explicitly declare it
// function names use camelCase format

fn multiply(a: i32, b: i32) i32 {
    return a * b;
}

test "multiply function" {
    const result = multiply(2, 3);
    try expect(result == 6);
    try expect(@TypeOf(multiply) == fn (i32, i32) i32);
    try expect(@TypeOf(result) == i32);
}

fn fibonacci(n: u32) u32 {
    if (n == 0 or n == 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

test "fibonacci function" {
    try expect(fibonacci(0) == 0);
    try expect(fibonacci(1) == 1);
    try expect(fibonacci(2) == 1);
    try expect(fibonacci(3) == 2);
    try expect(fibonacci(4) == 3);
    try expect(fibonacci(10) == 55);
}
