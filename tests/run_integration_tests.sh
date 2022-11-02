#! /bin/zsh -y

oneTimeSetUp() {
  source ~/.zshrc
}

test_asdf_isInstalled() {
  result=`asdf --help`
  assertContains "${result}" "asdf plugin add"
}

test_gh_isInstalled() {
  result=`gh --help`
  assertContains "${result}" "gh <command>"
}

test_node_isInstalled() {
  result=`node --help`
  assertContains "${result}" "Usage: node [options]"
}

test_npm_isInstalled() {
  result=`npm --help`
  assertContains "${result}" "npm <command>"
}

test_yarn_isInstalled() {
  result=`yarn --help`
  assertContains "${result}" "Usage: yarn [command]"
}

test_python_isInstalled() {
  result=`python --help`
  assertContains "${result}" "usage:"
}

test_pipenv_isInstalled() {
  result=`pipenv --help`
  assertContains "${result}" "Usage: pipenv"
}

test_poetry_isInstalled() {
  result=`poetry --version`
  assertContains "${result}" "Poetry (version"
}

test_ruby_isInstalled() {
  result=`ruby --help`
  assertContains "${result}" "Usage: "
}

test_go_isInstalled() {
  result=`go help`
  assertContains "${result}" "go <command>"
}

test_java_isInstalled() {
  result=`java --help`
  assertContains "${result}" "Usage: java [options]"
}

test_gradle_isInstalled() {
  result=`gradle --help`
  assertContains "${result}" "USAGE: gradle [option...]"
}

test_mvn_isInstalled() {
  result=`mvn --help`
  assertContains "${result}" "usage: mvn [options]"
}

test_dotnet_isInstalled() {
  result=`dotnet --help`
  assertContains "${result}" "Usage: dotnet [runtime-options]"
}

test_pwsh_isInstalled() {
  result=`pwsh --help`
  assertContains "${result}" "Usage: pwsh"
}

test_terraform_isInstalled() {
  result=`terraform --help`
  assertContains "${result}" "Usage: terraform"
}

test_rustup_isInstalled() {
  result=`rustup --help`
  assertContains "${result}" "rustup [FLAGS]"
}

test_rustc_isInstalled() {
  result=`rustc --help`
  assertContains "${result}" "Usage: rustc [OPTIONS]"
}

test_cargo_isInstalled() {
  result=`cargo --help`
  assertContains "${result}" "cargo [+toolchain]"
}

test_awscli_isInstalled() {
  result=`aws --help`
  assertContains "${result}" "usage: aws"
}

# Install shUnit2 - from https://github.com/kward/shunit2
command -v shunit2 || {
  if ! command -v sudo &> /dev/null
  then
    curl -sLo /usr/local/bin/shunit2 https://raw.githubusercontent.com/kward/shunit2/master/shunit2
    chmod +x /usr/local/bin/shunit2
  else
    sudo curl -sLo /usr/local/bin/shunit2 https://raw.githubusercontent.com/kward/shunit2/master/shunit2
    sudo chmod +x /usr/local/bin/shunit2
  fi
}
SHUNIT_PARENT=$0

# Run the tests
source shunit2