using ODE

gamma = 0.15

function harmonic_oscillator(t,y)
    ydot = similar(y)
    ydot[1] = y[2]
    ydot[2] = -y[1] - gamma*y[2]
    ydot
end

y0 = [1.,0.]
tspan = [0.0 , 10.0]
t,y = ode23s(harmonic_oscillator,y0,tspan)

for (ti,yi) in zip(t,y)
    print(ti,"\t",yi[1],"\t",yi[2],"\n")
end