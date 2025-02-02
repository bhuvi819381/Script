# React + TypeScript + Tailwind CSS Setup Script

This script automates the setup of a new React project using Vite with TypeScript and Tailwind CSS v4. It streamlines the configuration process, ensuring a minimal and efficient project structure to help you start coding immediately.

## Features

- **React + TypeScript**: Initializes a Vite project with React and TypeScript.
- **Tailwind CSS v4**: Installs and configures Tailwind CSS.
- **Optimized Setup**: Cleans up unnecessary files (`App.css`, `react.svg`), keeping the project lightweight.
- **Pre-configured App**: Replaces `App.tsx` with a simple, styled component using Tailwind CSS.
- **Automated Development Environment**: Opens VS Code and starts the development server in its terminal.

## Prerequisites

Ensure the following are installed before running the script:

- [Node.js](https://nodejs.org/) (LTS recommended)
- [git](https://git-scm.com/downloads) (for git bash)

## Installation & Usage

### Quick Installation

1. Open Git Bash.
2. Navigate to the folder where you want to install the project using:
   ```bash
   cd /path/to/your/folder
   ```
3. Run the following command to set up the project:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/bhuvi819381/Script/refs/heads/main/install.sh)
   ```

To quickly set up the project, run the following command:

Alternatively, you can manually execute the script:

1. Clone this repository or download the script.
2. Open gitbash or vscode in the directory where the script is located.
3. Grant execute permission:

   ```bash
   chmod +x install.sh
   ```

4. Run the script:

   ```bash
   ./install.sh
   ```

5. Enter the desired project name when prompted (e.g., `my-app`).
6. The script will perform the following steps:
   - Create a new Vite project with React and TypeScript.
   - Install Tailwind CSS and its dependencies.
   - Configure Tailwind CSS.
   - Remove unnecessary files for a cleaner setup.
   - Replace `App.tsx` with a pre-configured Tailwind-styled component.
   - Open VS Code and start the development server.

7. Once completed, open [http://localhost:5173/](http://localhost:5173/) in your browser to see the default Tailwind-styled app.

## Expected Output

After running the script, `App.tsx` will display a simple, centered message using Tailwind CSS:

```tsx
export default function App() {
  return (
    <div className="flex h-screen items-center justify-center bg-gray-100 text-2xl font-semibold">
      Hello, Tailwind CSS with React and TypeScript!
    </div>
  );
}
```

## Authors

- **Bhuvnesh Upadhyay**  
  - GitHub: [bhuvi819381](https://github.com/bhuvi819381)  
  - Twitter (X): [@bhuvi819381](https://x.com/bhuvi819381)  
  - LinkedIn: [bhuvi819381](https://www.linkedin.com/in/bhuvi819381/)

- **Nishanth Venkatesan**  
  - GitHub: [nishanth1596](https://github.com/nishanth1596)  
  - Twitter (X): [@nishanth1596](https://x.com/nishanth1596)  
  - LinkedIn: [Nishanth Venkatesan](https://www.linkedin.com/in/nishanth-venkatesan-279b7a107/)

## License

This project is licensed under the [MIT License](LICENSE), granting you the freedom to use, modify, and distribute it as needed.

