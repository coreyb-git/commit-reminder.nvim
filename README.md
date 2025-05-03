On nvim startup produces a notification showing the last commit.

Lazy plugin:

```
return {
	"coreyb-git/commitreminder.nvim",
	dependencies = {
		"rcarriga/nvim-notify",
	},
	opts = {},
}
```
