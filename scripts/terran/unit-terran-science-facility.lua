--
-- unit-terran-science-facility
--

DefineAnimations("animations-terran-science-facility", {
  Still = {
    "frame 0", "wait 125",
  },
  Research = {--[[FIXME: active overlay 310]]
    "frame 0", "wait 125",
  },
})

DefineConstruction("construction-terran-science-facility", {
  Files = {
    File = "terran/units/building construction large.png",
    Size = {160, 128}},
  ShadowFiles = {
    File = "terran/units/building construction large shadow.png",
    Size = {128, 128}},
  Constructions = {
   {Percent = 0,
    File = "construction",
    Frame = 0},
   {Percent = 20,
    File = "construction",
    Frame = 1},
   {Percent = 40,
    File = "construction",
    Frame = 2},
   {Percent = 60,
    File = "main",
    Frame = 1}}
})

DefineUnitType("unit-terran-science-facility", { Name = "Science Facility",
  Image = {"file", "terran/units/science facility.png", "size", {128, 96}},
  Shadow = {"file", "terran/units/science facility shadow.png", "size", {128, 96}},
  Animations = "animations-terran-science-facility", Icon = "icon-terran-science-facility",
  Costs = {"time", 200, "gold", 100, "wood", 150},
  RepairHp = 4,
  RepairCosts = {"gold", 1, "wood", 1},
  Construction = "construction-terran-science-facility",
  Speed = 0,
  HitPoints = 850,
  DrawLevel = 50,
  TileSize = {4, 3}, BoxSize = {127, 95},
  SightRange = 1,
  Armor = 20, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
  Priority = 30, AnnoyComputerFactor = 35,
  Points = 160,
  Corpse = {"unit-destroyed-3x3-place", 0},
  ExplodeWhenKilled = "missile-terran-explosion-large",
  Type = "land",
  Building = true, VisibleUnderFog = true, 
  Sounds = {
    "selected", "terran-science-facility-selected",
--    "ready", "human-barracks-ready",
    "help", "terran-base-attacked",
    "dead", "explosion-large"} } )