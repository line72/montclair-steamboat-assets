# Montclair Steamboat Assets

This repository holds all the necessary information for running the
`montclair-transmogrifier` to create a whitelabeled version of
montclair, montclair-pwa-ios, and montclair-pwa-android for Steamboat
Springs, CO.

## Configuring

Everything is configured in the `config.py`

## Building

The `build.sh` script will pull down all the repositories, run the
transmogrifier, and push a new tag.

You need to make sure you have updated the `config.py` with the
appropriate output versions.
