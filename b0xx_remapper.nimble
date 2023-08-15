# Package

version       = "0.1.0"
author        = "Avahe Kellenberger"
description   = "A new awesome nimble package"
license       = "GPL-2.0-only"
srcDir        = "src"
bin           = @["b0xx_remapper"]


# Dependencies

requires "nim >= 2.0.0"
requires "nigui >= 0.2.7"

task runr, "Runs the program":
  exec "nim -d:release r src/b0xx_remapper.nim"

task rund, "Runs the program in debug mode":
  exec "nim -d:debug r src/b0xx_remapper.nim"

task release, "Builds the program":
  exec "nim c -d:release -o:bin/b0xx_remapper src/b0xx_remapper.nim"

