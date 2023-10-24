# Generating Tiles

The `world-toner-tiles.qgz` is [QGis](https://qgis.org/en/site/)
project file that used the `MapTiler` plugin to generate a world map
using the `toner` style.

We then use the `processing -> Generate XYZ (MBTiles)` plugin, to
generate individual `.mbtiles` file for each zoom. 

The `steamboat.qgis` is a bash script that runs `qgis_process` to do
this. This can take several hours and the zoom level 18 will be
several gigs!

Then [mbutil](https://github.com/mapbox/mbutil.git) is used to
generate `.png` files from each `mbtiles` set.

The resulting tiles should end up in the format of `{x}/{y}/{z}.png`
and uploads to the `tiles/` subdirectory.
