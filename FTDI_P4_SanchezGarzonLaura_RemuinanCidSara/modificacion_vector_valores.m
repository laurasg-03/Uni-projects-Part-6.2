function ima_proc=modificacion_vector_valores(f,c,L)
r=[0:L-1];
s=min(r+c,L-1);
ima_proc=s(f+1);
end