# Netlogo Docker Image

This is an openjdk derived image containing [NetLogo](https://ccl.northwestern.edu/netlogo/) and [R](https://www.r-project.org) software. R is installed as an extension to NetLogo.
The entry point for this image is the NetLogo software running in headless mode (non GUI). This particular image is designed specifically for this use case, and probably can not be used for generic Netlogo tasks without modification. The entry point for this image is a shell script that calls the netlogo-headless.sh script. It also copies all files in the required mounted volume to working directory for NetLogo.
## Usage

Running the container for use in the Discovery Environment looks something like this:

    docker run --rm -v ./sample-data\:/de-app-work -w /de-app-work -it lisastillwell/netlogo-headless --model NagsHead_bayes_storm.nlogo  --experiment Nags_bayes --spreadsheet NagsModelOut.csv 

## Example Discovery Environment App Configuration
Available [here](https://github.com/ResearchSoftwareInstitute/roi-rade/blob/master/docs/ncsu-netlogo-task-image.png)
