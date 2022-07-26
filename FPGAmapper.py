#!/usr/bin/env python
# CNF -> FPGA mapper
filename = '<FILENAME>.cnf'
fileout = 'varcells.v'

f = open(filename)
cnf = f.readlines()
f.close()

print('Parsing',filename,'...');
literals = []
v = []

cnt = 0;
for line in cnf:
    if len(line)>0:
    	if (line[0]=='p'):
    		num_clauses = int(line.split(' ')[3]);
    		num_vars = int(line.split(' ')[2]);
    		print('Reading',num_clauses,'clauses with',num_vars,'variables...')
    	if (line[0]!='p' and line[0]!='c'):
        	tmp = line.split(' ')[:-1];
        	tmp_insert = [];
        	for item in tmp:
        		tmp_insert.append(int(item));
        	literals.append(tmp_insert);
        	#for var in tmp:
            	#	if not abs(int(var)) in v: v.append(abs(int(var)))
    	cnt = cnt + 1;
    	if cnt % 1000 == 0: print(cnt,' clauses loaded...');        

for i in range(1,num_vars+1):
	v.append(i);

num_clauses = len(literals)
num_vars = len(v)
print(num_clauses,'clauses read with',num_vars,'variables.')



# save to file - first empty file:
text_file = open(fileout,"w");
text_file.write('');
text_file.close();

print(fileout,'generated..');

text_file = open(fileout,"a");
o = '';

##########################################################################################################################################
#
# THis module needs to be included in the "Master" file
# include "varcells.v"
#
##########################################################################################################################################
print('variable cells...');
# variable cells:

for var in v:
    o = o + "\n    //VARIABLE CELL "+str(var)+":\n"
    # F1 formula:
    matches = (x for x in literals if (var in  x ) );
    tmpvar = [];
    cnt = 0;
    for m in matches:
    	if cnt == 0: o = o + "    assign F1["+str(var)+"] =";
    	o = o + " ~(";
    	for vs in m:
    		if vs!=var:
    			if vs>0: o = o + "x["+str(abs(vs))+"] |";
    			if vs<0: o = o + "~x["+str(abs(vs))+"] |";
    			if abs(vs) not in tmpvar: tmpvar.append(abs(vs));
    	o = o[0:-2];
    	o = o + ") |";
    	cnt = cnt + 1;
    if cnt  == 0: print('ATTENTION: var',var,'has no positive assignments');
    o = o[0:-1];
    o = o + ";\n";
    text_file.write(o); o = '';
    # F0 formula:
    matches = (x for x in literals if (var*-1 in  x ) );
    cnt = 0;
    for m in matches:
    	if cnt == 0: o = o + "    assign F0["+str(var)+"] = ";
    	o = o + " (";
    	for vs in m:
    		if abs(vs)!=var:
    			if vs>0: o = o + "x["+str(abs(vs))+"] |";
    			if vs<0: o = o + "~x["+str(abs(vs))+"] |";
    			if abs(vs) not in tmpvar: tmpvar.append(abs(vs));
    	o = o[0:-2];
    	o = o + ") &";
    	cnt = cnt + 1;
    if cnt  == 0: print('ATTENTION: var',var,'has no negative assignments');
    o = o[0:-1];
    o = o + ";\n";
    text_file.write(o); o = '';
    # CONTRA:
    o = o + "    assign CONTRA_NEXT["+str(var)+"] =  ~ (~F1["+str(var)+"] | F0["+str(var)+"]) ;\n"
    text_file.write(o); o = '';
    # CONTRA_IN:
    
    cnt = 0;
    for vs in tmpvar:
    	if cnt == 0: o = o + "    assign CONTRA_IN["+str(var)+"] = ";
    	o = o + "CONTRA["+str(vs)+"] |";
    	cnt = cnt + 1;
    if cnt  == 0: print('ATTENTION: var',var,'has no contra_in!');
    o = o[0:-1];
    o = o + ";\n";
    text_file.write(o); o = '';
    
    if var % 10 == 0: print(var,'variable cells generated...');        

##########################################################################################################################################
# clauses
print('clauses...');

o = o + "\n    //clauses:\n"
cnt = 1;
for lit in literals:
    o = o + "    assign c["+str(cnt)+"] = (";
    for l in lit:
        tmp = int(l);
        if tmp>0: 
            o = o + "x["+str(abs(tmp))+'] |'
        else:
            o = o + "~x["+str(abs(tmp))+'] |'
    o = o[0:-1];
    o = o + ');\n';
    text_file.write(o); o = '';
    cnt = cnt + 1;
    if cnt % 1000 == 0: print(cnt,'clause assigns generated...');

o = o + "\n    //update sat when clauses change (all clauses AND' will be sat)\n"
o = o + "    assign solution = ("
for i in range(1,num_clauses+1):
    o = o + "c["+str(i)+"] & ";
    if i % 1000 == 0: 
    	print(i,'cX assigns generated...');
    	text_file.write(o); o = '';
o = o[0:-3];
o = o + ");\n";
text_file.write(o); o = '';
o = o + "    assign led0_r = ("
for i in range(1,num_clauses+1):
    o = o + "c["+str(i)+"] & ";
    if i % 1000 == 0: 
    	print(i,'led0 assigns generated...');
    	text_file.write(o); o = '';
o = o[0:-3];
o = o + ");\n";
text_file.write(o); o = '';

text_file.close();

print('FINISHED. Verilog file written.');


