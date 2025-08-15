return {
  "yetone/avante.nvim",
  opts = {
    -- add any opts here
    -- for example
    provider = "deepseek",
    -- provider = "deepseek",
    auto_suggestions_provider = "qianwen",
    providers = {
      deepseek = {
        __inherited_from = "openai",
        api_key_name = "DEEPSEEK_API_KEY",
        endpoint = "https://api.deepseek.com",
        model = "deepseek-coder",
        max_tokens = 8192,
      },
      qianwen = {
        __inherited_from = "openai",
        api_key_name = "DASHSCOPE_API_KEY",
        endpoint = "https://dashscope.aliyuncs.com/compatible-mode/v1",
        model = "qwen3-coder-plus",
        max_tokens = 8192,
      },
    },
  },
}
