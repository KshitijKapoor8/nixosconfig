{
  programs.nixvim.plugins.notify = {
    enable = true;
    fps = 30;
    stages = "fade_in_slide_out";
    timeout = 900;
    backgroundColour = "#1f2335";
    level = "info";
    maxWidth = 50;
    maxHeight = 10;
    icons = {
      error = "";
      warn = "";
      info = "";
      debug = "";
      trace = "✎";
    };
    render = "minimal";
    topDown = true;
  };
}
