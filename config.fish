# Path to Oh My Fish install.
set -gx OMF_PATH /Users/shahmeernavid/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/shahmeernavid/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Set up PATH to add user programs.
set -gx PATH $PATH ~/cmd_programs/

# Set up virtualenv.
eval (python -m virtualfish)

# Set up colors.
set -gx fish_color_command magenta
set -gx fish_color_param blue
set -gx fish_color_quote green
set -gx fish_color_search_match --background=000

status --is-interactive; and source (rbenv init -|psub)

# Add composer to PATH
set -gx PATH $PATH ~/.composer/vendor/bin

# Add function for nvm
function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end
