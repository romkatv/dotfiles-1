function prompt_conditional_newline() {
  # detect is newline needs to be added
  if git rev-parse --git-dir > /dev/null 2>&1; then
    # add newline into prompt
    p10k segment -t "\n"
  fi
}
