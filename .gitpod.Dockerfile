FROM gitpod/workspace-full

# Install nodejs
RUN brew install node

# Install yarn
RUN npm install -g yarn

# Install Python and Node.js
RUN sudo apt-get update && sudo apt-get install -y python3 python3-pip nodejs npm

# Install Python packages
RUN pip3 install pylint autopep8

# Install Node.js packages globally
RUN npm install -g eslint prettier

# Set up environment variables
ENV PORT 3000

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["yarn", "start"]
