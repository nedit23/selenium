FROM maven:3.9.9-eclipse-temurin-17

# Install Chromium and its driver
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

ENV CHROME_BIN=/usr/bin/chromium

WORKDIR /app

# Copy Maven configuration
COPY pom.xml .

# Copy TestNG configuration and project files
COPY testng.xml .
COPY src ./src
COPY webpage ./webpage

# Run Selenium TestNG tests when the container starts
CMD ["mvn", "clean", "test"]
