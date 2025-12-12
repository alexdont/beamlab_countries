%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/", "test/"],
        excluded: [~r"/_build/", ~r"/deps/"]
      },
      strict: true,
      checks: %{
        disabled: [
          # Country struct has 32 fields by design (ISO 3166 data)
          {Credo.Check.Warning.StructFieldAmount, []}
        ]
      }
    }
  ]
}
