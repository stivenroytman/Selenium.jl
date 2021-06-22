# Selenium

## System Dependencies

1. Firefox
2. Geckodriver

## Installation

``` julia
using Pkg
Pkg.add("https://github.com/stivenroytman/Selenium.git")
```

## Usage

``` julia
using Selenium

# Spawn graphical driver
driver = spawn()

# Spawn headless driver
h_driver = spawn_headless()

```

You can use both driver objects in roughly the same way as you would in Python.
