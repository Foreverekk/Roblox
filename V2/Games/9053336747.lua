local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v8,v9)local v10={};for v11=1, #v8 do v6(v10,v0(v4(v1(v2(v8,v11,v11 + 1 )),v1(v2(v9,1 + ((v11-1)% #v9) ,1 + ((v11-1)% #v9) + 1 )))%256 ));end return v5(v10);end _G.gameVer=81 + 14 ;if ((_G.KeyInput==_G.Key) or (_G.KeyInput==_G.KeyP)) then local v12=79 -(11 + 68) ;local v13;local v14;local v15;local v16;local v17;while true do if (v12==1) then v14:AddToggle({[v7("\207\54\180\212","\187\83\204\160\19\38")]=v7("\153\186\192\254\235\227","\202\206\161\153\142\144"),[v7("\211\224\35\134","\181\140\66\225\17\200\142\142")]=v7("\73\253\85\53\42\113\110\230\83\53\35\103","\61\146\50\82\70\20"),[v7("\146\253\226\164\129","\225\137\131\208\228")]=false,[v7("\0\127\191\227\240\80\249\194","\99\30\211\143\146\49\154\169")]=function(v19)local v22=326 -(151 + 175) ;while true do if (v22==(0 -0)) then v15=v19;while v15 and wait(0.1)  do local v27=243 -(172 + 71) ;while true do if (v27==(0 + 0)) then v17=game:GetService(v7("\236\173\185\236\42\51\207","\188\193\216\149\79\65"))[v7("\140\54\184\44\85\155\192\9\185\60\169","\192\89\219\77\57\203\172\104")].leaderstats.Stage.Value + (786 -(89 + 696)) ;if game:GetService(v7("\58\41\34\183\38\0\177\14\35","\109\70\80\220\85\112\208")).Stages:FindFirstChild(tostring(v17)) then game:GetService(v7("\155\196\33\26\11\185\219","\203\168\64\99\110"))[v7("\83\112\163\32\221\155\115\126\185\36\195","\31\31\192\65\177\203")].Character:WaitForChild(v7("\139\17\247\49\186\172\13\254\2\187\172\16\202\49\166\183","\195\100\154\80\212")).CFrame=game:GetService(v7("\6\16\148\219\33\16\48\28\131","\81\127\230\176\82\96")).Stages:FindFirstChild(tostring(v17)).CFrame;else game:GetService(v7("\8\253\11\81\46\42\226","\88\145\106\40\75"))[v7("\28\10\32\82\60\53\47\82\41\0\49","\80\101\67\51")].Character:WaitForChild(v7("\38\65\49\81\94\210\194\192\60\91\51\68\96\220\217\208","\110\52\92\48\48\189\171\164")).CFrame=game:GetService(v7("\251\19\168\134\98\220\29\185\136","\172\124\218\237\17"))[v7("\233\5\87\14\219\30\74\64\234\9\85\5\206\3\75\20","\190\108\57\96")].enter.CFrame;end v27=1 + 0 ;end if ((177 -(51 + 125))==v27) then game:GetService(v7("\100\245\135\40\129\161\48","\52\153\230\81\228\211\67\49"))[v7("\224\47\77\179\252\23\170\133\213\37\92","\172\64\46\210\144\71\198\228")].CharacterAdded:Connect(function()local v28=0;local v29;while true do if (v28==(138 -(58 + 80))) then v29=0 + 0 ;while true do if (v29==(0 -0)) then game:GetService(v7("\252\225\86\144\24\222\254","\172\141\55\233\125"))[v7("\54\173\28\90\16\7\22\163\6\94\14","\122\194\127\59\124\87")].Character:WaitForChild(v7("\21\188\77\163\134\50\160\68\144\135\50\189\112\163\154\41","\93\201\32\194\232"));if  not v15 then return;end break;end end break;end end end);break;end end end break;end end end});v14:AddToggle({[v7("\181\118\212\23","\193\19\172\99\69")]=v7("\205\246\117\251\237\231\127","\159\147\23\146"),[v7("\253\195\217\189","\155\175\184\218\45")]=v7("\249\227\170\247\255\94\223\233\175\249\225\79\229","\141\140\205\144\147\59"),[v7("\189\13\76\102\80","\206\121\45\18\53\21")]=false,[v7("\95\202\18\226\225\240\208\128","\60\171\126\142\131\145\179\235")]=function(v19)local v23=0 -0 ;local v24;while true do if (v23==(0 + 0)) then v24=0 + 0 ;while true do if (v24==0) then v16=v19;while v16 and wait(0.5 + 0 )  do game:GetService(v7("\57\77\55\27\242\8\73\51\18\255\56\92\40\5\250\12\77","\107\40\71\119\155")).Systems.Rebirth.RequestRebirth:FireServer();game:GetService(v7("\149\71\249\201\160\89\235","\197\43\152\176"))[v7("\51\163\20\18\60\204\19\173\14\22\34","\127\204\119\115\80\156")].CharacterAdded:Connect(function()game:GetService(v7("\182\218\180\248\244\25\149","\230\182\213\129\145\107"))[v7("\156\30\112\12\193\113\188\16\106\8\223","\208\113\19\109\173\33")].Character:WaitForChild(v7("\116\4\241\16\82\30\245\21\110\30\243\5\108\16\238\5","\60\113\156\113"));if  not v16 then return;end end);end break;end end break;end end end});v14:AddLabel({[v7("\41\34\46\100","\93\71\86\16\54\34\62\215")]=" "});v14:AddLabel({[v7("\91\185\226\159","\47\220\154\235\62")]=v7("\158\169\122\2\184\105\255\205\234\7","\190\137\90\34\227\36\150")});v12=2;end if ((714 -(671 + 43))==v12) then v13=Library:CreateWindow(v7("\51\40\22\115\236\243\52\138\35\72\96\123\227\231\59\207\92","\117\122\64\83\164\134\86\170"));v14=v13:AddFolder(v7("\199\51\165\203\58\239\46\241\255\42\236\107\158\219\61\251\106\241\226\108\183\126\140","\130\75\209\185\95"));v15,v16,v17=nil;v14:AddLabel({[v7("\243\33\63\89","\135\68\71\45\75")]=v7("\179\144\188\20\200\241\233\64\252\246\253\70\254\237","\147\176\156\52")});v12=1 -0 ;end if (v12==(7 -5)) then v14:AddButton({[v7("\179\80\203\70","\199\53\179\50\72")]=v7("\106\136\227\21\4\59\182\123\130\227\21\18\118\190\104\159\226\29\8\35\251\17","\56\237\135\112\97\86\150"),[v7("\69\78\38\72","\35\34\71\47\144\166")]=v7("\164\192\162\0\177\168\231\179\16\187\163\216\149\27\186\163\198","\198\181\214\116\222"),[v7("\72\248\237\137\55\74\250\234","\43\153\129\229\85")]=function()if (_G.KeyInput==_G.KeyP) then local v25=0;local v26;while true do if ((0 -0)==v25) then v26=0 -0 ;while true do if (v26==(1218 -(268 + 949))) then game:GetService(v7("\75\118\170\76\49\137\120\103\191\68\11\158\118\97\187\71\61","\25\19\218\32\88\234")).Systems.RedeemCodes.SubmitCode:InvokeServer(v7("\80\232\187\247\15\93\238\190\246","\54\135\206\133\124"));break;end if ((0 -0)==v26) then game:GetService(v7("\106\50\60\5\179\41\19\162\93\51\31\29\181\56\19\177\93","\56\87\76\105\218\74\114\214")).Systems.RedeemCodes.SubmitCode:InvokeServer(v7("\199\186\95\228\127\250","\171\223\43\151\24\149\77\112"));wait(0.1 -0 );v26=1 + 0 ;end end break;end end end end});v14:AddLabel({[v7("\194\203\222\65","\182\174\166\53\160")]=" "});v13:AddLabel({[v7("\99\160\190\93","\23\197\198\41\169\159\98")]=v7("\56\197\173\27\82\40\217\251\56\79\63\215\230\115\30\106\140\189\106","\90\188\141\93\61")});Library:Init();break;end end else local v18=0 -0 ;while true do if (v18==(1275 -(179 + 1096))) then local v20=0 + 0 ;local v21;while true do if (v20==(0 + 0)) then v21=1897 -(214 + 1683) ;while true do if (v21==0) then print(v7("\231\6\8\58\225\118\58\142\3\27\34\172","\174\104\126\91\141\31\94"));return;end end break;end end end end end