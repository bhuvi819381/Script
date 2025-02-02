# React + TypeScript + Tailwind CSS Setup Script

This script automates the creation of a new React project with TypeScript, and installs and configures Tailwind CSS v4 with a simple setup, including a pre-configured `App.tsx` to get started quickly.

## Features

- **React + TypeScript**: Sets up a new Vite project with React and TypeScript.
- **Tailwind CSS**: Installs and configures Tailwind CSS for modern styling.
- **Pre-configured App**: Adds a simple Tailwind-styled component to `App.tsx` to start building your UI.
- **Minimal Setup**: Removes unnecessary files like `App.css` and the `react.svg` image, leaving only the essentials.

## Requirements

- **Node.js** and **npm** must be installed. If they aren't installed, the script will exit and notify you.

## Installation & Usage

1. Clone this repository or download the script to your local machine.
2. Open a terminal in the directory where the script is located.
3. Give excutable permisson by giving

````
chmod +x setup-react-ts-tailwind.sh

4. Run the script:
   ```bash
   ./setup-react-ts-tailwind.sh
````

5. The script will prompt you for the project name. Enter your desired project name (e.g., my-app).

6. The script will:

- Create a new Vite project with React and TypeScript.
- Install dependencies, including Tailwind CSS.
- Configure Tailwind CSS and remove unnecessary files.
- Replace App.tsx with a simple Tailwind-based component.
- Start the development server.

7. Once the script completes, open http://localhost:5174/ in your browser and start coding!

## Example Output

After running the script and starting the dev server, your App.tsx will display a centered message with Tailwind CSS styling:

```
Hello, Tailwind CSS with React and TypeScript!
```

## Author & Co-Author

- **Author**: [Your Name](https://github.com/bhuvi819381)
  - Twitter: [@bhuvi819381](https://x.com/bhuvi819381)
  - LinkedIn: [Your LinkedIn](https://www.linkedin.com/in/bhuvi819381/)
- **Co-Author**: [Nishanth Venkatesan](https://github.com/nishanth1596)
  - Twitter: [@nishanth1596](https://x.com/nishanth1596)
  - LinkedIn: [LinkedIn](https://www.linkedin.com/in/nishanth-venkatesan-279b7a107/)

## License

This project is open source and available under the MIT License.
