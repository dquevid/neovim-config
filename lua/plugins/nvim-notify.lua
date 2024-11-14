return {
	"rcarriga/nvim-notify",
	config = function()
		vim.notify = require("notify")

        vim.notify.setup({
            background_colour = "#000000",
        })

		vim.keymap.set("n", "<leader>unc", function()
			require("notify").dismiss({ silent = true, pending = true })
		end, { desc = "Clear all notifications" })
	end,
}
