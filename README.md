# LVP Staging Server
Before changes to the gamemode will be rolled out to the live server, they should be tested on the
staging server: a public Las Venturas Playground server running on a separate database with
additional debugging and testing commands enabled.

## Joining the staging server
The staging server is available by connecting to `play.sa-mp.nl` on port `1337` using your SA-MP
client. There is no password.

## Auto-deploy
Any changes to this repository will immediately be deployed to the test server, but a manual restart
has to be requested in `#LVP.dev` on IRC. Because the Pawn portion of the gamemode will be compiled
on the server, the restart could take up to a minute.

## Updating the staging revision
The following commands will help you update the staging server to a new build of the
[playground repository](https://github.com/LVPlayground/playground).

If you would like the staging server to update to the latest version of the code, use:

    $ python update.py

Alternatively, if you would like to update to a specific revision, use:

    $ python update.py c495dcf9b7ece522fa157855e69e0ce58bb23b5e

Both will automatically update the reference and create a commit for you. Do not forget to push the
commit to the repository!
