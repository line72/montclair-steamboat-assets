# -*- mode: python -*-

import transmogrifier

CONFIG = transmogrifier.Config(
    build_dir = './build',
    repo = 'steamboat',
    package_name = 'montclair-steamboat',
    name = 'Go Steamboat',
    description = 'Real Time Tracking of the Buses for Steamboat Springs, CO',
    url = 'https://steamboat.gotransitapp.com',
    logo_svg = 'assets/logo.svg',
    montclair_config = transmogrifier.MontclairConfig(
        version = '1.2.2',
        revision = '1',
        title = 'Go Steamboat',
        first_run_text = "Welcome to Steamboat Springs, CO's Real Time Bus Tracker.<br /><br />Please select one or more routes to begin!",
        configuration_js_file = 'assets/Configuration.js'
    ),
    ios_config = transmogrifier.MontclairiOSConfig(
        version = '2.0.1',
        revision = '5',
        app_id = 'com.gotransitapp.steamboat',
        app_store_id = '1493062083',
        app_store_url = 'https://apps.apple.com/us/app/gosteamboat/id1493062083'
    ),
    android_config = transmogrifier.MontclairAndroidConfig(
        version = '1.0.2',
        revision = '1',
        app_id = 'com.gotransitapp.steamboat',
        play_store_url = 'https://play.google.com/store/apps/details?id=com.gotransitapp.steamboat'
    )
)
