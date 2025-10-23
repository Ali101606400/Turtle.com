x = float(input("Please input the distance in kilometer:"))
def tasmim(x):
    if x<= 3:
        print("Distance given %s, is too near"%x) 
    elif 5 >= x and x>3:
        print("Distance given %s, is too near"%x) 
    elif x>5:
        import turtle

        # aval
        turtle.bgcolor("skyblue")
        turtle.speed(0)
        turtle.pensize(3)


        def draw_rounded_rect(x, y, width, height, radius, color):
            turtle.penup()
            turtle.goto(x + radius, y)
            turtle.setheading(0)
            turtle.color(color)
            turtle.begin_fill()
            turtle.pendown()
            for _ in range(2):
                turtle.forward(width - 2 * radius)
                turtle.circle(radius, 90)
                turtle.forward(height - 2 * radius)
                turtle.circle(radius, 90)
            turtle.end_fill()

        # badan
        draw_rounded_rect(-200, -50, 400, 150, 20, "gold")

        # sagaf
        turtle.penup()
        turtle.goto(-200, 100)
        turtle.pendown()
        turtle.color("darkorange")
        turtle.begin_fill()
        turtle.forward(400)
        turtle.left(90)
        turtle.forward(20)
        turtle.left(90)
        turtle.forward(400)
        turtle.left(90)
        turtle.forward(20)
        turtle.end_fill()

        # pangere
        for i in range(4):
            draw_rounded_rect(-170 + i * 90, 30, 60, 50, 10, "lightblue")

        # dar
        draw_rounded_rect(80, -50, 40, 80, 5, "white")

        turtle.penup()
        turtle.goto(-200, -10)
        turtle.color("brown")
        turtle.pendown()
        turtle.forward(400)

        # charkh
        for x in [-120, 100]:
            turtle.penup()
            turtle.goto(x, -70)
            turtle.color("black")
            turtle.begin_fill()
            turtle.circle(30)
            turtle.end_fill()
            turtle.penup()
            turtle.goto(x, -70)
            turtle.color("gray")
            turtle.begin_fill()
            turtle.circle(10)
            turtle.end_fill()

        # cheragh
        turtle.penup()
        turtle.goto(200, 20)
        turtle.color("red")
        turtle.begin_fill()
        turtle.circle(10)
        turtle.end_fill()

        turtle.hideturtle()
        
tasmim(x)
