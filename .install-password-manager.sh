#!/bin/bash
type ks >/dev/null 2>&1 && exit
# exit immediately if password-manager-binary is already in $PATH
brew tap loteoo/formulas
brew reinstall ks
