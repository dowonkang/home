# less(1)
set -x LESSHISTFILE "$XDG_CACHE_HOME/lesshst"

# node(1)
set -x NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"

# AWS
# https://boto3.amazonaws.com/v1/documentation/api/latest/guide/configuration.html#environment-variable-configuration
set -x AWS_SHARED_CREDENTIALS_FILE "$XDG_CONFIG_HOME/aws/credentials"
set -x AWS_CONFIG_FILE "$XDG_CONFIG_HOME/aws/config"

# Opt-out Homebrew analytics
# https://docs.brew.sh/Analytics#opting-out
if command -sq brew
    set -x HOMEBREW_NO_ANALYTICS 1
end
