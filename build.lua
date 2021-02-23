#!/usr/bin/env texlua

module = "xelatexja"

maindir = "."
-- docfiledir = "."
-- sourcefiledir = "."
-- supportdir = maindir .. "/support"
-- testfiledir = "./testfiles"
-- testsuppdir = testfiledir .. "/support"
-- texmfdir = maindir .. "/texmf"
-- textfiledir = "."

tdsroot = "xelatex"

textfiles = {"README.md", "LICENSE"}
sourcefiles = {"*.dtx", "*.ins", "*-????-??-??.sty", "bxjsja-xelatexja.def"}
typesetfiles = {
  module .. ".dtx",
  "example-yoko.tex",
  "example-tate.tex",
  "example-bxjs.tex",
}

checkengines = {"xetex"}
stdengine    = "xetex"
checkformat  = "latex"

typesetexe = "xelatex"
unpackexe  = "xetex"

-- Backwards compatibility
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end
