# Shell scripting patterns

## Template

```sh
#!/usr/bin/env sh

blah="blah blah"
meh="meh"

# Do sutff

unset meh blah
```

## Check if directory exists

```sh
if [ ! -d "$dir" ]; then
# $dir doesn't exists
fi
```

## Check if a command exists

```sh
if command -v "$command_name" >/dev/null 2>&1; then
# command exists
fi
```

## Download a file

```sh
curl --progress-bar --location "$file_url" --create-dirs --output "$output_path"
```

## Make a file executable

```sh
chmod u+x "$file"
```
