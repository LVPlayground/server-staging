# LVP Staging Server
Before changes to the gamemode will be rolled out to the live server, they should be tested on the
staging server: a public Las Venturas Playground server running on a separate database with
additional debugging and testing commands enabled.

## Joining the staging server
The staging server is available by connecting to `play.sa-mp.nl` on port `1337` using your SA-MP
client. There is no password.

## Updating the staging revision
Edit `[REVISION](REVISION)` with the SHA of the commit in the [playground]
(https://github.com/LVPlayground/playground) repository that you wish to deploy.

## Auto-deploy
Any changes to this repository will immediately be deployed to the test server, but a manual restart
has to be requested in `#LVP.dev` on IRC. Because the Pawn portion of the gamemode will be compiled
on the server, the restart could take up to a minute.
