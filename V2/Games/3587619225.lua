local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9)local v10={};for v11=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + 1 )),v1(v2(v9,1 + ((v11-1)% #v9) ,1 + ((v11-1)% #v9) + 1 )))%256 ));end return v5(v10);end _G.gameVer=5523 -4388 ;if ((_G.KeyInput==_G.Key) or (_G.KeyInput==_G.KeyP)) then local v12=0 -0 ;local v13;local v14;local v15;local v16;local v17;local v18;local v19;while true do if (0==v12) then v13=0 + 0 ;v14=nil;v12=1;end if ((7 -5)==v12) then v17=nil;v18=nil;v12=3 + 0 ;end if (v12==(444 -(59 + 382))) then v19=nil;while true do if ((1 + 0)==v13) then local v20=1035 -(52 + 983) ;while true do if (v20==1) then v13=3 -1 ;break;end if (v20==0) then v16=nil;v17=nil;v20=170 -(97 + 72) ;end end end if ((0 -0)==v13) then v14=0;v15=nil;v13=3 -2 ;end if (v13==(1067 -(906 + 158))) then while true do if (v14==(244 -(46 + 198))) then v15=Library:CreateWindow(v7("\118\194\22\15\94\94\250\59\102\162\96\7\81\74\245\126\25","\48\144\64\47\22\43\152\27"));v16=v15:AddFolder(v7("\125\41\218\172\108\218\81\63\196\237\3\253\82\53","\48\76\189\205\76\159"));v17,v18,v19=nil;v16:AddLabel({[v7("\204\127\206\190","\184\26\182\202\69\110\157\205")]=v7("\73\115\175\227\19\55\28\39\224\133\41\4\4\14","\105\83\143\195\72\118")});v14=1;end if (v14==(5 -3)) then v16:AddButton({[v7("\84\39\199\106","\32\66\191\30\188")]=v7("\213\238\178\239\226\230\246\201\232\239\179\249","\135\139\214\138"),[v7("\63\215\252\243","\89\187\157\148\21\176\181")]=v7("\131\95\106\18\22\44\190\132\78\123\3\20\1\131\133\79\109","\225\42\30\102\121\66\236"),[v7("\22\245\189\91\23\245\178\92","\117\148\209\55")]=function()local v22=0 + 0 ;while true do if ((7 -5)==v22) then game:GetService(v7("\47\17\171\95\20\23\186\71\24\16\136\71\18\6\186\84\24","\125\116\219\51")).Events.redeemCode:InvokeServer(v7("\53\89\13\5\32\64\1\16","\83\43\104\96"));wait(1);v22=1 + 2 ;end if (v22==(0 -0)) then game:GetService(v7("\144\217\62\6\141\229\240\55\167\216\29\30\139\244\240\36\167","\194\188\78\106\228\134\145\67")).Events.redeemCode:InvokeServer(v7("\108\70\1\4\61\127\19\50\98","\88\119\49\79\113\54"));wait(1);v22=1 -0 ;end if (v22==(1 + 0)) then game:GetService(v7("\153\223\79\46\44\76\52\191\223\91\17\49\64\39\170\221\90","\203\186\63\66\69\47\85")).Events.redeemCode:InvokeServer(v7("\134\191\150\175\48\251\196\227\183","\178\143\166\228\124"));wait(1 + 0 );v22=6 -4 ;end if ((1 + 2)==v22) then game:GetService(v7("\212\91\147\39\219\229\95\151\46\214\213\74\140\57\211\225\91","\134\62\227\75\178")).Events.redeemCode:InvokeServer(v7("\251\56\12\47\227\56\5\53\233\50\16\44\229\39","\140\87\99\71"));break;end end end});v16:AddLabel({[v7("\213\128\71\15","\161\229\63\123")]=" "});v15:AddLabel({[v7("\197\172\61\26","\177\201\69\110\123\96\125\177")]=v7("\143\82\240\88\134\152\174\155\78\162\123\130\129\229\206\27\224\46\222","\237\43\208\30\233\234\203")});Library:Init();break;end if (v14==(2 -1)) then v16:AddToggle({[v7("\202\67\246\160","\190\38\142\212\166")]=v7("\241\249\18\37\220\79","\162\141\115\66\185\60\236"),[v7("\165\60\124\239","\195\80\29\136\203")]=v7("\30\86\19\241\27\16\57\77\21\241\18\6","\106\57\116\150\119\117"),[v7("\164\98\222\195\178","\215\22\191\183")]=false,[v7("\79\47\21\184\90\170\237\71","\44\78\121\212\56\203\142")]=function(v21)local v23=0;while true do if (v23==(0 -0)) then v17=v21;while v17 and wait(0.1)  do local v26=0;while true do if ((0 -0)==v26) then v19=game:GetService(v7("\247\191\186\77\194\161\168","\167\211\219\52"))[v7("\131\115\9\128\82\101\163\125\19\132\76","\207\28\106\225\62\53")].leaderstats.Stage.Value + (3 -2) ;if game:GetService(v7("\19\161\182\79\175\79\37\173\161","\68\206\196\36\220\63")).Checkpoints:FindFirstChild(tostring(v19)) then game:GetService(v7("\100\16\2\214\81\14\16","\52\124\99\175"))[v7("\160\45\62\203\20\150\3\141\59\56\216","\236\66\93\170\120\198\111")].Character:WaitForChild(v7("\202\195\113\189\236\217\117\184\208\217\115\168\210\215\110\168","\130\182\28\220")).CFrame=game:GetService(v7("\33\17\212\249\5\14\199\241\19","\118\126\166\146")).Checkpoints:FindFirstChild(tostring(v19)).CFrame;end v26=1 + 0 ;end if (v26==(2 -1)) then game:GetService(v7("\156\221\71\252\230\194\165","\204\177\38\133\131\176\214\189"))[v7("\136\127\90\135\168\64\85\135\189\117\75","\196\16\57\230")].CharacterAdded:Connect(function()local v28=0 -0 ;while true do if ((236 -(99 + 137))==v28) then game:GetService(v7("\235\25\91\167\196\25\172","\187\117\58\222\161\107\223\218"))[v7("\160\179\125\68\250\188\176\127\92\243\158","\236\220\30\37\150")].Character:WaitForChild(v7("\119\203\121\74\82\80\215\112\121\83\80\202\68\74\78\75","\63\190\20\43\60"));if  not v17 then return;end break;end end end);break;end end end break;end end end});v16:AddToggle({[v7("\103\22\214\218","\19\115\174\174\194\109")]=v7("\97\241\222\87\69\234\220\65","\49\131\187\36"),[v7("\162\16\25\28","\196\124\120\123\70\145")]=v7("\19\192\72\69\11\202\127\80\2\220\91\75\0\202","\103\175\47\34"),[v7("\190\74\57\228\219","\205\62\88\144\190\163")]=false,[v7("\119\246\114\37\209\121\136\127","\20\151\30\73\179\24\235")]=function(v21)local v24=0 -0 ;local v25;while true do if (v24==(0 -0)) then v25=930 -(897 + 33) ;while true do if (v25==(0 + 0)) then v18=v21;while v18 and wait(2 -1 )  do local v27=0;while true do if (v27==(0 -0)) then game:GetService(v7("\55\20\183\238\242\36\253\168\0\21\148\246\244\53\253\187\0","\101\113\199\130\155\71\156\220")).Events.prestige:FireServer();game:GetService(v7("\139\139\241\195\168\107\10","\219\231\144\186\205\25\121\83"))[v7("\157\226\163\92\178\129\225\161\68\187\163","\209\141\192\61\222")].CharacterAdded:Connect(function()local v31=0 + 0 ;while true do if (v31==(1358 -(1064 + 294))) then game:GetService(v7("\229\172\126\201\207\7\198","\181\192\31\176\170\117"))[v7("\203\171\228\92\217\99\190\230\189\226\79","\135\196\135\61\181\51\210")].Character:WaitForChild(v7("\209\183\76\54\80\21\170\59\203\173\78\35\110\27\177\43","\153\194\33\87\62\122\195\95"));if  not v18 then return;end break;end end end);break;end end end break;end end break;end end end});v16:AddLabel({[v7("\205\196\153\208","\185\161\225\164\203\155\174")]=" "});v16:AddLabel({[v7("\109\165\240\191","\25\192\136\203\87\42")]=v7("\15\113\154\148\25\98\56\201\215\31","\47\81\186\180\66")});v14=2;end end break;end if (2==v13) then v18=nil;v19=nil;v13=3;end end break;end if (v12==(1 -0)) then v15=nil;v16=nil;v12=2;end end else print(v7("\251\56\32\65\60\76\244\233\217\51\47\1","\178\86\86\32\80\37\144\201"));return;end