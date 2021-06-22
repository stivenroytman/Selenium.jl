# Selenium.jl

## System Dependencies

1. Firefox
2. Geckodriver

## Installation

``` julia
using Pkg
Pkg.add(url="https://github.com/stivenroytman/Selenium.git")
```

## Usage

``` julia
using Selenium

# Spawn graphical driver that waits 3 seconds for the page to load.
driver = spawn_driver(;timewait=3)

# Spawn headless driver that doesn't wait for the page to load.
h_driver = spawn_driver(;headless=true)

```

After initializing the driver, you should be able to use all the same methods in Julia as you normally would in Python.
