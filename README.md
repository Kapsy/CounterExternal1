An effort to get cyclone libs counter external working with libpd.

Source files from: http://suita.chopin.edu.pl/~czaja/miXed/externs/cyclone.html

Saving this repo as a lesson in building externals - which I was able to do thanks to the help of Nitrooo.

Pd still spits a 'can't create', but hey, at least I got the build working :)

For more on cyclone external issues see:

http://createdigitalnoise.com/discussion/1986/reson-cyclone-with-libpd-and-android#Item_5

Update 2013-02-06:

Fixed as in above thread. Libpd'ers please note: don't forget to call PdAudio.release() and PdBase.release()!
