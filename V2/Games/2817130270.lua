do local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v20)if (v1(v20,2)==79) then v19=v0(v3(v20,1,1));return "";else local v74=v2(v0(v20,16));if v19 then local v92=0;local v93;while true do if (0==v92) then v93=v5(v74,v19);v19=nil;v92=1;end if (1==v92) then return v93;end end else return v74;end end end);local function v21(v22,v23,v24)if v24 then local v75=0 + 0 + 0;local v76;while true do if (v75==(1867 -(677 + 1190))) then v76=(v22/((4 -2)^(v23-(3 -2))))%((619 -(278 + 339))^(((v24-(4 -(1152 -(432 + 717)))) -(v23-(1 + 0))) + 1 + 0));return v76-(v76%(3 -2));end end else local v77=((1 -0) + 1)^(v23-(2 -1));return (((v22%(v77 + v77))>=v77) and (3 -2)) or (0 -0);end end local function v25()local v38=0 + (1333 -(394 + 939));local v39;while true do if ((2 -1)==v38) then return v39;end if (v38==(0 + 0)) then v39=v1(v16,v18,v18);v18=v18 + ((1053 + 879) -(327 + 1604));v38=1193 -(1139 + 53);end end end local function v26()local v40=0 -0;local v41;local v42;while true do if (v40==((1930 -(26 + 339)) -(234 + 1330))) then return (v42 * (22 + 234)) + v41;end if (v40==(0 + 0)) then v41,v42=v1(v16,v18,v18 + 2);v18=v18 + 2;v40=1307 -((1863 -1080) + 523);end end end local function v27()local v43=0 + 0;local v44;local v45;local v46;local v47;while true do if (v43==(1 + 0)) then return (v47 * 16777216) + (v46 * 65536) + (v45 * (325 -(42 + 27))) + v44;end if (v43==(0 + 0)) then v44,v45,v46,v47=v1(v16,v18,v18 + (8 -(4 + 1)));v18=v18 + (457 -(373 + 80));v43=1 + 0;end end end local function v28()local v48=v27();local v49=v27();local v50=2 -1;local v51=(v21(v49,1,20) * ((792 -(417 + (423 -(40 + 10))))^(8 + 24))) + v48;local v52=v21(v49,1798 -(18 + 1759),(1 -0) + 30);local v53=((v21(v49,(2 -1) + 31)==(1 -0)) and  -(1539 -(858 + 680))) or ((5419 -4026) -(1131 + 261));if (v52==(565 -(441 + 124))) then if (v51==(904 -(869 + 35))) then return v53 * 0;else v52=1 + (0 -0);v50=0 + (1741 -(88 + 1653));end elseif (v52==((838 + 4029) -2820)) then return ((v51==(0 -0)) and (v53 * (((421 + 303) -(613 + (306 -196)))/(1785 -(139 + 1646))))) or (v53 * NaN);end return v8(v53,v52-(408 + (1625 -1010))) * (v50 + (v51/((1 + 1)^(926 -(821 + 53)))));end local function v29(v30)local v54=0 + 0;local v55;local v56;while true do if (v54==(918 -((1500 -(433 + 874)) + 725))) then v55=nil;if  not v30 then local v96=163 -(23 + 140);while true do if ((1099 -((2997 -2008) + (269 -159)))==v96) then v30=v27();if (v30==(1017 -(1005 + 12))) then return "";end break;end end end v54=1930 -(1698 + 231);end if (v54==((329 + 1137) -(482 + 981))) then return v6(v56);end if (v54==(822 -(600 + 220))) then v56={};for v94=1366 -((421 -(137 + 139)) + 1220), #v55 do v56[v94]=v2(v1(v3(v55,v94,v94)));end v54=3 -0;end if (v54==(4 -3)) then v55=v3(v16,v18,(v18 + v30) -1);v18=v18 + v30;v54=2;end end end local v31=v27;local function v32(...)return {...},v12("#",...);end local function v33()local v57=0;local v58;local v59;local v60;local v61;local v62;local v63;local v64;local v65;while true do if ((2 + 0)==v57) then v62=nil;v63=nil;v57=3;end if (v57==(6 -3)) then v64=nil;v65=nil;v57=1158 -(231 + 923);end if ((483 -(118 + 365))==v57) then v58=0;v59=nil;v57=1646 -(1379 + 266);end if (v57==(71 -(39 + 28))) then while true do if (v58~=(1 + 0)) then else local v101=0;while true do if (v101==0) then v61=nil;v62=nil;v101=1;end if (v101~=1) then else v58=2;break;end end end if (v58~=(7 -5)) then else v63=nil;v64=nil;v58=11 -8;end if (v58==(0 + 0)) then local v102=149 -(79 + 70);while true do if (v102~=1) then else v58=1 -0;break;end if (v102==(1767 -(438 + 1329))) then v59=0;v60=nil;v102=1 -0;end end end if ((2 + 1)==v58) then v65=nil;while true do local v103=0;while true do if (v103~=0) then else if (v59==1) then local v106=0;local v107;while true do if (0==v106) then v107=0;while true do if (v107~=(0 -0)) then else local v143=0 -0;while true do if (v143==0) then v63={v60,v61,nil,v62};v64=v27();v143=1;end if ((1339 -(1309 + 29))~=v143) then else v107=1;break;end end end if (1==v107) then v65={};v59=7 -5;break;end end break;end end end if (v59==2) then local v108=1799 -(1181 + 618);while true do if (0==v108) then for v113=1,v64 do local v114=0;local v115;local v116;local v117;while true do if (v114~=(1 + 0)) then else v117=nil;while true do if (v115==(0 + 0)) then local v164=0;local v165;while true do if (v164==0) then v165=1508 -(430 + 1078);while true do if (v165==(0 + 0)) then local v182=0 -0;local v183;while true do if (0==v182) then v183=1493 -(1476 + 17);while true do if (v183==(1031 -(923 + 107))) then v165=2 -1;break;end if (v183==0) then local v187=0;while true do if (v187~=1) then else v183=1;break;end if (v187~=0) then else v116=v25();v117=nil;v187=1 + 0;end end end end break;end end end if (v165==(1 + 0)) then v115=1;break;end end break;end end end if (v115~=1) then else if (v116==1) then v117=v25()~=(213 -(189 + 24));elseif (v116==(244 -(149 + 93))) then v117=v28();elseif (v116==(205 -(127 + 75))) then v117=v29();end v65[v113]=v117;break;end end break;end if (v114~=0) then else v115=1906 -(425 + 1481);v116=nil;v114=1 + 0;end end end v63[4 -1]=v25();v108=1;end if (v108~=1) then else for v118=1,v27() do local v119=0 -0;local v120;local v121;local v122;while true do if (v119==(0 + 0)) then v120=0;v121=nil;v119=1 + 0;end if (v119==1) then v122=nil;while true do if (v120==(2 -1)) then while true do if (v121==0) then v122=v25();if (v21(v122,1,1)==(0 + 0)) then local v177=0 + 0;local v178;local v179;local v180;local v181;while true do if (v177~=2) then else while true do if (v178~=1) then else local v184=0;while true do if (v184==(3 -2)) then v178=2;break;end if (v184==0) then v181={v26(),v26(),nil,nil};if (v179==0) then local v194=1981 -(1659 + 322);local v195;while true do if (0~=v194) then else v195=0 -0;while true do if (0~=v195) then else v181[3]=v26();v181[1896 -(1602 + 290)]=v26();break;end end break;end end elseif (v179==(1779 -(712 + 1066))) then v181[1424 -(1282 + 139)]=v27();elseif (v179==(1 + 1)) then v181[2 + 1]=v27() -(2^(1614 -(1030 + 568)));elseif (v179==3) then local v200=0 + 0;local v201;local v202;while true do if (v200==(0 + 0)) then v201=0 + 0;v202=nil;v200=580 -(577 + 2);end if (v200==1) then while true do if (v201==(1616 -(291 + 1325))) then v202=0;while true do if (v202==0) then v181[7 -4]=v27() -((2 + 0)^16);v181[2 + 2]=v26();break;end end break;end end break;end end end v184=293 -(256 + 36);end end end if (v178~=(1890 -(1781 + 109))) then else local v185=0 -0;while true do if (0~=v185) then else v179=v21(v122,2,213 -(113 + 97));v180=v21(v122,3 + 1,6);v185=1;end if (v185==(2 -1)) then v178=1;break;end end end if (v178==(2 + 0)) then if (v21(v180,1 + 0,1 -0)~=(909 -(421 + 487))) then else v181[2]=v65[v181[2]];end if (v21(v180,2,2 -0)==1) then v181[3]=v65[v181[3]];end v178=3;end if (3~=v178) then else if (v21(v180,3 -0,3)~=(1 + 0)) then else v181[96 -(8 + 84)]=v65[v181[4]];end v60[v118]=v181;break;end end break;end if (v177==1) then v180=nil;v181=nil;v177=2;end if (v177==0) then v178=0 -0;v179=nil;v177=1;end end end break;end end break;end if (v120==(1320 -(600 + 720))) then local v167=0;while true do if (v167~=(0 + 0)) then else v121=0 -0;v122=nil;v167=1528 -(229 + 1298);end if (v167==(1916 -(1850 + 65))) then v120=1;break;end end end end break;end end end v59=857 -(34 + 820);break;end end end v103=1144 -(464 + 679);end if (v103~=(1 + 0)) then else if (v59~=(1 + 2)) then else local v109=0 -0;while true do if (v109==(0 + 0)) then for v123=1076 -(28 + 1047),v27() do v61[v123-1]=v33();end for v125=228 -(33 + 194),v27() do v62[v125]=v27();end v109=2 -1;end if (v109==(2 -1)) then return v63;end end end if (v59~=0) then else local v110=0;while true do if (v110==1) then v62={};v59=1 -0;break;end if (v110==(486 -(450 + 36))) then v60={};v61={};v110=1371 -(199 + 1171);end end end break;end end end break;end end break;end if (v57==(288 -(133 + 154))) then v60=nil;v61=nil;v57=2 -0;end end end local function v34(v35,v36,v37)local v66=v35[1];local v67=v35[2];local v68=v35[3];return function(...)local v69=1;local v70= -1;local v71={...};local v72=v12("#",...) -1;local function v73()local v78=v66;local v79=v67;local v80=v68;local v81=v32;local v82={};local v83={};local v84={};for v88=0,v72 do if ((v88>=v80) or (4079<=(2408 -(1654 + 177)))) then v82[v88-v80]=v71[v88 + (1560 -(1009 + 550))];else v84[v88]=v71[v88 + (3 -2)];end end local v85=(v72-v80) + (365 -(54 + 149 + 161));local v86;local v87;while true do local v89=1114 -(768 + 346);local v90;while true do if ((1354<(10641 -6825)) and (0==v89)) then v90=0 -0;while true do if (((3464 -(1504 + 175))<(10701 -8296)) and (v90==0)) then local v104=0 -0;local v105;while true do if (((9466 -5232)>=1919) and (v104==(1881 -(1239 + 642)))) then v105=0 + 0;while true do if ((v105==(569 -(370 + 199))) or ((2105 -(144 + 146))>(4526 -(485 + 23)))) then local v112=0 -0;while true do if ((v112==1) or ((2362 + 221)==(10406 -(8074 -(235 + 964))))) then v105=330 -(217 + 112);break;end if ((v112==0) or ((2984 -1418)==(372 + 9 + 29))) then v86=v78[v69];v87=v86[1];v112=643 -(568 + (168 -94));end end end if (((6059 -(921 + 952))>=((1665 -(404 + 354)) + 1629)) and (v105==1)) then v90=1 + 0;break;end end break;end end end if ((v90==((1 + 0) -0)) or ((1812 -(7 + 36))<=(504 + 515))) then if (((22 + 918)<=(4294 -(128 + 1232))) and (v87<=(13 -5))) then if ((v87<=((3904 -2185) -(402 + 1314))) or ((1283 -422)>=3480)) then if (((9838 -6520)<=(6652 -(310 + 1611))) and (v87<=(2 -1))) then if (((320 + 1522)<=((3589 -(71 + 988)) + 1678)) and (v87==(999 -((868 -(390 + 408)) + 929)))) then v84[v86[2 + 0]]=v34(v79[v86[3 + 0]],nil,v37);else v84[v86[(8 -4) -2]]={};end elseif ((v87>(2 + 0)) or (1514==1054)) then v84[v86[735 -(543 + 190)]]=v84[v86[3 + 0]];elseif (((6366 -(738 + 1145))>(4159 -(258 + 1674))) and (v84[v86[2 + 0]]==v84[v86[4]])) then v69=v69 + 1;else v69=v86[3];end elseif (((9756 -6207)>=2952) and (v87<=(4 + 1))) then if (((1224 + 858)>(2439 -(274 + 1045))) and (v87==(5 -1))) then v84[v86[3 -1]]=v86[(775 + 169) -(280 + 362 + 299)];elseif (((7262 -4765)==(7510 -5013)) and (v84[v86[644 -(496 + 146)]]~=v84[v86[11 -7]])) then v69=v69 + 1 + 0 + 0;else v69=v86[(1393 -(1274 + 118)) + 2];end elseif ((v87<=((2 -1) + 5)) or ((705 -(882 -450))>=(6633 -4146))) then if (((702 + 976)<=(790 + 1353)) and (v86[3 -1]==v84[v86[5 -1]])) then v69=v69 + (219 -(133 + 85));else v69=v86[6 -3];end elseif (((2 + 486)<=(1508 + (9636 -6216))) and (v87==(13 -6))) then if (((982 + 3774)>=((528 -(177 + 249)) + 512)) and (v84[v86[2 + 0]]==v86[1165 -(993 + 168)])) then v69=v69 + 1;else v69=v86[3];end else v84[v86[(2 -1) + 1]][v86[4 -1]]=v86[4];end elseif ((((4474 -(659 + 1273)) -(67 + 925))<=(3391 -(1316 + 353))) and (v87<=13)) then if ((4387>=(379 -247)) and (v87<=(17 -(2 + 5)))) then if ((((1 + 515) -(664 -349))<=3036) and (v87==(2 + 7))) then v84[v86[1 + 1]]=v37[v86[(122 -(35 + 85)) + 1]];else local v135=0 + 0 + 0;local v136;local v137;while true do if ((v135==(1433 -(92 + 1340))) or (((6118 -(5 + 337)) -((3353 -2146) + 85))==905)) then while true do if ((v136==0) or ((4976 -(251 + 5))==(2397 -1710))) then v137=v86[(130 -(110 + 14)) -4];v84[v137](v84[v137 + 1]);break;end end break;end if ((v135==(0 + 0)) or (2641<1982)) then v136=0 -0;v137=nil;v135=32 -(18 + 13);end end end elseif (((31 + 824)<=(5758 -(8696 -5168))) and (v87<=11)) then do return;end elseif (((5170 -(133 + 1408))>=1870) and (v87>(14 -2))) then v69=v86[3];else local v154=0 -0;local v155;local v156;while true do if ((v154==(3 -2)) or ((3056 -(262 + 241))<1606)) then while true do if (((17303 -13176)<(8093 -3615)) and (v155==(84 -(10 + 74)))) then v156=v86[1111 -(711 + 398)];v84[v156](v13(v84,v156 + 1 + 0,v86[3 + (0 -0)]));break;end end break;end if ((v154==((1232 -(796 + 436)) -0)) or ((6006 -3907)<699)) then v155=0;v156=nil;v154=1;end end end elseif (((11778 -6977)>=(2285 -(10 + 1578))) and (v87<=15)) then if ((v87==(5 + 9)) or ((16948 -12589)<(3910 -2480))) then for v146=v86[5 -(3 + 0)],v86[7 -4] do v84[v146]=nil;end else local v138=0;local v139;local v140;while true do if (((0 -0)==v138) or (1501<(23 + 194))) then v139=837 -(149 + 688);v140=nil;v138=3 -2;end if ((415<(5190 -(571 + 660))) and (v138==(2 -1))) then while true do if ((0==v139) or ((2286 -(1073 + 774))<(341 + 57))) then v140=v86[7 -5];v84[v140]=v84[v140](v13(v84,v140 + (653 -(195 + 457)),v86[1286 -(180 + 1103)]));break;end end break;end end end elseif (((1839 -685)<=(6801 -3950)) and (v87<=(3 + 13))) then v84[v86[2]]=v84[v86[3]][v86[2 + 2]];elseif ((v87==((1887 -(89 + 18)) -(1447 + 316))) or (((10777 -7903) -904)<(3712 -1844))) then v84[v86[2 -0]][v86[1185 -(1090 + 92)]]=v84[v86[516 -(355 + 157)]];else local v159=0;local v160;local v161;local v162;while true do if (((4157 -(452 + 174))<=(5229 -(696 + 86))) and (v159==(1 + 0))) then v162=nil;while true do if (((5065 -(1516 + 144))>=(2890 -(4 + 614))) and ((1 + 0)==v160)) then v84[v161 + (517 -(407 + 109))]=v162;v84[v161]=v162[v86[820 -(580 + 236)]];break;end if ((v160==(0 + 0)) or ((5891 -(1360 + 263))<(4702 -(1378 -(186 + 351))))) then v161=v86[(138 + 1718) -(1216 + 638)];v162=v84[v86[1 + 2]];v160=1;end end break;end if (((3356 -(289 + 202))>((3437 -(1388 + 59)) -(1706 + 72))) and (v159==(0 -0))) then v160=1018 -(1002 + 16);v161=nil;v159=3 -2;end end end v69=v69 + (1535 -(1206 + (1452 -(83 + 1041))));break;end end break;end end end end A,B=v32(v11(v73));if  not A[1] then local v91=v35[4][v69] or "?";error("Script error at ["   .. v91   .. "]:"   .. A[2]);else return v13(A,2,B);end end;end return v34(v33(),{},v17)(...);end v15("LOL!1B3O00028O0003023O005F4703073O0067616D65566572026O00084003083O004B6579496E7075742O033O004B657903043O004B65795003073O004C696272617279030C3O0043726561746557696E646F7703113O0046525620487562205632202847616D652903093O00412O64466F6C64657203113O0044692O67696E672053696D756C61746F7203083O00412O644C6162656C03043O0074657874030A3O004O205B4D6973635D03093O00412O6442752O746F6E030C3O00496E66204261636B7061636B03043O00666C616703113O0062752O746F6E496E664261636B7061636B03083O0063612O6C6261636B030F3O00556E6C696D6974656420436F696E7303143O0062752O746F6E556E6C696D69746564436F696E7303013O002003133O00627920466F7265766572652O6B2E233O303703043O00496E697403053O007072696E74030C3O00496E76616C6964206B657921004D3O0012043O00014O000E000100013O0026073O00020001000100040D3O00020001001204000100013O000E06000100050001000100040D3O00050001001209000200023O003008000200030004001209000200023O002010000200020005001209000300023O002010000300030006000605000200150001000300040D3O00150001001209000200023O002010000200020005001209000300023O0020100003000300070006020002003A0001000300040D3O003A0001001209000200083O0020120002000200090012040004000A4O000F00020004000200201200030002000B0012040005000C4O000F00030005000200201200040003000D2O000100063O00010030080006000E000F2O000C0004000600010020120004000300102O000100063O00030030080006000E001100300800060012001300022O00075O0010110006001400072O000C0004000600010020120004000300102O000100063O00030030080006000E001500300800060012001600022O000700013O0010110006001400072O000C00040006000100201200040003000D2O000100063O00010030080006000E00172O000C00040006000100201200040002000D2O000100063O00010030080006000E00182O000C000400060001001209000400083O0020120004000400192O000A00040002000100040D3O004C0001001204000200014O000E000300033O0026070002003C0001000100040D3O003C0001001204000300013O0026070003003F0001000100040D3O003F00010012090004001A3O0012040005001B4O000A0004000200012O000B3O00013O00040D3O003F000100040D3O004C000100040D3O003C000100040D3O004C000100040D3O0005000100040D3O004C000100040D3O000200012O000B3O00013O00023O00093O00028O00027O0040026O00F03F03043O0067616D65030A3O004765745365727669636503113O005265706C69636174656453746F7261676503093O00507572636861736564030A3O0046697265536572766572030C3O00496E66696E6974655061636B002A3O0012043O00014O000E000100043O000E060002001F00013O00040D3O001F0001002607000100100001000300040D3O00100001001209000500043O002012000500050005001204000700064O000F0005000700020020100004000500070020120005000400082O0003000700024O0003000800034O000C00050008000100040D3O00290001002607000100040001000100040D3O00040001001204000500013O002607000500170001000300040D3O00170001001204000100033O00040D3O00040001002607000500130001000100040D3O00130001001204000200093O001204000300013O001204000500033O00040D3O0013000100040D3O0004000100040D3O002900010026073O00240001000100040D3O00240001001204000100014O000E000200023O0012043O00033O0026073O00020001000300040D3O000200012O000E000300043O0012043O00023O00040D3O000200012O000B3O00017O002A3O000F3O00103O00153O00153O00173O00173O00183O00183O00183O00183O00183O00193O00193O00193O00193O001A3O001C3O001C3O001D3O001F3O001F3O00203O00213O00233O00233O00243O00253O00263O00273O00293O002B3O002D3O002D3O002E3O002F3O00303O00323O00323O00333O00353O00363O00383O00073O0003043O0067616D65030A3O004765745365727669636503113O005265706C69636174656453746F7261676503093O00507572636861736564030A3O004669726553657276657203093O00536E61636B5061636B02F8FF3326F56B0CC3000A3O0012093O00013O0020125O0002001204000200034O000F3O000200020020105O00040020125O0005001204000200063O001204000300074O000C3O000300012O000B3O00017O000A3O003A3O003A3O003A3O003A3O003A3O003A3O003A3O003A3O003A3O003B3O004D3O00023O00033O00053O00053O00063O00083O00083O00093O00093O000A3O000A3O000A3O000A3O000A3O000A3O000A3O000A3O000A3O000A3O000A3O000A3O000B3O000B3O000B3O000B3O000C3O000C3O000C3O000D3O000D3O000D3O000D3O000E3O000E3O000E3O000E3O00383O00383O000E3O00393O00393O00393O00393O003B3O003B3O00393O003C3O003C3O003C3O003C3O003D3O003D3O003D3O003D3O003E3O003E3O003E3O003E3O00403O00413O00433O00433O00443O00463O00463O00473O00473O00473O00483O00493O004B3O004C3O004F3O00503O00523O00533O00553O00",v9(),...);end