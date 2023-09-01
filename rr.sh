#!/bin/bash

##
# remove_Raccourci.sh
#
# Removes " - Raccourci" of the filenames in folder
#
# Usage :
# rr

echo -e "\n"
for file in *
    do
        source_file_name=$file
        target_file_name=$(echo ${source_file_name} | sed 's/ - Raccourci//g')
          
        if [[ ${source_file_name} != ${target_file_name} ]]; then
            echo ${source_file_name}
            echo "Renamed to : "
            ### COMMENT THE FOLLOWING LINE FOR A DRY RUN ###
            mv "${source_file_name}" "${target_file_name}"
            echo ${target_file_name}
            echo -e "\n"
        fi
done
