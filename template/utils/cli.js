const meow = require('meow');
const chalk = require('chalk');
const green = chalk.green;
const yellow = chalk.yellow;
const cyan = chalk.cyan;
const dim = chalk.dim;

module.exports = meow(
	`
	Usage
	  ${green(`{{name}}`)} ${cyan(`<command>`)} ${yellow(`[--option]`)}

	Commands
	  ${cyan(`command`)}         Description

	Options
	  ${yellow(`--option`)}, ${yellow(`-o`)}         Description

	Examples
	  ${green(`{{name}}`)} ${cyan(`command`)}
	  ${green(`{{name}}`)} ${yellow(`--sort`)}

	❯ You can also run command + option at once:
	  ${green(`{{name}}`)} ${cyan(`command`)} ${yellow(`-x`)}
`,
	{
		booleanDefault: undefined,
		hardRejection: false,
		inferType: false,
		flags: {
			option: {
				type: 'boolean',
				default: false,
				alias: 'o'
			}
		}
	}
);
