complete -c yadm -f -n '__fish_seen_subcommand_from yadm dps' -a "(status push pull add switch merge stash apply checkout)"

complete -c yadm -s s -d 'Switch to a different branch' -l switch -a '(git branch | commandline -b)'
complete -c yadm -s m -d 'Merge changes from a different branch' -l merge -a '(git branch | commandline -b)'

