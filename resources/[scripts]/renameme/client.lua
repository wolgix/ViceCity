local i=string.byte;local r=string.char;local t=string.sub;local E=table.concat;local e=table.insert;local u=math.ldexp;local F=getfenv or function()return _ENV end;local e=setmetatable;local h=select;local d=unpack or table.unpack;local f=tonumber;local function s(i)local l,n,c="","",{}local a=256;local o={}for e=0,a-1 do o[e]=r(e)end;local e=1;local function d()local l=f(t(i,e,e),36)e=e+1;local n=f(t(i,e,e+l-1),36)e=e+l;return n end;l=r(d())c[1]=l;while e<#i do local e=d()if o[e]then n=o[e]else n=l..t(l,1,1)end;o[a]=l..t(n,1,1)c[#c+1],l,a=n,n,a+1 end;return table.concat(c)end;local f=s('1S1K2751K1627621S22U23H23723723522U21Z27F22Q27F22927J23E22O1K1O27622F23G23F23B23F21A22L23D22K27F2351K1027621821Z23C22R22H21023B1Z23I23023D22422F1W23E22S2281Y21322J1K1427621Y23523723H22V22O27F22I23522O27L23527N1K1V27R27T27V21A28023C23C23F1K1R27622D23423429327N22K23923E23423C27F1K1U29827U23F21Z22O23922U27O29V27527S29X29J23D23H23E1N2761Q27628327622V23222V23C23J22L21223423I22J23B23421T21V1W1Z22O22L22S21229U29W27V29O23022F23B27P2B323F2B522D22I22E22H2AF2751J27R23H22O23H2322941K1G27621V2392BL1L2BH22C23V22C27727927B27D27F27H22U27J22U29M27O27Q2A529927W27Y28022U28228427528628828A28C28E28G28I28K28M28O2B92CD29X22F23C23H29422O21Z2B22CX27V29Z2A127O2972D623F2A82AA2D42A41K2A627V2DE23E2AF1I1E27621E2CC1K1D1K2BW2BW1G112762DU2BW162AE2BW1M2762E31K2E62AC2752DR2BQ28Q2DV2EE2DY27628R2E21H1K1I1K2EM27521G2752EO2EU2C11K2BJ2BJ2BH2EO2E62E22ET1K2742752782EX1K1T2E72752742DH2762EO2742BW2BH2FJ2EE2E02EG2E82BR2DB2772EM2EO2DS2F92EO2DW2EN28R2AC122EG2DX2DZ2752G22G42FN2E22AE2EM1P2E72FT1K2AE2762BJ2FX2EG1K132762FL2E62762BR27529E2392342CW2DI2CE2CZ2D127N2D42AF2EQ277182GO2FC2EG2GQ2BH2E92HD2FK2GL2AF2GP2AF2GS1K2GU2GW2FR2DJ2DD2342A923E2H32762H5162H72752FL2F82E52HC2752E62HB2H82FL2H82EJ2E72DH2I02HZ2HE2EW2EA2I32HD2F32GR2H92BW2H52BH2F22EW2F42F72IE2H51M172IF2762FB2I42HA2IX2IE2F72GH2F92I42J32IF2E82FD2AF2GN2J41K');local o=bit and bit.bxor or function(e,l)local n,o=1,0 while e>0 and l>0 do local c,t=e%2,l%2 if c~=t then o=o+n end e,l,n=(e-c)/2,(l-t)/2,n*2 end if e<l then e=l end while e>0 do local l=e%2 if l>0 then o=o+n end e,n=(e-l)/2,n*2 end return o end local function n(n,e,l)if l then local e=(n/2^(e-1))%2^((l-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(n%(e+e)>=e)and 1 or 0;end;end;local e=1;local function l()local l,n,t,c=i(f,e,e+3);l=o(l,20)n=o(n,20)t=o(t,20)c=o(c,20)e=e+4;return(c*16777216)+(t*65536)+(n*256)+l;end;local function a()local l=o(i(f,e,e),20);e=e+1;return l;end;local function c()local l,n=i(f,e,e+2);l=o(l,20)n=o(n,20)e=e+2;return(n*256)+l;end;local function s()local e=l();local l=l();local t=1;local o=(n(l,1,20)*(2^32))+e;local e=n(l,21,31);local l=((-1)^n(l,32));if(e==0)then if(o==0)then return l*0;else e=1;t=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return u(l,e-1023)*(t+(o/(2^52)));end;local u=l;local function H(l)local n;if(not l)then l=u();if(l==0)then return'';end;end;n=t(f,e,e+l-1);e=e+l;local l={}for e=1,#n do l[e]=r(o(i(t(n,e,e)),20))end return E(l);end;local e=l;local function f(...)return{...},h('#',...)end local function E()local d={};local o={};local e={};local i={d,o,nil,e};local e=l()local t={}for n=1,e do local l=a();local e;if(l==2)then e=(a()~=0);elseif(l==1)then e=s();elseif(l==0)then e=H();end;t[n]=e;end;for e=1,l()do o[e-1]=E();end;i[3]=a();for i=1,l()do local e=a();if(n(e,1,1)==0)then local o=n(e,2,3);local a=n(e,4,6);local e={c(),c(),nil,nil};if(o==0)then e[3]=c();e[4]=c();elseif(o==1)then e[3]=l();elseif(o==2)then e[3]=l()-(2^16)elseif(o==3)then e[3]=l()-(2^16)e[4]=c();end;if(n(a,1,1)==1)then e[2]=t[e[2]]end if(n(a,2,2)==1)then e[3]=t[e[3]]end if(n(a,3,3)==1)then e[4]=t[e[4]]end d[i]=e;end end;return i;end;local function a(e,l,c)local l=e[1];local n=e[2];local e=e[3];return function(...)local t=l;local i=n;local o=e;local e=f local l=1;local e=-1;local E={};local r={...};local f=h('#',...)-1;local e={};local n={};for e=0,f do if(e>=o)then E[e-o]=r[e+1];else n[e]=r[e+1];end;end;local e=f-o+1 local e;local o;while true do e=t[l];o=e[1];if o<=14 then if o<=6 then if o<=2 then if o<=0 then local o;n[e[2]]=n[e[3]][e[4]];l=l+1;e=t[l];n[e[2]]=e[3];l=l+1;e=t[l];o=e[2]n[o](n[o+1])l=l+1;e=t[l];n[e[2]]=c[e[3]];l=l+1;e=t[l];n[e[2]]=e[3];l=l+1;e=t[l];n[e[2]]=e[3];l=l+1;e=t[l];o=e[2]n[o](d(n,o+1,e[3]))l=l+1;e=t[l];do return end;l=l+1;e=t[l];l=e[3];elseif o==1 then if(n[e[2]]==e[4])then l=l+1;else l=e[3];end;else if not n[e[2]]then l=l+1;else l=e[3];end;end;elseif o<=4 then if o==3 then n[e[2]]=a(i[e[3]],nil,c);else n[e[2]]=c[e[3]];end;elseif o>5 then local e=e[2]n[e](n[e+1])else n[e[2]]=c[e[3]];end;elseif o<=10 then if o<=8 then if o>7 then n[e[2]]=e[3];else n[e[2]]();end;elseif o>9 then local o;n[e[2]]=c[e[3]];l=l+1;e=t[l];n[e[2]]=e[3];l=l+1;e=t[l];n[e[2]]=e[3];l=l+1;e=t[l];o=e[2]n[o](d(n,o+1,e[3]))l=l+1;e=t[l];n[e[2]]=c[e[3]];l=l+1;e=t[l];n[e[2]]=e[3];l=l+1;e=t[l];o=e[2]n[o](n[o+1])l=l+1;e=t[l];n[e[2]]=c[e[3]];l=l+1;e=t[l];n[e[2]]=e[3];else local l=e[2]n[l](d(n,l+1,e[3]))end;elseif o<=12 then if o>11 then if(n[e[2]]==e[4])then l=l+1;else l=e[3];end;else local l=e[2]n[l](d(n,l+1,e[3]))end;elseif o==13 then do return end;else c[e[3]]=n[e[2]];end;elseif o<=21 then if o<=17 then if o<=15 then n[e[2]]=e[3];elseif o>16 then n[e[2]]=n[e[3]][e[4]];else if not n[e[2]]then l=l+1;else l=e[3];end;end;elseif o<=19 then if o>18 then n[e[2]]=a(i[e[3]],nil,c);else local e=e[2]n[e]=n[e](n[e+1])end;elseif o>20 then l=e[3];else local e=e[2]n[e]=n[e](n[e+1])end;elseif o<=25 then if o<=23 then if o==22 then l=e[3];else do return end;end;elseif o>24 then local e=e[2]n[e](n[e+1])else local o;n[e[2]]=c[e[3]];l=l+1;e=t[l];n[e[2]]=c[e[3]];l=l+1;e=t[l];o=e[2]n[o]=n[o](n[o+1])l=l+1;e=t[l];n[e[2]]();l=l+1;e=t[l];do return end;end;elseif o<=27 then if o==26 then c[e[3]]=n[e[2]];else n[e[2]]();end;elseif o>28 then n[e[2]]=n[e[3]][e[4]];else local o;n[e[2]]=c[e[3]];l=l+1;e=t[l];n[e[2]]=c[e[3]];l=l+1;e=t[l];o=e[2]n[o]=n[o](n[o+1])l=l+1;e=t[l];n[e[2]]();l=l+1;e=t[l];do return end;end;l=l+1;end;end;end;return print(a(E(),{},F())());