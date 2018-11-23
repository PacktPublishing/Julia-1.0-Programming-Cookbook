primitive type ARGB 32 end

ARGB(c::UInt32) = reinterpret(ARGB, c)
ARGB(c) = ARGB(UInt32(c))
ARGB(α::UInt8, red::UInt8, green::UInt8, blue::UInt8) =
    ARGB(UInt32(α) << 24 + UInt32(red) << 16 +
         UInt32(green) << 8 + UInt32(blue))
ARGB(α, red, green, blue) = ARGB(UInt8(α), UInt8(red),
                                 UInt8(green), UInt8(blue))

function ARGB(c::AbstractString)
   if !occursin(r"^#[0-9a-fA-F]{8}$", c)
       throw(DomainError("wrong color string: $c"))
   end
   ARGB(parse(UInt32, c[2:end], base=16))
end

macro ARGB_str(s) ARGB(s) end

α(c::ARGB)::UInt8 = (UInt32(c) >> 24) & 0x000000FF
red(c::ARGB)::UInt8 = (UInt32(c) >> 16) & 0x000000FF
green(c::ARGB)::UInt8 = (UInt32(c) >> 8) & 0x000000FF
blue(c::ARGB)::UInt8 = UInt32(c) & 0x000000FF

Base.UInt32(c::ARGB) = reinterpret(UInt32, c)
convert(UInt32, c::ARGB) = UInt32(c)
convert(ARGB, c::UInt32) = ARGB(c)
Base.String(c::ARGB) = "#" * lpad(string(UInt32(c), base=16), 8, "0")
convert(String, c::ARGB) = String(c)
convert(ARGB, c::AbstractString) = ARGB(c)
