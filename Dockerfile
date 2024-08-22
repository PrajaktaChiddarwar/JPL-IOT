# Use the official Espressif IDF Docker image
FROM espressif/idf:latest

# Set up the working directory
WORKDIR /esp

# Copy the current directory contents into the container
COPY . /esp

# Set up the environment variables
ENV IDF_PATH=/opt/esp/idf


# Ensure the IDF is properly set up by running the export script
RUN /bin/bash -c ". $IDF_PATH/export.sh; idf.py --version"

# Default command to build the project
# CMD ["/bin/bash", "-c", ". $IDF_PATH/export.sh; idf.py build"]
CMD ["/bin/bash", "-c", ". $IDF_PATH/export.sh; idf.py build"]