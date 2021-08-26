#!/usr/bin/env python3

#Change the variables below. Also make sure you have a created a spotify app...
#https://developer.spotify.com/dashboard/
path = '/home/loti/Music/' #path where albums are downloaded
ID = "75597f370f5a4235b9ccd6876abaa1d2" #your client id in the spotify app
SECRET = "549fbb8e2d3b453aaa5f454f8ccf7c2d" #client secret

import spotipy
import os
import subprocess
import sys
from spotdl import __main__ as spotdl
from spotipy.oauth2 import SpotifyClientCredentials

sp = spotipy.Spotify(auth_manager=SpotifyClientCredentials(client_id=ID,
                                                           client_secret=SECRET))
#ask for spotify album url...
url = input("Enter the album url: ")

album = sp.album(url)
art = album['artists'][-1]['name']
year = album['release_date']
directory_name = album['name'] + " - " + art + " (" + year + ")"

    #make output dir a variable for future purposes
outputdir = path + directory_name
os.makedirs(outputdir) #create folder first
os.chdir(outputdir) #chdir into the created folder...
print("Done creating folder...")

    #download tracks inside that folder...
print("Downloading album tracks...")
subprocess.check_call([sys.executable, spotdl.__file__, url])
