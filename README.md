# OptiTint-TintMeter  v1.0 (FreeRlease) 
![Lua](https://img.shields.io/badge/lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
![CSS](https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![HTML](https://img.shields.io/badge/html-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)


**Developed by BigglesDevelopment 💖**

A FiveM script that provides an in-game tint meter for checking car window tints.

## Features

- Checks the tint level of car windows and converts it to a percentage.
- Displays a user-friendly UI with the tint information.
- Notifies the player if they are not near a vehicle when trying to use the command.
- Includes an error notification with a sound alert for better user experience.

## Screenshots

![UI](/screenshots/Screenshot%202024-06-03%20201416.png)
![UI](/screenshots/Screenshot%202024-06-03%20201454.png)

## Installation

1. Clone the repository to your local machine:
    ```sh
    git clone https://github.com/BigglesDevs/OptiTint-TintMeter
    ```

2. Navigate to the `TintMeter` directory:
    ```sh
    cd OptiTint-TintMeter
    ```

3. Place the `OptiTint-TintMeter` folder into your FiveM resources directory:
    ```sh
    cp -r OptiTint-TintMeter /path/to/your/fivem/server/resources/
    ```

4. Add the resource to your `server.cfg`:
    ```sh
    ensure OptiTint-TintMeter
    ```

## Usage

1. Start your FiveM server.
2. In-game, use the `/checktint` command to check the tint level of the nearest vehicle's windows.

## Development

### Prerequisites

- [FiveM](https://fivem.net/) server setup.
- Basic knowledge of Lua and HTML/CSS/JavaScript.

### Adding New Features

1. Clone your fork to your local development environment.
2. Make your changes and test them thoroughly.
3. Push your changes to your fork and create a pull request.

### File Structure

- `client.lua` - Main client-side script for checking vehicle tint levels and sending data to NUI.
- `html/` - Contains all files related to the NUI (HTML, CSS, JavaScript, and fonts).
  - `index.html` - Main HTML file for the NUI.
  - `style.css` - Styling for the NUI.
  - `index.js` - JavaScript handling UI logic and messages from Lua.
  - `fonts/` - Contains the custom digital font used in the UI.
- `fxmanifest.lua` - Resource manifest file.

## Contributing

We welcome contributions! Please read the [CONTRIBUTING.md](path/to/CONTRIBUTING.md) file for guidelines on contributing to this project.

## License

This project is licensed under the MIT License. See the [LICENSE](path/to/LICENSE) file for more details.

## Acknowledgements

- FiveM community for the excellent platform.
- Inspiration from various FiveM scripts and resources.

# Contributors
[![Contributors](https://contrib.rocks/image?repo=BigglesDevs/OptiTint-TintMeter)](https://github.com/yourusername/yourrepository/graphs/contributors)
