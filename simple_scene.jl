using Colors
using Luxor

function tri(p::Point, b::Int, h::Int, action=:none)

    pts = [p, Point(b + p.x, p.y), Point(p.x + b/2, -h + p.y)]
    poly(pts, :fill)

end

@png begin
    background("black")
    sethue("green")
    tri(Point(-100, 0), 200, 150)
    tri(Point(-125, 100), 250, 200)
    tri(Point(-375/2, 200), 375, 200)

    sethue("brown")
    box(Point(-60, 250), Point(60, 200), :fill)

    r = 10
    sethue("red")
    circle(Point(-30, -50), r, :fill)
    circle(Point(-60, 150), r, :fill)
    circle(Point(50, 60), r, :fill)

    sethue("blue")
    circle(Point(30, -30), r, :fill)
    circle(Point(100, 170), r, :fill)
    circle(Point(-40, 80), r, :fill)

    sethue("yellow")
    star(Point(0,-150), 20, 5, 0.5, 0, :fill)

    setopacity(0.5)
    circle(Point(0, -150), 30, :fill)

end
