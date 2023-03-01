
function gen_mesh_rectangle(N,M,xmin,xmax,ymin,ymax)
    delta_x=(xmax-xmin)/N
    delta_y=(ymax-ymin)/M

    nodos=[xmin  ymin]
    for i in range(1,M)
        for j in range(1,N)
            nodos=vcat(nodos,[xmin+j*delta_x  ymin+i*delta_y])
        end
    end
    return nodos
end

function beta(x,y,x0,y0,x1,y1,x2,y2)
    #funcion de base que vale 1 en (x2,y2) y 0 en (x0,y0) y (x1,y1)
    delta=(x1-x0)*(y2-y0)+(y0-y1)*(x2-x0)
    bb=(x1-x0)*(y-y0)+(y0-y1)*(x-x0)
    bb=bb/delta
    return bb
end
