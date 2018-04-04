"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
    // Unbind C-t so that NERDTree works
    oni.input.unbind("<c-t>");
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    //add custom config here, such as
    "ui.colorscheme": "onedark",
    "tabs.mode": "buffers",
    "oni.useDefaultConfig": false,
    //"oni.bookmarks": ["~/Documents"],
    "oni.loadInitVim": "~/.config/oni/init.vim",
    "editor.fontSize": "16px",
    "editor.fontFamily": "Roboto Mono for Powerline",
    "sidebar.enabled": false,
    "autoClosingPairs.enabled": false,
    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
    "language.python.languageServer.command": ""
};
