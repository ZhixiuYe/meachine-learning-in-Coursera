function visualizeBoundaryLinear(X, y, model)
%VISUALIZEBOUNDARYLINEAR plots a linear decision boundary learned by the
%SVM
%   VISUALIZEBOUNDARYLINEAR(X, y, model) plots a linear decision boundary 
%   learned by the SVM and overlays the data on it

w = model.w;
b = model.b;
xp = linspace(min(X(:,1)), max(X(:,1)), 100);     %在min和max之间设置100个点
yp = - (w(1)*xp + b)/w(2);            %斜率为-w1/w2   截距为-b/w2
plotData(X, y);
hold on;
plot(xp, yp, '-b'); 
hold off

end
