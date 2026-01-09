{ pkgs, ... }: {
  enable = true;
  # package = pkgs.unstable.zed-editor;
  mutableUserSettings = false;
  mutableUserKeymaps = false;
  extraPackages = with pkgs; [ nixd ];
  extensions = [ "nix" "make" "dracula" ];
  userSettings = {
    relative_line_numbers = "enabled";
    project_panel = {
      file_icons = true;
      hide_gitignore = false;
      dock = "right";
    };
    disable_ai = true;
    hard_tabs = true;
    multi_cursor_modifier = "cmd_or_ctrl";
    ui_font_family = "MonaspiceAr Nerd Font Propo";
    buffer_font_family = "JetBrainsMono Nerd Font";
    auto_update = false;
    telemetry = {
      diagnostics = false;
      metrics = false;
    };
    vim_mode = true;
    ui_font_size = 14;
    buffer_font_size = 15;
    theme = {
      mode = "system";
      light = "Dracula Light (Alucard)";
      dark = "Dracula Solid";
    };
  };
  userKeymaps = [
    {
      context = "Workspace";
      bindings = {
        "space space" = "file_finder::Toggle";
        "space b d" = "pane::CloseActiveItem";
        "space b a" = "pane::CloseAllItems";
        "space e" = "workspace::ToggleRightDock";
      };
    }
    {
      context = "Editor && vim_mode == insert";
      bindings = {
        "j j" = "vim::NormalBefore";
        "ctrl-s" = [
          "vim::NormalBefore"
          "workspace::Save"
        ];
      };
    }
  ];
}
