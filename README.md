# hxsfml
Haxe externs and wrappers for SFML.

It is recommended that you use Haxe 3.2.1 with the latest git version of hxcpp to build. This library does not compile successfully with the newest version of Haxe.

The `*.dll` files have been included inside the `ext` folder now, so if you are building dynamically, you can copy and paste the files that match your version of the MSVC compiler into the bin folder.

## Getting Started
In order to use this library, you will need to first download the corresponding *.lib and *.dll (for Windows) from the official SFML website, found [here](http://www.sfml-dev.org/download/sfml/2.3.2/). For Windows users, you will need to download for the compiler you have installed. If in doubt, download the 32-bit version.

Once downloaded, you will need to copy the *.lib files into a new folder `lib/` in the root of the repository.

Depending on your circumstances will depend on whether or not you need to modify Build.xml to suit your needs. For dynamic builds, you only need to copy the appropriate lib files into the directory.

To debug, you will need to add the following line into the Build.xml file underneath `<haxe id="files">`:

    <flag value="-debug" />

If you do use this option, you will need to copy the appropriate *.lib files with the `-d` suffix.

For statically linking, you will need to include all .lib files, as well as the appropriate dependencies along with them. See the following [tutorial](http://www.sfml-dev.org/tutorials/2.3/start-vc.php) for static building.

If you get compile errors, it is likely you are using the incorrect version of the .lib files with the compiler you use.

### Building
When you build with dynamic linking, you will also need the appropriate *.dll files in the `bin` directory of the application to use it, otherwise it will crash.

## Tests
The `tests` folder includes sample code for testing purposes. You can use these as guidelines for when you build your own games. The code follows almost exactly the same principles as found in SFML, so if you need tutorials, you can follow C++ ones and migrate easily.
