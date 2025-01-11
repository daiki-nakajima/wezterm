local wezterm = require("wezterm")
local act = wezterm.action

return {
  keys = {
    -- コピー
    { key = "c", mods = "CTRL", action = act.CopyTo("Clipboard") },
    -- 貼り付け
    { key = "v", mods = "CTRL", action = act.PasteFrom("Clipboard") },
    -- 新規タブ
    { key = "t", mods = "CTRL", action = act.ShowLauncherArgs({ flags = "LAUNCH_MENU_ITEMS", title = "Select workspace" }) },
    -- タブ閉じる
    { key = "w", mods = "CTRL", action = act.CloseCurrentTab { confirm = true } },
    -- Tab移動
    { key = "Tab", mods = "CTRL", action = act.ActivateTabRelative(1) },
    { key = "Tab", mods = "SHIFT|CTRL", action = act.ActivateTabRelative(-1) },
    -- アプリ終了
    { key = "q", mods = "CTRL", action = act.QuitApplication},
    -- フォントサイズ切替
    { key = "+", mods = "CTRL", action = act.IncreaseFontSize },
    { key = "-", mods = "CTRL", action = act.DecreaseFontSize },
    -- フォントサイズのリセット
    { key = "0", mods = "CTRL", action = act.ResetFontSize },
  },
}
