const std = @import("std");

//0. Hello, world!
pub fn main() void {
    std.debug.print("Hello,{s}\n", .{"world!"});
}
