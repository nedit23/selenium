
FROM maven:3.9.9-eclipse-temurin-17

# Install Chromium and ChromeDriver
RUN apt-get update && apt-get install -y \
    chromium \
    chromium-driver \
    && rm -rf /var/lib/apt/lists/*

# Configure Chrome
ENV CHROME_BIN=/usr/bin/chromium

# Set working directory
WORKDIR /app

# Copy project files
COPY pom.xml .
COPY testng.xml .
COPY src ./src
COPY webpage ./webpage

# Run Selenium TestNG tests
CMD ["mvn", "clean", "test"]
