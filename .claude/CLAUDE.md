# About me

- Primarily a C++ developer writing backend/systems code that commands and
  interfaces with real hardware (motors, heaters, sensors). Be conservative
  with changes to control logic, timing, and safety interlocks — flag
  uncertainty rather than guessing when the physical behavior of a change
  isn't obvious from the code alone.
- Development machine: Linux (Pop!_OS 24.04), targeting Linux x86 and Yocto
  embedded systems.
- All projects are git repositories.

# Project stack

- Dependency management via Nix (`flake.nix` + `default.nix` per project).
- Environment activation via direnv: a `.envrc` at the project root puts the
  project's toolchain and variables on PATH. `flake.nix` may also define
  other environment variables a project needs (e.g. log/data paths).
- Build system: CMake + Ninja, incremental builds from a `build/` directory
  at the project root.

# C++ style guide

Supplements, doesn't replace, project-level `.clang-format` rules.

- `#pragma once` over header guards.
- Smart pointers over raw pointers.
- `auto` is acceptable but should be minimized.
- Indentation: 4 spaces.
- Bracket placement: Allman style.
- Naming:
  - Local variables: `camelCase`
  - Global variables: `UPPER_CASE`
  - Constants: `UPPER_CASE`
  - Functions: `PascalCase`
  - Function arguments: `PascalCase`
  - Types/classes: `PascalCase`
- Pointer/reference symbol binds to the type, not the variable:
  `std::string& StringName`, not `std::string &StringName`.
- Minimize namespace usage and avoid anonymous namespaces — prefer private
  class member functions instead.
- Common function pattern: return `std::error_code`, and pass values that
  are needed or may change by reference as parameters. This is a guideline,
  not a hard rule — exceptions are normal. The success error code is `eOk`.

# Build / verification workflow

- To run a command with a project's environment from outside the project
  directory, use `direnv exec <project-dir> <command>`.
- Configure/build with CMake + Ninja using a `build/` directory at the
  project root — this is the default loop for verifying edits.
- Always ask before running any Nix step (`nix build`, `nix develop`,
  first-time environment bootstrap, etc.). Prefer incremental cmake/ninja
  rebuilds by default; treat Nix invocations as needing confirmation, not
  routine.

# Planning file convention

For design/plan docs written during work (distinct from the built-in
`~/.claude/plans/` plan-mode file):

- Root planning directory:
  `/home/cburke/Vault/3-RESOURCES/VDSG/Vault-Tech-Logs/1-PROJECTS`
- Use a subdirectory matching the project name under
  `/home/cburke/Vault/1-PROJECTS/<Project>` (e.g. planning for EAPP goes in
  `.../1-PROJECTS/EAPP`).
- If working outside any directory listed under `/home/cburke/Vault/1-PROJECTS`,
  use `.../1-PROJECTS/Other`.
- Create the project-specific planning subdirectory if it doesn't already
  exist.
- Branch naming convention is `KEY-number-description` (e.g.
  `EAPP-206-update-mechanism`).
- When the active git branch has a `KEY-number`, name the planning file
  `KEY-number-ClaudePlan-Description.md` (Description in PascalCase, brief).
- If the branch has no `KEY-number` (or there's no active branch), omit
  that prefix: `ClaudePlan-Description.md`.
