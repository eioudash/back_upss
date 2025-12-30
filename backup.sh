
## echo

echo "... Welcome to backup script. to run ./backup.sh choose 1st argument: create or fetun ..."


case "$1" in

    create)
        ## setup up delay_time
        delay_time=3
        echo "delay time is set to $delay_time."

        ## setup date and its format
        date_capture=$(date -u +%Y-%m-%d_%H-%M-%S)
        echo "date format is: $date_capture."
        echo


        ## verifying user inputs
        echo 1st input is: "$1"
        echo 2nd input is: "$2"

        ## creating the archive
        echo creating archive of directory "$2"
	mkdir -p ~/bu
        #tar -cf "$date_capture.tar" -v "$2"
	tar -cvf ~/bu/"$date_capture.tar" "$2"

        ## delay for watch purposes
        #sleep "$delay_time"

        tar_size=$(du -sb "$2" | awk '{ print $1 }')
        echo created archive of size "$tar_size""B"


        ## removable options for study
        #rm "$date_capture.tar"
        #echo "archive deleted after living for $delay_time seconds"

        echo "runtime: $SECONDS sec"
        ;;


    fetun)
        echo "you chose fetun but its empty for now"
        ;;

    *)
        echo "you chose poorly (neither of the options)"
        ;;

esac


