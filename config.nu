print "\e[6 q"
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
#update system
alias xhuyz = sudo pacman -Syyu
#fastfetch
alias ff = fastfetch
#service
alias mssql-enable = sudo systemctl enable mssql-server
alias mssql-start = sudo systemctl start mssql-server
alias mssql-status = sudo systemctl status mssql-server
alias mssql-stop = sudo systemctl stop mssql-server
#dotnetrun
alias dr = dotnet run
#start dbeaver with x11 windowing system
alias dbeaver = with-env { GDK_BACKEND: "x11" } { dbeaver }
alias mysql-enable = sudo systemctl enable --now mysqld
alias mysql-restart = sudo systemctl restart mysqld
#scaffold dotnet
alias scaffold = dotnet ef dbcontext scaffold "Server=localhost;Database=Spring2025HandbagDB;User Id=sa;Password=Wenhui35.;TrustServerCertificate=True;" Microsoft.EntityFrameworkCore.SqlServer -o Models
#tmux 
alias aegis-reset = tmux kill-session -t Aegis+
alias aegis = tmuxp load ~/.tmuxp/aegis.yaml
alias connect = sqlcmd -S localhost -U sa -C -P 'Wenhui35.' -i ~/sql-scripts/Spring2025HandbagDB.sql



