# Delerwatch - ABOUT
This is my first, non-Batch (because Batch is used as a wrapper) "virus" or "annoyware".

This will not cause any problems in most cases, except when the game is actually running.

Later versions will check for any instances of the game and the client before starting, and will stop the process.

That is to ensure nobody gets banned for testing my laughable thing, which cannot be a good sign.

##Credits
Old anonymous scriptlets from the internet

Codeplex.com

Autohotkey.org forum

##Disclaimer again
This program comes with absolutely NO WARRANTY this will not ruin your game, data or your life.

By using this program or any portion of this program, you are acknowledging that you are exposing yourself to the danger of getting banned in the process of testing this program and that only yourself is to blame for any damage caused by this program.

Blizzard Entertainment will ban you forever in that particular game even after buying the game again (they employ "zero tolerance policy" where you'll be punished for eternity for cheating in the game), so if you value your account and your game key, disable internet connection before trying this out, preferably while the Battle.NET service and the game is not running.

This program is NOT A CHEATING PROGRAM. Actually this is the exact opposite, because the reason why I made this is to show that they should learn how to play better and not depend on cheats.

##Testing advices
You might want to make a dummy process with the exact name of the game itself, to ensure that you will not get banned for it.

(Actually, this does not have an intelligent check, so even a renamed Calculator would work just fine)

Use desktop speaker for the audio payload with adjustable gain, because this will automatically set the volume to 100% and disable Mute.

(Yes, you cannot mute nor set the volume to 0% because this will watch for any changes and revert it)

Old versions (prior to 2.7) have no waiting time between file checks, so if you're running it on virtual machine, there can be a significant performance drop and heat generation. Make sure you have set the CPU type to at least Dual Core. (Core2 Duo)

Some old processors will refuse to run the program. Make sure you have x86-x64 CPU, not x32 or x86 CPU, just to be safe.

##Warning
Blizzard will drop the Ban Hammer hard on you if you use this while the game is running. Don't take the risk, turn off the game and client then try it out.

Post-2.5 versions will have destructive payload which overwrites your game folder with garbage. Use with caution.

Some antivirus programs will block the program from running.

Under some circumstances, the main files will fail to unpack and the program will not run. In that case, make sure the package is not damaged by comparing checksum from GitHub. If that fails too, go to Temp folder and see if it unpacks. 

If the program refuses to run despite the files being unpacked, install .NET 3.4 Runtime package.

If that fails too, try running other AutoHotkey programs and show me the result. Also, please send me what programs are installed, as well as the setup information.

##Closing up
After all, this is a silly joke program. You may use it in research environment (if it's worth it!) without permission from me, but please don't be evil.

You are not allowed to repackage this application and/or any portion of this program, including malicious files (like CryptoLocker) or modifying the script to do malicious things. Check the GitHub page to see if yours is modified by comparing MD5/SHA1 value.
