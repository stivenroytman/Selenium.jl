module Selenium

using PyCall

"Sets up the Python selenium module."
function __init__()
    py"""
    import selenium.webdriver as webdriver
    """
    global webdriver = py"webdriver"
end

"Spawns a Firefox browser controlled by Selenium."
function spawn_driver(;timewait::Int=0, headless::Bool=false)
    opts = headless && begin
        opts = webdriver.FirefoxOptions()
        opts.set_headless()
	opts
    end
    if opts != false
        driver = webdriver.Firefox(firefox_options=opts)
    else
        driver = webdriver.Firefox()
    end
    if timewait > 0
	    driver.implicitly_wait(timewait)
    end
    return driver
end

export spawn_driver

end
