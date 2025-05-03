On nvim startup produces a notification showing the last commit.

Lazy plugin:

```
return {
	"coreyb-git/commit-reminder.nvim",
	dependencies = {
		"rcarriga/nvim-notify",
	},
	opts = {},
}
```
