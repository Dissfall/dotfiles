return {
  { "nvim-neotest/neotest-jest" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = { "neotest-jest" },
      log_level = vim.log.levels.DEBUG,
      discovery = {
        filter_dir = function(name, rel_path, root)
          return name ~= "dist"
        end,
      },
    },
  },
}
