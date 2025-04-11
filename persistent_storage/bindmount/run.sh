podman build -t "persistantstorage" .
#podman run -it "persistantstorage"

if [ ! -d ./mountdir ]; then
    mkdir mountdir
fi 

#the first podman run works! BUT! it doesn't work on fedora where it will get blocked by selinux. if there's a way to set the 'z' flag using the --mount syntax, I couldn't find it. the -v flag (volume) does the same thing (mounts a bind mount), but has flag-setting syntax that I could find
#the 'z' flag, as i have come to understand, makes podman account for selinux permissions.
#alternatively, this circumstance seems like the reason volume mounts exist

#podman run --mount type=bind,src=./mountdir,dst=/persist -it "persistantstorage"
podman run -v ./mountdir:/persist:z -it "persistantstorage"
