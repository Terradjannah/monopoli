local Sets = {}
Sets.Brown = {size=2}
Sets.LightBlue = {size=3}
Sets.Orange = {size=3}
Sets.Red = {size=3}
Sets.Yellow = {size=3}
Sets.Green = {size=3}
Sets.Blue = {size=2}
Sets.Station = {size=4}
local Properties = {};

--// Normal properties
Properties[1] = {name="Brown 1", price=60, cost=2, set="Brown"}
Properties[2] = {name="Brown 2", price=60, cost=4, set="Brown"}
Properties[4] = {name="Light Blue 1", price=100, cost=6, set="LightBlue"}
Properties[5] = {name="Light Blue 2", price=100, cost=6, set="LightBlue"}
Properties[6] = {name="Light Blue 3", price=120, cost=8, set="LightBlue"}
Properties[7] = {name="Pink 1", price=140, cost=10, set="Pink"}
Properties[8] = {name="Pink 2", price=140, cost=10, set="Pink"}
Properties[9] = {name="Pink 3", price=160, cost=12, set="Pink"}
Properties[10] = {name="Orange 1", price=180, cost=14, set="Orange"}
Properties[11] = {name="Orange 2", price=180, cost=14, set="Orange"}
Properties[12] = {name="Orange 3", price=200, cost=16, set="Orange"}
Properties[13] = {name="Red 1", price=220, cost=18, set="Red"}
Properties[14] = {name="Red 2", price=220, cost=18, set="Red"}
Properties[15] = {name="Red 3", price=240, cost=20, set="Red"}
Properties[16] = {name="Yellow 1", price=260, cost=22, set="Yellow"}
Properties[17] = {name="Yellow 2",  price=260, cost=22, set="Yellow"}
Properties[18] = {name="Yellow 3", price=280, cost=24, set="Yellow"}
Properties[19] = {name="Green 1", price=300, cost=26, set="Green"}
Properties[20] = {name="Green 2", price=300, cost=26, set="Green"}
Properties[21] = {name="Green 3", price=320, cost=28, set="Green"}
Properties[22] = {name="Blue 1", price=350, cost=35, set="Blue"}
Properties[23] = {name="Blue 2", price=400, cost=50, set="Blue"}
Properties[24] = {name="South Station", price=200, set="Station"}
Properties[25] = {name="North Station", price=200, set="Station"}
Properties[26] = {name="East Station", price=200, set="Station"}
Properties[27] = {name="West Station", price=200, set="Station"}
Properties[28] = {name="Electric Company", price=150, set="Utility"}
Properties[29] = {name="Waterworks", price=150, set="Utility"}

local Board = {};
Board[1] = {name="Start", type="static"}
Board[2] = {name="Brown 1", type="property", id=1}
Board[3] = {name="Community Chest 1", type="chest"}
Board[4] = {name="Brown 2", type="property", id=2}
Board[5] = {name="Income Tax", type="tax", cost=200}
Board[6] = {name="South Station", type="railroad", id=24}
Board[7] = {name="Light Blue 1", type="property", id=4}
Board[8] = {name="Chance 1", type="chance"}
Board[9] = {name="Light Blue 2", type="property", id=5}
Board[10] = {name="Light Blue 3", type="property", id=6}
Board[11] = {name="Jail", type="jail", type="jail"}
Board[12] = {name="Pink 1", type="property", id=7}
Board[13] = {name="Electric Company", type="company", id=28}
Board[14] = {name="Pink 2", type="property", id=8}
Board[15] = {name="Pink 3", type="property", id=9}
Board[16] = {name="West Station", type="railroad", id=27}
Board[17] = {name="Orange 1", type="property", id=10}
Board[18] = {name="Community Chest 2", type="chest"}
Board[19] = {name="Orange 2", type="property", id=11}
Board[20] = {name="Orange 3", type="property", id=12}
Board[21] = {name="Free Parking", type="static"}
Board[22] = {name="Red 1", type="property", id=13}
Board[23] = {name="Chance 2", type="chance"}
Board[24] = {name="Red 2", type="property", id=14}
Board[25] = {name="Red 3", type="property", id=15}
Board[26] = {name="North Station", type="railroad", id=25}
Board[27] = {name="Yellow 1", type="property", id=16}
Board[28] = {name="Yellow 2", type="property", id=17}
Board[29] = {name="Waterworks", type="company", id=29}
Board[30] = {name="Yellow 3", type="property", id=18}
Board[31] = {name="Go To Jail", type="gotojail"}
Board[32] = {name="Green 1", type="property", id=19}
Board[33] = {name="Green 2", type="property", id=20}
Board[34] = {name="Community Chest 3", type="chest"}
Board[35] = {name="Green 3", type="property", id=21}
Board[36] = {name="East Station", type="railroad", id=26}
Board[37] = {name="Chance 3", type="chance"}
Board[38] = {name="Blue 1", type="property", id=22}
Board[39] = {name="Luxury Tax", type="tax", cost=100}
Board[40] = {name="Blue 2", type="property", id=23}

local Chance = {};
Chance[0] = "Advance to Go (Collect $200)"
Chance[1] = "Advance to Red 3. If you pass Go, collect $200"
Chance[2] = "Advance to Pink 1. If you pass Go, collect $200"
Chance[3] = "Advance to nearest Utility. If unowned, you may buy it from the Bank. If owned, throw dice and pay owner a total ten times the amount thrown."
Chance[4] = "Advance to the nearest Railroad and pay owner twice the rental to which he/she is otherwise entitled. If Railroad is unowned, you may buy it from the Bank."
Chance[5] = "Advance to the nearest Railroad and pay owner twice the rental to which he/she is otherwise entitled. If Railroad is unowned, you may buy it from the Bank."
Chance[6] = "Bank pays you dividend of $50"
Chance[7] = "Go to Jail - Go directly to Jail - Do not pass Go, do not collect $200"
Chance[8] = "Go back 3 spaces"
Chance[9] = "Make general repairs on all your property - For each house pay $25 - For each hotel $100"
Chance[10] = "Pay poor tax of $15"
Chance[11] = "Take a trip to Reading Railroad, if you pass Go, collect $200"
Chance[12] = "Advance to Blue 2"
Chance[13] = "You have been elected Chairman of the Board - Pay each player $50"
Chance[14] = "Your building loan matures - Collect $150"

Chest = {};

Chest[0] = "Advance to Go (Collect $200)"
Chest[1] = "Bank error in your favor - Collect $200"
Chest[2] = "Doctor's fees - Pay $50"
Chest[3] = "From sale of stock you get $50"
Chest[4] = "Go to Jail - Go directly to jail – Do not pass Go – Do not collect $200"
Chest[5] = "Grand Opera Night - Collect $50 from every player for opening night seats"
Chest[6] = "Holiday Fund matures - Receive $100"
Chest[7] = "Income tax refund - Receive $20"
Chest[8] = "It's your birthday - Collect $10 from every player."
Chest[9] = "Life insurance matures - Collect $100"
Chest[10] = "Pay hospital fees of $100"
Chest[11] = "Pay school fees of $150"
Chest[12] = "Receive $25 consultancy fee"
Chest[13] = "You are assessed for street repairs - $40 per house - $115 per hotel"
Chest[14] = "You have won second prize in a beauty contest - Collect $10"
Chest[15] = "You inherit $100"


return {Sets=Sets, Properties=Properties, Board=Board, Chance=Chance, Chest=Chest}
