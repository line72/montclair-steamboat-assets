# -*- mode: python -*-

import transmogrifier

CONFIG = transmogrifier.Config(
    build_dir = './build',
    repo = 'steamboat',
    package_name = 'montclair-steamboat',
    name = 'Steamboat Transit',
    description = 'Real Time Bus Tracking for Steamboat Springs, CO',
    url = 'https://steamboat.line72.net',
    logo_svg = 'assets/logo.svg',
    montclair_config = transmogrifier.MontclairConfig(
        version = '1.2.1',
        revision = 1,
        title = 'Steamboat Springs Transit',
        first_run_text = "Welcome to Steamboat Springs, CO's Real Time Bus Tracker.<br /><br />Please select one or more routes to begin!",
        configuration_js_file = 'assets/Configuration.js'
    ),
    ios_config = transmogrifier.MontclairiOSConfig(
        version = '1.0.0-3',
        revision = 1,
        app_id = 'net.line72.montclair.steamboat',
        app_store_id = 'REPLACE_ME',
        app_store_url = ''
    ),
    android_config = transmogrifier.MontclairAndroidConfig(
        version = '1.0.0-2',
        revision = 1,
        app_id = 'net.line72.montclair.steamboat',
        play_store_url = ''
    )
)
