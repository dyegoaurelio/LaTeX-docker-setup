bash scripts/compile.sh;
inotifywait -e close_write,moved_to,create -m src |
while read -r directory events filename; do
    clear;
    bash scripts/compile.sh;
done