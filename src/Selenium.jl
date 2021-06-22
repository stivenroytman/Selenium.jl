module Selenium

using PyCall

"Sets up the Python selenium module."
function __init__()
    py"""
    import selenium.webdriver as webdriver
    """
    global webdriver = py"webdriver"
end

"Spawns a graphical Firefox browser controlled by Selenium."
function spawn()
    driver = webdriver.Firefox()
    return driver
end

"Spawns a headless Firefox browser controlled by Selenium."
function spawn_headless()
    opts = webdriver.FirefoxOptions()
    opts.set_headless()
    driver = webdriver.Firefox(firefox_options=opts)
    return driver
end

export spawn, spawn_headless

end
