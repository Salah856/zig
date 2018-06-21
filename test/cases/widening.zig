const std = @import("std");
const assert = std.debug.assert;
const mem = std.mem;

test "integer widening" {
    var a: u8 = 250;
    var b: u16 = a;
    var c: u32 = b;
    var d: u64 = c;
    var e: u64 = d;
    var f: u128 = e;
    assert(f == a);
}

test "implicit unsigned integer to signed integer" {
    var a: u8 = 250;
    var b: i16 = a;
    assert(b == 250);
}

test "float widening" {
    var a: f32 = 12.34;
    var b: f64 = a;
    var c: f128 = b;
    assert(c == a);
}
