using DemoPackages
using Documenter

DocMeta.setdocmeta!(DemoPackages, :DocTestSetup, :(using DemoPackages); recursive=true)

makedocs(;
    modules=[DemoPackages],
    authors="Rex Wang",
    repo="https://github.com/RexWzh/DemoPackages.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackages.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://RexWzh.github.io/DemoPackages.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RexWzh/DemoPackages.jl",
    devbranch="main",
)
