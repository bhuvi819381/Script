#!/bin/bash

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check if Node.js and npm are installed
if ! command_exists node || ! command_exists npm; then
  echo "Node.js and npm are required. Please install them first."
  exit 1
fi

# Ask for the project name
read -p "Enter your project name: " PROJECT_NAME

# Create a new Vite project with React and TypeScript
echo "Creating a new Vite project with React and TypeScript..."
npm create vite@latest "$PROJECT_NAME" -- --template react-ts

# Navigate into the project directory
cd "$PROJECT_NAME" || exit

# Install dependencies
echo "Installing dependencies..."
npm install

# Install Tailwind CSS and its dependencies
echo "Installing Tailwind CSS and its dependencies..."
npm install tailwindcss @tailwindcss/vite


# Configure Tailwind CSS
echo "Configuring Tailwind CSS..."
cat > vite.config.ts <<EOL
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react(), tailwindcss()],
})

EOL

# Add Tailwind directives to the CSS file
echo "Adding Tailwind directives to the CSS file..."
cat > src/index.css <<EOL
@import "tailwindcss";
EOL

# Install Tailwind Prettier extension and adding the plugin
echo 'Install Tailwind Prettier extension and adding the plugin'
npm install -D prettier prettier-plugin-tailwindcss

echo 'Creating .prettierrc file...'
cat > .prettierrc <<EOL
{
  "plugins": ["prettier-plugin-tailwindcss"]
}
EOL


# Deleting redudant react.svg from assets
echo 'Deleting react.svg from assets'
cd assets
rm -f src/assets/react.svg

# Deleting default App.css since this is a tailwind-based project template...
echo 'Deleting default App.css since this is a tailwind-based project template...'
rm -f src/App.css 

# Replace the contents of App.tsx with a simple Tailwind-styled component
echo "Updating App.tsx with a Tailwind-styled component..."
cat > src/App.tsx <<EOL
function App() {
  return (
    <div className="flex items-center justify-center h-screen bg-gray-100">
      <h1 className="text-4xl font-bold text-blue-600">
        Hello, Tailwind CSS with React and TypeScript!
      </h1>
    </div>
  );
}

export default App;
EOL

# Run the development server
echo "Starting the development server..."
npm run dev
