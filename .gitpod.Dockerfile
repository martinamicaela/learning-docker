FROM gitpod/workspace-full

# Install nodejs
RUN brew install node

# Install yarn
RUN npm install -g yarn

# Set up environment variables
ENV PORT 3000

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["yarn", "start"]
