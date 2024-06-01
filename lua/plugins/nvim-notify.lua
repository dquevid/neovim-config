return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")
		vim.keymap.set("n", "<leader>nc", function()
			require("notify").dismiss({ silent = true, pending = true })
		end, { desc = "Clear all notifications" })
	end,
}
