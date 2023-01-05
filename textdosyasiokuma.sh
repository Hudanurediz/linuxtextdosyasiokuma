#!/bin/sh
FILE_NAME=$(zenity --file-selection --title "Select file")
START_LINE=$(zenity --entry --title "Start line" --text "Please enter start line:")
END_LINE=$(zenity --entry --title "End line" --text "Please enter end line:")
TAIL=`expr $END_LINE - $START_LINE + 1`
OUTPUT=`head $FILE_NAME -n $END_LINE | tail -n $TAIL`
echo $OUTPUT
zenity --text-info --title "Output" --width=400 --height=350 <<<"$OUTPUT"
