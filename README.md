# goose-raylib

Experimental [raylib](https://www.raylib.com/) bindings for the [Goose programming language](https://github.com/aardappel/goose), allowing you to create games and graphical applications using Goose.

> [!WARNING]
> **Early development — expect bugs and breaking changes.**
>
> This project is incomplete and has received very limited testing. Future commits may introduce bugs, change APIs, or temporarily break functionality. It is not recommended for production use.

## Features

- Raylib bindings for Goose
- Native C/C++ interoperability
- Raylib automatically downloaded and built from source using CMake
- Basic window management, drawing, shapes, and colours
- Additional raylib functionality under development

## Requirements

- [Goose](https://github.com/aardappel/goose)
- CMake
- Ninja
- g++ (GCC)
- Git
- Linux development dependencies required by raylib

### Tested environment

| Component | Tested with |
|---|---|
| Operating system | Arch Linux |
| Compiler | g++ (GCC) |
| Build generator | Ninja |
| Build system | CMake |

Other operating systems, compilers, and build generators have **not been tested**.

## Installation

Clone the repository:

```bash
git clone https://github.com/MPALONDON/goose-raylib.git
```

For local development, place the package alongside your Goose project:

```text
Projects/
├── goose-raylib/
│   ├── CMakeLists.txt
│   ├── raylib.goose
│   ├── core.goose
│   ├── types.goose
│   └── src/
│       └── wrapper.cpp
│
└── my-game/
    └── main.goose
```

## Usage

Import the package using a relative path:

```goose
import raylib from "MPALONDON/goose-raylib@v1";
```

### Example

```goose
import raylib from "MPALONDON/goose-raylib@v1";

fn main() {
    init_window(800, 600, "Goose + raylib");

    while !window_should_close() {
        begin_drawing();

        clear_background(BLACK);
        draw_rectangle(50, 50, 100, 100, GREEN);

        end_drawing();
    }

    close_window();
}
```

Run the application:

```bash
goose run main.goose
```

The initial build may take longer because CMake needs to download and compile raylib.

## Building

The native component uses CMake and `FetchContent` to retrieve raylib from source.

To build the native library manually:

```bash
cmake -S . -B build -G Ninja
cmake --build build
```

A separate system-wide raylib installation is not required, although platform-specific development dependencies may still be necessary.

## Current limitations

- Many raylib functions remain unimplemented or untested.
- Some bindings may contain incorrect signatures or interoperability bugs.
- API stability is not guaranteed.
- Build behaviour may change between commits.
- Only g++ with Ninja on Arch Linux has been tested.

## Contributing

Bug reports, suggestions, and contributions are welcome.

Please remember that the project is in its early stages and may undergo significant changes.

## License

License information has not yet been added.
