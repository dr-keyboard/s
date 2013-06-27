#!/bin/bash

youtube-dl -t --extract-audio --audio-format mp3 --audio-quality 320k --restrict-filenames $1

