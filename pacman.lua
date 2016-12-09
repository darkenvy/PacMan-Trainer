targetX = {0,0,0,0,0,0,0,0}
targetY = {0,0,0,0,0,0,0,0}
cycle = 1
while (true) do
  -- gui.text(10,10,"Ghost Targets Enabled");
  cycle = cycle + 1
  if (cycle >= 6) then
    cycle = 0
  end

  targetX[cycle] = memory.readbyteunsigned(205)
  targetY[cycle] = memory.readbyteunsigned(206)


  ghosttime = memory.readbyteunsigned(137)
  if (ghosttime ~= 255) then
    gui.text(memory.readbyteunsigned(26),memory.readbyteunsigned(28) - 5, tostring(ghosttime) );
  end
  
  cruiseelroy = memory.readbyteunsigned(61)
  if (cruiseelroy > 0) then
    gui.text(memory.readbyteunsigned(26),memory.readbyteunsigned(28) - 10, "Cruise Elroy" );
  end

  gui.text(180,220, tostring(memory.readbyteunsigned(106)) .. " left" );

  -- 8 squares, this is due to the address 205 & 206 being used for many things. This reduces flickering
  gui.opacity(0.3)
  gui.box(targetX[1],targetY[1],targetX[1]+10,targetY[1]+10, "orange")
  gui.box(targetX[2],targetY[2],targetX[2]+10,targetY[2]+10, "orange")
  gui.box(targetX[3],targetY[3],targetX[3]+10,targetY[3]+10, "orange")
  gui.box(targetX[4],targetY[4],targetX[4]+10,targetY[4]+10, "orange")
  gui.box(targetX[5],targetY[5],targetX[5]+10,targetY[5]+10, "orange")
  gui.box(targetX[6],targetY[6],targetX[6]+10,targetY[6]+10, "orange")
  gui.box(targetX[7],targetY[7],targetX[7]+10,targetY[7]+10, "orange")
  gui.box(targetX[8],targetY[8],targetX[8]+10,targetY[8]+10, "orange")
  gui.opacity(1)

  emu.frameadvance();
  end;



  -- gui.text(10,10, tostring(targetX[0]) );
  -- gui.text(10,20, tostring(targetY[0]) );
  -- gui.text(40,10, tostring(targetX[1]) );
  -- gui.text(40,20, tostring(targetY[1]) );
  -- gui.text(70,10, tostring(targetX[2]) );
  -- gui.text(70,20, tostring(targetY[2]) );
  -- gui.text(100,10, tostring(targetX[3]) );
  -- gui.text(100,20, tostring(targetX[3]) );
  -- gui.text(10,30, tostring(targetX) );