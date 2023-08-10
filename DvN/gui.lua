local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v18, v19)
	local v20 = {};
	for v27 = 1, #v18 do
		v6(v20, v0(v4(v1(v2(v18, v27, v27 + 1)), v1(v2(v19, 1 + (v27 % #v19), 1 + (v27 % #v19) + 1))) % 256));
	end
	return v5(v20);
end
local v8 = true;
local v9 = game.Players.LocalPlayer.Character;
local v10 = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))();
local v11 = v10.CreateLib(v7("\250\229\248", "\126\177\163\187\69\134\219\167"), v7("\16\200\36\209\245\45\200\38", "\156\67\173\74\165"));
local v12 = v11:NewTab(v7("\25\182\64\24", "\38\84\215\41\118\220\70"));
local v13 = v12:NewSection(v7("\120\31\99\82\206\92\19\35\1\251\16\4\39\19\250\16\24\45\6\247\83\19\98\16\251\86\25\48\23\190\69\5\43\28\249", "\158\48\118\66\114"));
v13:NewButton(v7("\130\42\22\118\82\168\246\164", "\155\203\68\112\86\19\197"), "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/ia.lua", true))();
end);
v13:NewButton(v7("\98\220\59\253\71\125\165\213\83\209\34\245\80\116\236\253\84\157\13\188\88\46\165\197", "\152\38\189\86\156\32\24\133"), "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/dm.lua", true))();
end);
v13:NewButton(v7("\212\94\179\68\243\79\231\99\228\71\166\72\248\82\181", "\38\156\55\199"), v7("\138\104\104\60\28\122\211\77\174\114", "\35\200\29\28\72\115\20\154"), function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/he.lua", true))();
end);
local v14 = v11:NewTab(v7("\41\179\208\198\136\62\39", "\84\121\223\177\191\237\76"));
local v15 = v14:NewSection(v7("\141\95\218\181\59\92", "\161\219\54\169\192\90\48\80"));
v15:NewButton(v7("\108\76\5\40\80\2\37\22\121", "\69\41\34\96"), v7("\186\202\207\15\6\106\253", "\75\220\163\183\106\98"), function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/esp.lua", true))();
end);
v15:NewButton(v7("\35\175\159\56\153\16\191\134\56\207\7\250\152\63\208\7\182\143\36", "\185\98\218\235\87"), v7("\233\41\51\242\209\164\226\50\33\233", "\202\171\92\71\134\190"), function()
	workspace.ChildAdded:Connect(function(v28)
		if (v28.Name == v7("\26\201\37\141\37\197\41\154", "\232\73\161\76")) then
			local v32 = 0 + 0;
			local v33;
			local v34;
			while true do
				if (v32 == (1 + 0)) then
					while true do
						if (v33 == (241 - (187 + 54))) then
							v34 = (780 - (162 + 618)) - (0 + 0);
							while true do
								if (v34 == ((144 + 424) - (245 + 122 + (730 - (406 + 123))))) then
									v28:FindFirstChild(v7("\136\209\75\88\18\191", "\126\219\185\34\61")):Destroy();
									print(v7("\31\198\87\119\114\115\179\245\9\195\81\100\123\115", "\135\108\174\62\18\30\23\147"));
									break;
								end
							end
							break;
						end
					end
					break;
				end
				if ((0 - 0) == v32) then
					v33 = 1769 - (1749 + 20);
					v34 = nil;
					v32 = 1 - 0;
				end
			end
		end
	end);
end);
v15:NewButton("Landmine / Sabotuer mark", "", function()
	workspace.ChildAdded:Connect(function(v29)
		if ((v29.Name == v7("\133\232\40\196\12\187\54\213", "\167\214\137\74\171\120\206\83")) or (v29.Name == v7("\167\241\60\89\245\174\133\245", "\199\235\144\82\61\152"))) then
			local v35 = Instance.new(v7("\47\31\190\35\11\31\190\35\19", "\75\103\118\217"), v29);
		end
	end);
end);
local v16 = v14:NewSection(v7("\228\88\121\17\183\10\135\89\127\16\189\23\201\83", "\126\167\52\16\116\217"));
v16:NewButton(v7("\239\59\46\192\153\22\248\204\39\46\135", "\156\168\78\64\224\212\121"), v7("\30\235\182\142\1\231\171\207\11\226\188", "\174\103\142\197"), function()
	local v21 = 0 + 0;
	local v22;
	while true do
		if (v21 == 0) then
			v22 = (331 + 596) - ((1850 - (1373 + 263)) + (1713 - (451 + 549)));
			while true do
				if (v22 == ((337 - 219) - (32 + (1985 - (106 + 1794))))) then
					v9:FindFirstChildWhichIsA(v7("\98\39\80\52", "\152\54\72\63\88\69\62")):SetAttribute(v7("\231\212\252\89\213\192", "\60\180\164\142"), 0 + 0 + 0);
					v9:FindFirstChildWhichIsA(v7("\108\81\10\37", "\114\56\62\101\73\71\141")):SetAttribute(v7("\154\252\201\215\172\202\212\209\182\253", "\164\216\137\187"), 6 + 10 + (130 - 46));
					break;
				end
				if (v22 == ((1607 - 650) - ((2276 - (746 + 638)) + 25 + 40))) then
					local v36 = 0 - 0;
					while true do
						if (v36 == 1) then
							v22 = 878 - ((623 - (218 + 123)) + (2176 - (1535 + 46)));
							break;
						end
						if (v36 == (584 - (57 + 527))) then
							local v37 = 0 + 0;
							while true do
								if (v37 == (0 + 0)) then
									v9:FindFirstChildWhichIsA(v7("\230\233\62\190", "\107\178\134\81\210\198\158")):SetAttribute(v7("\30\7\144\195\184\57\26\135", "\202\88\110\226\166"), (2349 - (306 + 254)) - (65 + 974));
									v9:FindFirstChildWhichIsA(v7("\247\0\141\251", "\170\163\111\226\151")):SetAttribute(v7("\51\37\190\52\75\35\26\1\53\183\60", "\73\113\80\210\88\46\87"), (32646 - 16011) - (9102 - (899 + 568)));
									v37 = 1 + 0;
								end
								if ((2 - 1) == v37) then
									v36 = 604 - (268 + 335);
									break;
								end
							end
						end
					end
				end
			end
			break;
		end
	end
end);
v16:NewButton(v7("\167\35\223\82\198\132\62\194\0\238\134\108\218\19\233\143\45\207\23\244", "\135\225\76\173\114"), "", function()
	local v23 = 166 - (122 + 44);
	local v24;
	local v25;
	while true do
		if (v23 == (290 - (60 + 230))) then
			v24 = 0 - 0;
			v25 = nil;
			v23 = 573 - (426 + 146);
		end
		if (v23 == 1) then
			while true do
				if ((0 + 0) == v24) then
					v25 = (197 + 1440) - (1523 + (1570 - (282 + 1174)));
					while true do
						if (v25 == (1 + 0 + (1257 - (1043 + 214)))) then
							v9:FindFirstChildWhichIsA(v7("\46\226\183\188", "\199\122\141\216\208\204\221")):SetAttribute(v7("\139\200\21\252\81\248\158\216\19\255\118\242", "\150\205\189\112\144\24"), math.huge);
							v9:FindFirstChildWhichIsA(v7("\17\139\176\64", "\112\69\228\223\44\100\232\113")):SetAttribute(v7("\228\19\6\202\179\110\165\219\17\19\193\185\112\167\215\28\2\223\179\110\135\192\22\8\221", "\230\180\127\103\179\214\28"), (996 - (569 + 242)) - ((192 - 125) + 113));
							break;
						end
						if (v25 == (0 + 0 + (1024 - (706 + 318)))) then
							local v38 = 1251 - (721 + 530);
							while true do
								if (v38 == (2 - 1)) then
									v25 = (1272 - (945 + 326)) + 0;
									break;
								end
								if (v38 == (580 - (361 + 219))) then
									local v39 = 320 - (53 + 267);
									local v40;
									while true do
										if (v39 == (0 + 0)) then
											v40 = 413 - (15 + 398);
											while true do
												if (v40 == (983 - (18 + 964))) then
													v38 = 2 - 1;
													break;
												end
												if ((0 - 0) == v40) then
													v9:FindFirstChildWhichIsA(v7("\184\10\80\74", "\128\236\101\63\38\132\33")):SetAttribute(v7("\138\188\20\72\132\238\200\169\167\56\74\133\238\204\163\167\21\87", "\175\204\201\113\36\214\139"), 1 + 0);
													v9:FindFirstChildWhichIsA(v7("\115\195\58\208", "\100\39\172\85\188")):SetAttribute(v7("\138\106\184\144\35\161\125\137\146\60\167\125\186\148\58\161\125\138\144\54\168\124", "\83\205\24\217\224"), (9253 - (271 + 429)) - (3403 - (20 + 830)));
													v40 = 1 + 0;
												end
											end
											break;
										end
									end
								end
							end
						end
					end
					break;
				end
			end
			break;
		end
	end
end);
v16:NewButton(v7("\192\201\212\125\204\208\192\45", "\93\134\165\173"), "", function()
	game:GetService(v7("\139\225\196\208\19\192\162\107\170\193\196\208\44\199\177\123", "\30\222\146\161\162\90\174\210")).JumpRequest:connect(function()
		if v8 then
			game(v7("\213\66\113\19\224\92\99", "\106\133\46\16")).LocalPlayer.Character(v7("\112\53\126\253\84\79\81\36", "\32\56\64\19\156\58")):ChangeState(v7("\112\221\232\70\83\252\135", "\224\58\168\133\54\58\146"));
		end
	end);
end);
local v17 = v11:NewTab(v7("\116\95\88\254\53\189\199\5\86\66\66\254\112\198\186", "\107\57\54\43\157\21\230\231"));
local v13 = v17:NewSection(v7("\236\132\3\249\189", "\175\187\235\113\149\217\188"));
v13:NewToggle("Day/Night", "", function(v26)
	if v26 then
		game:GetService(v7("\16\166\134\68\247\112\118\59", "\24\92\207\225\44\131\25")).TimeOfDay = (1547 - (1408 + 92)) - (1121 - (461 + 625));
	else
		game:GetService(v7("\103\218\191\68\15\116\69\212", "\29\43\179\216\44\123")).TimeOfDay = 976 - ((2090 - (993 + 295)) + 8 + 142);
	end
end);
local v13 = v17:NewSection(v7("\152\193\52\94\188\202", "\44\221\185\64"));
v13:NewButton(v7("\40\222\8\126\119\12\238\70\31\80\44\195", "\19\97\135\40\63"), "", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/we-will-be-back-soon/main/IY.lua", true))();
end);
wait((2241 - (418 + 753)) - (68 + 997));
if (notice == true) then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/IrishBaker/REWORK/main/DvN/notice.lua", true))();
end
