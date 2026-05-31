{ _, ... }:
{
  flake.modules.homeManager.programs-mise =
    { _, ... }:
    {
      programs.mise = {
        enable = true;
        globalConfig = {
          tools = {
            krew = "latest";
            kubectl = "latest";
            kubectx = "latest";
            kubens = "latest";
            usage = "latest";
            doggo = "latest";
            helm = "latest";
          };
        };
      };
    };
}
