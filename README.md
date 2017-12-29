# Setup a geospatial environment with Docker, Python and PostgreSQL
These are supporting file for the Medium article "A working environment for Geospatial analysis with Docker, Python and PostgreSQL".   

The article is a short version of my search for a working environment for storing, processing and visualise geospatial data. It involves a *PostgreSQL* server running locally, a *Docker* image with *GDAL* and with *Python3* used as interpreter in *PyCharm Professional*, a local installation of *QGIS* (not necessary).   

The point is to use Docker to install all the libraries that can be tricky to setup. It is specific to geospatial analysis but it can be modified for any data science environment.    

My usual workflow involves fetching geospatial data from a local PostgreSQL database, manipulate and analyse it in Python using PyCharm Professional, write back some results to PostgreSQL and visualise the data with QGIS. I sometimes need to perform some graph analysis and graph-tool is a powerful and fast tool.    

`graph-tool` comes as a Python package, but is more like a Python wrapper for a C library. It can be quite a headache to install and pretty much impossible to install it in a virtual environment.    

GDAL (Geospatial Data Abstraction Library) is a translator library for raster and vector geospatial data formats. It is an essential tool in the toolbox of the proficient geo-analyst. It is also notoriously painful to setup.
Please, follow the article to be able to use the files.

Thank you!
