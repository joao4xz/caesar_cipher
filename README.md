# Caesar Cipher

## Description
This project is part of The Odin Project curriculum. It implements a method called caesar_cipher that takes a string and a shift factor as arguments. It returns the encrypted string where each letter is shifted by the specified factor, maintaining the same case and ignoring non-alphabetic characters.

## Usage

```ruby
Example usage
caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
caesar_cipher("Hello, World!", 3)
=> "Khoor, Zruog!"
```

## Prerequisites
- Ruby installed on your system
- Bundler gem installed (`gem install bundler`)

## Required Gems
- rubocop (~> 1.64)
- rspec (for testing)

## Installation
1. Clone this repository
    ```bash
    git clone https://github.com/joao4xz/caesar_cipher.git
    ```
2. Navigate to the project directory
    ```bash
    cd caesar_cipher
    ```
3. Install dependencies
    ```bash
    bundle install
    ```
4. Run the script:
    ```bash
    bundle exec ruby app.rb
    ```