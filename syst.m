function a = syst();
g=9.81; m=400; mu=0.2; k=1.4e5; r=0.1;
[t,x]=ode45(@eqns,[0 2],[0 0]);
a=[t,x(:,1)];
plot(t,x(:,1),'r','linewidth',2)
    function dx=eqns(t,x)
        dx=zeros(2,1);
        y=x(1);dy=x(2);
        dx(1)=dy;
        Fs=k*(y-r);
        dx(2)=-(1/m)*(Fs+mu*m*g*sign(dy));
    end
end

