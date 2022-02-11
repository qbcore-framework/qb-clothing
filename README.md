# qb-clothing
Clothing for QB-Core Framework :dress:

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)

## Screenshots
![Character Section](https://imgur.com/lqJ0QCV.png)
![Features Section](https://imgur.com/8Ipc1ej.png)
![Accessories Section](https://imgur.com/t7zMlve.png)
![Upper Body Camera Angle](https://imgur.com/hwaqJul.png)
![Body Camera Angle](https://imgur.com/4vrH3jQ.png)
![Lower Body Camera Angle](https://imgur.com/IPqymXf.png)

## Features
- Configurable Ped Selection
- Detailed nose, chin, jaw, cheek etc. configuration
- Camera Rotating
- 3 Different Camera Angles
- Clothing Stores
- Barbers
- Job Locker Rooms (Configurable Outfit Presets)
- Saveable Outfits
- /hat, /glasses, /mask (See the commands section below)

### Commands
- /skin (Admin Only) - Opens the clothing menu
- /hat - Toggles the hat on/off
- /mask - Toggles the hmaskat on/off
- /glasses - Toggles the glasses on/off

## Installation
### Manual
- Download the script and put it in the `[qb]` directory.
- Import `qb-clothing.sql` in your database
- Add the following code to your server.cfg/resouces.cfg
```
ensure qb-core
ensure qb-clothing
```

## Configuration
Please see config.lua
