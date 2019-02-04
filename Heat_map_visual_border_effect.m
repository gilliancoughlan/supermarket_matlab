
%HEATMAP for all people in folder
heatmap_res=150
xspace=-1704/2:heatmap_res:1704/2;
yspace=-1188/2:heatmap_res:1188/2;
%426 and 297 are the central limits => -852 and -594 are the actual limits
%9 and 6 squares in
new_map=zeros(length(xspace),length(yspace))
for y=1:(length(yspace)-1)
    for x=1:(length(xspace)-1)
        new_map(x,y)=sum(xlocation_all>xspace(x) & xlocation_all<=xspace(x+1) & ylocation_all>yspace(y)& ylocation_all<=yspace(y+1));
    end
end
xpoint=(1704/2-426)/heatmap_res; ypoint=(1188/2-297)/heatmap_res;
figure; imagesc(new_map'); hold on;plot([xpoint xpoint (length(xspace)-xpoint) (length(xspace)-xpoint), xpoint], [ypoint (length(yspace)-ypoint) (length(yspace)-ypoint ) ypoint ypoint],'r', 'LineWidth', 3); colorbar; colormap winter
%figure; scatter(xlocation_all, ylocation_all)