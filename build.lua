#!/usr/bin/env texlua

-- The name of the module
module = "xelatexja"

-- Directories
maindir = "."
-- docfiledir = "."
-- sourcefiledir = "."
-- supportdir = maindir .. "/support"
-- testfiledir = "./testfiles"
-- testsuppdir = testfiledir .. "/support"
-- texmfdir = maindir .. "/texmf"
-- textfiledir = "."

-- Root directory of the TDS structure for the bundle/module to be installed into
tdsroot = "xelatex"

-- Files
installfiles = {
  "xelatexja.sty",
  "xltjext.sty",
  "*.cls",
  "*.clo",
  "xltjfm-standard.def",
  "bxjsja-xelatexja.def",
}
sourcefiles = {
  "xelatexja.dtx",
  "xelatexja.ins",
  "xltjltxdoc.dtx",
  "xltjltxdoc.ins",
  "xltjclasses.dtx",
  "xltjclasses.ins",
  "xltjsclasses.dtx",
  "xltjsclasses.ins",
}
textfiles = {
  "README.md",
  "LICENSE",
}
typesetfiles = {
  "xelatexja-doc.tex",
  "xelatexja-code.tex",
  "xltjltxdoc.dtx",
  "xltjclasses.dtx",
  "xltjsclasses.dtx",
  "example-yoko.tex",
  "example-tate.tex",
  "example-js.tex",
  "example-bxjs.tex",
}

-- Check
checkengines = {"xetex"}
stdengine    = "xetex"
-- checkformat  = "latex"

-- Executable
typesetexe = "xelatex"
unpackexe  = "xetex"

-- Backwards compatibility
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end
