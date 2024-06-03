# TintMeter

**Developed by BigglesDevelopment 💖**

A FiveM script that provides an in-game tint meter for checking car window tints.

## Features

- Checks the tint level of car windows and converts it to a percentage.
- Displays a user-friendly UI with the tint information.
- Notifies the player if they are not near a vehicle when trying to use the command.
- Includes an error notification with a sound alert for better user experience.

## Screenshots

![UI](path/to/your/screenshot1.png)
![Error Notification](path/to/your/screenshot2.png)

## Installation

1. Clone the repository to your local machine:
    ```sh
    git clone https://github.com/yourusername/TintMeter.git
    ```

2. Navigate to the `TintMeter` directory:
    ```sh
    cd TintMeter
    ```

3. Place the `TintMeter` folder into your FiveM resources directory:
    ```sh
    cp -r TintMeter /path/to/your/fivem/server/resources/
    ```

4. Add the resource to your `server.cfg`:
    ```sh
    ensure TintMeter
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
