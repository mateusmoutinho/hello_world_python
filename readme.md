# Hello Python -- PushBlind Package Documentation

## Overview

**hello_python** is a PushBlind package that installs and runs a Python
script from a GitHub repository.\
The package supports four main actions:

-   `install`
-   `update`
-   `remove`
-   `run`

This allows you to deploy the script on any machine with PushBlind
installed.

------------------------------------------------------------------------

## Installation Workflow

### 1. Add the package

``` bash
pushblind add https://github.com/mateusmoutinho/hello_world_python.git package.lua --name hello_python
```

### 2. Install the package

``` bash
pushblind install hello_python
```

During installation, the package: - Downloads a Python script from
GitHub using `curl` - Moves it to `/usr/bin/meu_script` - Sets
executable permissions

------------------------------------------------------------------------

## Usage

### Run the script

``` bash
pushblind run hello_python
```

### Update the script

``` bash
pushblind update hello_python
```

### Remove the script

``` bash
pushblind remove hello_python
```

------------------------------------------------------------------------

## How It Works Internally

### install()

Downloads the Python script and installs it into `/usr/bin/` with
execution permissions.

### update()

Re-downloads the script and replaces the existing one.

### remove()

Deletes the installed script from the system.

### run()

Executes the script using the system's Python interpreter.

------------------------------------------------------------------------

## Requirements

-   Linux system
-   Python 3 installed
-   PushBlind installed
-   `curl` and `sudo` available

------------------------------------------------------------------------

## Repository Structure

    hello_world_python/
     ├─ hello.py
     └─ package.lua

------------------------------------------------------------------------

## Notes

-   The script URL must match the real GitHub path.
-   Ensure the user has permission to run `sudo mv` and `sudo rm`.

------------------------------------------------------------------------

## License

MIT License
