# less(1)
set -gx LESSHISTFILE "$XDG_CACHE_HOME/lesshst"

# node(1)
set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"

# AWS
# https://boto3.amazonaws.com/v1/documentation/api/latest/guide/configuration.html#environment-variable-configuration
set -gx AWS_SHARED_CREDENTIALS_FILE "$XDG_CONFIG_HOME/aws/credentials"
set -gx AWS_CONFIG_FILE "$XDG_CONFIG_HOME/aws/config"

# Opt-out Homebrew analytics
# https://docs.brew.sh/Analytics#opting-out
if command -sq brew
    set -gx HOMEBREW_NO_ANALYTICS 1
end
