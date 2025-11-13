-- why are you here??
-- written by Musc#8707
local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v23, v24)
	local v25 = {};
	for v34 = 1, #v23 do
		v6(v25, v0(v4(v1(v2(v23, v34, v34 + 1)), v1(v2(v24, 1 + (v34 % #v24), 1 + (v34 % #v24) + 1))) % 256));
	end
	return v5(v25);
end
local v8 = game:GetService(v7("\227\198\203\41\239\184\198\10\212\199\232\49\233\169\198\25\212", "\126\177\163\187\69\134\219\167"));
local v9 = game:GetService(v7("\20\194\56\206\239\51\204\41\192", "\156\67\173\74\165"));
local v10 = game:GetService(v7("\24\190\78\30\168\47\72\51", "\38\84\215\41\118\220\70"));
local v11 = game:GetService(v7("\96\26\35\11\251\66\5", "\158\48\118\66\114")).LocalPlayer;
_G.key = Enum.KeyCode.V;
local v13 = {[v7("\185\33\0\51\114\177\250\166\43\5\56\103", "\155\203\68\112\86\19\197")]=((2131 - 1250) - ((885 - (268 + 335)) + 595)),[v7("\67\197\53\249\80\108\236\247\72\206", "\152\38\189\86\156\32\24\133")]={v7("\207\86\190\107\249\68\180\71\251\82\149\67\237\66\162\85\232", "\38\156\55\199"),v7("\154\120\113\39\7\113\223\85\173\115\104", "\35\200\29\28\72\115\20\154"),v7("\43\186\192\202\136\63\32\58\179\208\204\158", "\84\121\223\177\191\237\76"),v7("\152\94\198\175\41\85\19\205\186\69\218", "\161\219\54\169\192\90\48\80"),v7("\111\78\1\54\65\112\5\40\70\86\5", "\69\41\34\96"),v7("\144\204\214\14\33\35\189\209\214\9\22\46\174", "\75\220\163\183\106\98"),v7("\61\133\173\2\247\33\142\162\24\247", "\185\98\218\235\87"),v7("\249\57\43\233\223\174\249\57\42\233\202\175", "\202\171\92\71\134\190"),v7("\11\212\32\132\44\213\30\141\36\206\56\141", "\232\73\161\76")}};
local v14 = getrawmetatable(game);
local v15 = v14.__namecall;
local v16 = v8.TREKModules.GunSettings;
local v17 = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))();
local v18 = v17.CreateLib(v7("\152\252\108\105\63\142\235\99", "\126\219\185\34\61"), v7("\63\203\80\102\119\121\246\235", "\135\108\174\62\18\30\23\147"));
local v19 = v18:NewTab(v7("\155\232\35\197", "\167\214\137\74\171\120\206\83"));
local v20 = v19:NewSection("");
v20:NewButton(v7("\218\176\6\124\200", "\199\235\144\82\61\152"), v7("\46\24\191\107\35\27\190\106", "\75\103\118\217"), function()
	setreadonly(v14, false);
	v14.__namecall = function(v35, ...)
		local v36 = 0 - 0;
		local v37;
		local v38;
		local v39;
		while true do
			if (v36 == (0 + 0)) then
				v37 = 1024 - (706 + 318);
				v38 = nil;
				v36 = 1252 - (721 + 530);
			end
			if (v36 == (1272 - (945 + 326))) then
				v39 = nil;
				while true do
					if (v37 == 0) then
						local v60 = 0;
						local v61;
						while true do
							if (v60 == (0 - 0)) then
								v61 = 0 + 0;
								while true do
									if (v61 == (700 - (271 + 429))) then
										v38 = {...};
										v39 = getnamecallmethod();
										v61 = 1501 - (1408 + 92);
									end
									if (v61 == (1087 - (461 + 625))) then
										v37 = 1289 - (993 + 295);
										break;
									end
								end
								break;
							end
						end
					end
					if (v37 == 1) then
						local v62 = 0;
						while true do
							if (v62 == 1) then
								v37 = 2;
								break;
							end
							if (v62 == (0 + 0)) then
								for v82, v83 in next, v13.exceptions do
									if (v35.Name == v83) then
										return v15(v35, ...);
									end
								end
								if ((v39 == v7("\225\93\98\17\138\27\213\66\117\6", "\126\167\52\16\116\217")) or (v39 == v7("\225\32\54\143\191\28\207\205\60\54\133\166", "\156\168\78\64\224\212\121"))) then
									for v88 = 1, v13.repeatamount do
										v15(v35, ...);
									end
								end
								v62 = 1172 - (418 + 753);
							end
						end
					end
					if ((1 + 1) == v37) then
						return v15(v35, ...);
					end
				end
				break;
			end
		end
	end;
	setreadonly(v14, true);
end);
v20:NewButton(v7("\42\225\161\199\1\247\229\233\18\224", "\174\103\142\197"), v7("\121\38\88\55\33\16", "\152\54\72\63\88\69\62"), function()
	for v40, v41 in pairs(v16:GetChildren()) do
		if ((v41.Name ~= v7("\224\193\227\76\216\197\250\89\249\203\234\73\216\193", "\60\180\164\142")) and (v41.Name ~= v7("\123\114\48\11", "\114\56\62\101\73\71\141")) and (v41.Name ~= v7("\139\200\249\246\157", "\164\216\137\187"))) then
			local v46 = 0 + 0;
			local v47;
			local v48;
			while true do
				if (v46 == (0 + 0)) then
					v47 = 0 - (0 + 0);
					v48 = nil;
					v46 = 530 - (406 + 123);
				end
				if (v46 == (1770 - (1749 + 20))) then
					while true do
						if (v47 == (119 - (8 + 24 + 85))) then
							local v69 = 1322 - (1249 + 73);
							while true do
								if (v69 == (1 + 0)) then
									v47 = 1148 - (466 + 679);
									break;
								end
								if (v69 == 0) then
									v48.firerate = 2405 - 1405;
									v48.Range = (140151 - 91150) + (2899 - (106 + 1794));
									v69 = 1;
								end
							end
						end
						if (v47 == (0 + 0 + 0)) then
							local v70 = 0 + 0;
							local v71;
							while true do
								if (v70 == (0 - 0)) then
									v71 = 0 - 0;
									while true do
										if ((114 - (4 + 110)) == v71) then
											v48 = require(v41);
											v48.AmmoCount = (2540 - (57 + 527)) - ((2319 - (41 + 1386)) + 65);
											v71 = 104 - (17 + 86);
										end
										if (v71 == (1 + 0)) then
											v47 = 2 - 1;
											break;
										end
									end
									break;
								end
							end
						end
						if (v47 == (5 - (3 - 1))) then
							v48.CanReload = true;
							break;
						end
						if (v47 == (2 - 1)) then
							local v73 = 166 - (122 + 44);
							local v74;
							while true do
								if (v73 == (0 - 0)) then
									v74 = 0 - 0;
									while true do
										if (v74 == (1 + 0)) then
											v47 = (27 + 155) - ((135 - 68) + (178 - (30 + 35)));
											break;
										end
										if (v74 == (0 + 0)) then
											v48.ReloadSpeed = (1257.1 - (1043 + 214)) - 0;
											v48.spread = (1323 - 973) - ((1299 - (323 + 889)) + (707 - 444));
											v74 = 581 - (361 + 219);
										end
									end
									break;
								end
							end
						end
					end
					break;
				end
			end
		end
	end
end);
v20:NewButton(v7("\230\227\48\191\141\247\7\222", "\107\178\134\81\210\198\158"), "", function()
	for v42, v43 in pairs(v16:GetChildren()) do
		local v44 = (320 - (53 + 267)) + 0 + 0;
		local v45;
		while true do
			if (v44 == ((413 - (15 + 398)) - (982 - (18 + 964)))) then
				v45 = require(v43);
				v45.teamkill = true;
				break;
			end
		end
	end
end);
local v21 = v18:NewTab(v7("\14\7\145\211\171\52", "\202\88\110\226\166"));
local v22 = v21:NewSection("");
v22:NewButton(v7("\237\0\194\209\197\196", "\170\163\111\226\151"), v7("\38\63\165\121\15", "\73\113\80\210\88\46\87"), function()
	local v27 = 0 - 0;
	local v28;
	local v29;
	while true do
		if (v27 == (0 + 0)) then
			local v49 = 0 + 0;
			while true do
				if (1 == v49) then
					v27 = 851 - (20 + 830);
					break;
				end
				if (v49 == 0) then
					v28 = 0 + 0;
					v29 = nil;
					v49 = 1;
				end
			end
		end
		if (v27 == (127 - (116 + 10))) then
			while true do
				if (v28 == (0 + 0)) then
					v29 = 0;
					while true do
						if (v29 == ((738 - (542 + 196)) + (0 - 0))) then
							v10.FogEnd = 397448 - (86860 + 210588);
							for v79, v80 in pairs(v10:GetDescendants()) do
								if v80:IsA(v7("\160\56\192\29\244\145\36\200\0\226", "\135\225\76\173\114")) then
									v80:Destroy();
								end
							end
							break;
						end
					end
					break;
				end
			end
			break;
		end
	end
end);
v22:NewButton(v7("\50\232\185\180\236\149\174\14\239\183\168", "\199\122\141\216\208\204\221"), v7("\175\212\23\176\112\243\172\217\3\190", "\150\205\189\112\144\24"), function()
	local v30 = 0;
	local v31;
	while true do
		if (v30 == 0) then
			v31 = 0 + 0;
			while true do
				if (v31 == (0 + 0)) then
					for v63, v64 in pairs(game:GetService(v7("\21\136\190\85\1\154\2", "\112\69\228\223\44\100\232\113")):GetPlayers()) do
						if ((v64.Team ~= v11.Team) and (v64.Name ~= v11.Name)) then
							local v76 = 0 - 0;
							local v77;
							local v78;
							while true do
								if (v76 == (0 - 0)) then
									v77 = 1551 - (1126 + 425);
									v78 = nil;
									v76 = 406 - (118 + 287);
								end
								if ((3 - 2) == v76) then
									while true do
										if (0 == v77) then
											v78 = (2073 - (118 + 1003)) - (802 + (438 - 288));
											while true do
												if (v78 == (0 - (377 - (142 + 235)))) then
													v64.Character:FindFirstChild(v7("\252\26\6\215", "\230\180\127\103\179\214\28")).Size = Vector3.new(10 - 4, (13.5 - 10) + 1 + 0, (1980 - (553 + 424)) - ((1729 - 814) + 73 + 9));
													v64.Character:FindFirstChild(v7("\164\0\94\66", "\128\236\101\63\38\132\33")).Transparency = 0.6 - (0 + 0);
													break;
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
					end
					game.Workspace.ChildAdded:Connect(function()
						for v67, v68 in pairs(game:GetService(v7("\156\165\16\93\179\249\220", "\175\204\201\113\36\214\139")):GetPlayers()) do
							if ((v68.Team ~= v11.Team) and (v68.Name ~= v11.Name)) then
								local v81 = 0 + 0;
								while true do
									if (v81 == (0 + 0)) then
										v68.Character:FindFirstChild(v7("\111\201\52\216", "\100\39\172\85\188")).Size = Vector3.new(3 + 1 + (4 - 2), 11.5 - 7, 13 - 7);
										v68.Character:FindFirstChild(v7("\133\125\184\132", "\83\205\24\217\224")).Transparency = 0.6 - 0;
										break;
									end
								end
							end
						end
					end);
					break;
				end
			end
			break;
		end
	end
end);
v22:NewButton(v7("\210\204\192\56\213\209\194\45\166\254\141\11\166\248", "\93\134\165\173"), v7("\176\243\201\130\51\195\242\112\177\230\129\200\53\197\187\112\185", "\30\222\146\161\162\90\174\210"), function()
	local v32 = 0 + 0;
	local v33;
	while true do
		if (v32 == (14 - 11)) then
			game:GetService(v7("\109\51\118\238\115\78\72\53\103\207\95\82\78\41\112\249", "\32\56\64\19\156\58")).InputBegan:connect(onKeyPress);
			game:GetService(v7("\111\219\224\68\115\252\144\79\220\214\83\72\228\137\89\205", "\224\58\168\133\54\58\146")).InputBegan:connect(onKeyPress);
			break;
		end
		if (v32 == 1) then
			local v50 = 0;
			while true do
				if (v50 == (753 - (239 + 514))) then
					v33.Parent = game.Lighting;
					v33.Saturation = -(1188 - (376 + 693 + (1447 - (797 + 532))));
					v50 = 1 + 0;
				end
				if (v50 == (1 + 0)) then
					v33.Contrast = (0 - 0) - 0;
					v32 = 1204 - (373 + 829);
					break;
				end
			end
		end
		if ((731 - (476 + 255)) == v32) then
			local v51 = 1130 - (369 + 761);
			while true do
				if ((0 + 0) == v51) then
					loadstring(game:HttpGet("https://paste.gg/p/anonymous/cb1c7198b269449eb8a2cf8ced061bed/files/4a98e88f82ee47388b3030a7f000b34e/raw", true))();
					setting = v13().Network;
					v51 = 1;
				end
				if (v51 == 1) then
					v33 = Instance.new(v7("\198\65\124\5\247\109\127\24\247\75\115\30\236\65\126\47\227\72\117\9\241", "\106\133\46\16"));
					v32 = 1 - 0;
					break;
				end
			end
		end
		if (v32 == 2) then
			local v52 = 0;
			while true do
				if (v52 == (1 - 0)) then
					function onKeyPress(v65, v66)
						if (v65.KeyCode == Enum.KeyCode.RightControl) then
							if (toggle == false) then
								local v84 = 238 - (64 + 174);
								while true do
									if (0 == v84) then
										local v91 = 0;
										local v92;
										while true do
											if (0 == v91) then
												v92 = 0 + 0;
												while true do
													if (v92 == (0 - 0)) then
														local v101 = 336 - (144 + 192);
														while true do
															if ((216 - (42 + 174)) == v101) then
																setting.IncomingReplicationLag = (1643 + 544) - (984 + 203);
																v33.Enabled = true;
																v101 = 1;
															end
															if (v101 == 1) then
																v92 = 1 + 0;
																break;
															end
														end
													end
													if (v92 == (1505 - (363 + 1141))) then
														v84 = 1581 - (1183 + 397);
														break;
													end
												end
												break;
											end
										end
									end
									if (v84 == (2 - 1)) then
										toggle = true;
										break;
									end
								end
							else
								local v85 = 0 + 0 + 0;
								while true do
									if (v85 == (0 - (0 + 0))) then
										local v93 = 1975 - (1913 + 62);
										while true do
											if (v93 == (1 + 0)) then
												v85 = 792 - (368 + 423);
												break;
											end
											if (v93 == (0 - 0)) then
												setting.IncomingReplicationLag = (1933 - (565 + 1368)) + (0 - 0);
												v33.Enabled = false;
												v93 = 1662 - (1477 + 184);
											end
										end
									end
									if (v85 == (3 - (2 - 0))) then
										toggle = false;
										break;
									end
								end
							end
						end
					end
					v32 = 3 + 0;
					break;
				end
				if ((856 - (564 + 292)) == v52) then
					toggle = false;
					v33.Enabled = false;
					v52 = 1;
				end
			end
		end
	end
end);
