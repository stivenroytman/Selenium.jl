using Conda

function conda_setup()
    Conda.add_channel("conda-forge")
    Conda.add("selenium")
end

function build()
    conda_setup()
end

build()
