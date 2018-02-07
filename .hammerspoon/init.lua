hs.window.animationDuration = 0
local hyper = {"cmd", "alt"}

function pushWindow(win, x, y, w, h)
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w*x)
  f.y = max.y + (max.h*y)
  f.w = max.w*w
  f.h = max.h*h
  win:setFrame(f)
end

function pushFocused(x1, y1, w1, h1, x2, y2, w2, h2)
  local win = hs.window.focusedWindow()
  local screen = win:screen():frame()

  if h2 and screen.w >= 3440 then
    pushWindow(win, x2, y2, w2, h2)
  else
    pushWindow(win, x1, y1, w1, h1)
  end
end

hs.hotkey.bind(hyper, "/", function () pushFocused(0,0,1,1) end)
hs.hotkey.bind(hyper, "[", function () pushFocused(0,0,2/3,1,0,0,5/8,1) end)
hs.hotkey.bind(hyper, "]", function () pushFocused(1/3,0,2/3,1,3/8,0,5/8,1) end)
hs.hotkey.bind(hyper, ";", function () pushFocused(0,0,1/3,1,0,0,3/8,1) end)
hs.hotkey.bind(hyper, "'", function () pushFocused(2/3,0,1/3,1,5/8,0,3/8,1) end)
