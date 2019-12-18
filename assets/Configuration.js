/* -*- Mode: rjsx -*- */

/*******************************************
 * Copyright (2018)
 *  Marcus Dillavou <line72@line72.net>
 *  http://line72.net
 *
 * Montclair:
 *  https://github.com/line72/montclair
 *  https://montclair.line72.net
 *
 * Licensed Under the GPLv3
 *******************************************/

import RouteShoutParser from './RouteShoutParser';

class Configuration {
    constructor() {
        // Steamboat Sprints, CO
        this.center = [40.469178, -106.823354];
        this.agencies = [
            {
                name: 'Routes',
                parser: new RouteShoutParser('', '', 'https://steamboatspringstransit.routematch.com/')
            }
        ];
    }
}

export default Configuration;
