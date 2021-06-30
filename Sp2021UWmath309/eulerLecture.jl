using PyPlot, PyCall

function euler(f, y0, h, N, t0)
    t=t0 .+ h*(0: N)    # a length N+1 vector t=[t0, t0+h, t0+2h,..., t0+Nh]
    y=zeros(length(y0), N+1) # a zero matrix with length(y0) rows and N+1 columns
    y[:,1].=y0  #first column of y is y0
    for n=1:N
        y[:,n+1]=y[:,n]+h*f(t[n], y[:,n])
    end
    return t,y
end

f(t,y)=[y[2], -sin(y[1])]
y0=[pi/4,0]
t,y=euler(f, y0, 0.01, 1000, 0.0)
plot(t, collect(y'))
plot(t, (pi/4)*cos.(t))
legend(("\$\\theta\$", "omega", "thetaL"));
