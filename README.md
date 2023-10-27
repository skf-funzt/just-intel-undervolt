# Intel Undervolt Configuration Project

This project provides a tool to manage intel-undervolt configurations.

## Features

- Check if a configuration file exists for a given value
- If the file does not exist, create it and use it
- List all available configurations

## Commands

The project includes several commands to manage Intel undervolt configurations:

- `default`: Choose a default configuration.
- `apply`: Apply the undervolting settings.
- `set value`: Set a specific value for undervolting and apply it. If a configuration file for the value does not exist, it creates one and uses it.
- `new value`: Create a new configuration file with a specific value.
- `list`: List all available configurations.

### Usage

- To set a specific value for undervolting and apply it:
  
  ```zsh
  just set your_value && apply
  ```
  
  Replace `your_value` with the value you want to set for undervolting.

- To create a new configuration file with a specific value:
  
  ```zsh
  just new your_value
  ```
  
  Replace `your_value` with the value you want to use for the new configuration.

- To list all available configurations:
  
  ```zsh
  just list
  ```
  
## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)
See: [LICENSE](LICENSE)
