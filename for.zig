const expect = @import("std").testing.expect;

// for loops are used to iterate over the arrays

//5. for loop
test "for loop" {
    const rust_name = [_]u8{ 'r', 'u', 's', 't' }; // character literals are equivalent to integer literals
    for (rust_name, 0..) |character, index| {
        _ = character; //we use _ because rust does not allow us to have unused values
        _ = index;
    }
    for (rust_name) |character| {
        _ = character;
    }

    for (rust_name, 0..) |_, index| {
        _ = index;
    }

    for (rust_name) |_| {}
}
