print "\e[6 q"
$env.KOMOREBI_CONFIG_HOME = ($env.Path | prepend 'C:\Users\xhuyz\.config\komorebi')
$env.config.show_banner = false
$env.config.buffer_editor = "nvim"
$env.PROMPT_COMMAND_RIGHT = ""
$env.TRANSIENT_PROMPT_MULTILINE_INDICATOR = null
$env.ENV_CONVERSIONS = $env.ENV_CONVERSIONS | merge {
    "XDG_DATA_DIRS": {
        from_string: {|s| $s | split row (char esep) | path expand --no-symlink }
        to_string: {|v| $v | path expand --no-symlink | str join (char esep) }
    }
}
$env.config.color_config.filesize = {|x| if $x == 0b { 'dark_gray' } else if $x < 1mb { 'cyan' } else { 'blue' } }
$env.config.color_config.bool = {|x| if $x { 'green' } else { 'light_red' } }
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
alias edit = sudo nvim /etc/nixos/configuration.nix
alias xhuyz = sudo nixos-rebuild switch
alias home = cd ~/.config/home-manager/
alias niriconfig = nvim ~/.config/niri/config.kdl
#update system
alias xhuyz = sudo pacman -Syyu
#fastfetch
alias ff = fastfetch
#service
alias serman = bash ~/bash-scripts/services-manager.sh
alias waydroid-enable = sudo systemctl enable waydroid-container.service
alias waydroid-disable = sudo systemctl disable waydroid-container.service
alias waydroid-status = sudo systemctl status waydroid-container.service
alias waydroid-start = sudo systemctl start waydroid-container.service
alias waydroid-restart = sudo systemctl restart waydroid-container.service
alias waydroid-stop = sudo systemctl stop waydroid-container.service
alias mysql-enable = sudo systemctl enable mysqld
alias mysql-disable = sudo systemctl disable mysqld
alias mysql-status = sudo systemctl status mysqld
alias mysql-start = sudo systemctl start mysqld
alias mysql-restart = sudo systemctl restart mysqld
alias mysql-stop = sudo systemctl stop mysqld
alias mssql-enable = sudo systemctl enable mssql-server
alias mssql-disable = sudo systemctl disable mssql-server
alias mssql-status = sudo systemctl status mssql-server
alias mssql-start = sudo systemctl start mssql-server
alias mssql-restart = sudo systemctl restart mssql-server
alias mssql-stop = sudo systemctl stop mssql-server
alias docker-enable = sudo systemctl enable docker
alias docker-disable = sudo systemctl disable docker
alias docker-status = sudo systemctl status docker
alias docker-start = sudo systemctl start docker
alias docker-restart = sudo systemctl restart docker
alias docker-stop = sudo systemctl stop docker containerd
alias tlp-enable = sudo systemctl enable tlp
alias tlp-disable = sudo systemctl disable tlp
alias tlp-status = sudo systemctl status tlp
alias tlp-start = sudo systemctl start tlp
alias tlp-restart = sudo systemctl restart tlp
alias tlp-stop = sudo systemctl stop tlp
#dotnetrun
alias dr = dotnet run
#start dbeaver with x11 windowing system
alias dbeaver = with-env { GDK_BACKEND: "x11" } { dbeaver }
#scaffold dotnet
alias scaffold = dotnet ef dbcontext scaffold "Server=localhost;Database=FootballMatchAppDB;User Id=sa;Password=Wenhui35@;TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer -o Models
alias scaffold2 = dotnet ef dbcontext scaffold "Server=localhost;Database=FootballMatchAppDB;User Id=sa;Password=Wenhui35@;TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer --context-dir Context --output-dir Entities --context FootballMatchAppContext
#tmux 
alias aegis-reset = tmux kill-session -t Aegis+
alias aegis = tmuxp load ~/.tmuxp/aegis.yaml
alias basico = tmuxp load ~/.tmuxp/basico.yaml
alias fma = tmuxp load ~/.tmuxp/fma.yaml
alias connect = sqlcmd -S localhost -U sa -C -P 'Wenhui35@' -i ~/sql-scripts/Spring2025HandbagDB.sql
alias reboot = sudo systemctl reboot
alias off = sudo systemctl poweroff
# start postgres docker
alias psqldocker = sudo docker run --name postgres -e POSTGRES_PASSWORD=Wenhui35@ -p 5432:5432 -d postgres



