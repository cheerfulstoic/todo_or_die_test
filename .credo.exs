%{
  configs: [
    %{
      name: "default",
      requires: ["./lib/checks/**/*.ex", "./lib/todo_or_die/**/*.ex"],
      checks: [
        {CredoTodoOrDie.Check, timezone: "Europe/Stockholm"}
      ]
    }
  ]
}
