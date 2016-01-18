using ODE

sigma = 10.0
R = 28.0
b = 8.0/3.0

function lorenz(t,y)
    ydot = similar(y)
    ydot[1] = sigma*(y[2] - y[1])
    ydot[2] = R*y[1] - y[2] - y[1]*y[3];
    ydot[3] = -b*y[3] + y[1]*y[2]
    ydot
end

y0 = [10.0 , 1.0 , 1.0]
tspan = [0.0 , 25.0]
t,y = ode23s(lorenz,y0,tspan)

for (ti,yi) in zip(t,y)
    print(ti,"\t",yi[1],"\t",yi[2],"\t",yi[3],"\n")
end