# Octave Docker Image

This is an Ubuntu derived image containing [GNU Octave](https://www.gnu.org/software/octave/)
software.
The Octave syntax is largely compatible with Matlab. The entry point for this image is the Octave interpreter in silent mode.
## Usage

Running the container without any arguments will start an interactive command-line prompt:

    docker run lisastillwell/octave-storms

All arguments passed to the image are passed as options to octave i.e. the
following is will print a short help message.

    docker run lisastillwell/octave-storms -h

You will most likely want to work with data on the host system from within the
docker container, in which case run the container with the `-v` somethink like this:

    docker run -it --rm -v $(pwd)/storm-data:/storm-data lisastillwell/octave-storms storm_impact_read.m

The octave/matlab script is responsible for any interaction with the Octave interpreter and reading files from, or writing to, the mounted volume.

### Example Discovery Environment App Configuration
Available [here](https://github.com/ResearchSoftwareInstitute/roi-rade/blob/master/docs/ncsu-octave-task-image.png)

