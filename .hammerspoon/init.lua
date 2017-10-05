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

function pushFocused(x, y, w, h)
  local win = hs.window.focusedWindow()
  pushWindow(win, x, y, w, h)
end

hs.hotkey.bind(hyper, "/", function () pushFocused(0,0,1,1) end)
hs.hotkey.bind(hyper, "[", function () pushFocused(0,0,2/3,1) end)
hs.hotkey.bind(hyper, "]", function () pushFocused(1/3,0,2/3,1) end)
hs.hotkey.bind(hyper, ";", function () pushFocused(0,0,1/3,1) end)
hs.hotkey.bind(hyper, "'", function () pushFocused(2/3,0,1/3,1) end)
