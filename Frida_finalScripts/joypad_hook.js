'use strict';

const moduleName = "libcocos2dcpp.so";

const updateStepAddr = Module.findExportByName(
    moduleName,
    "_ZN6Joypad10updateStepEf"
);

const setMoveDirectionAddr = Module.findExportByName(
    moduleName,
    "_ZN6Joypad16setMoveDirectionE6cpVect"
);

if (updateStepAddr === null)
    throw new Error("updateStep not found");

if (setMoveDirectionAddr === null)
    throw new Error("setMoveDirection not found");

console.log("[+] updateStep      =", updateStepAddr);
console.log("[+] setMoveDirection=", setMoveDirectionAddr);

let joypad = null;

const setMoveDirection = new NativeFunction(
    setMoveDirectionAddr,
    'void',
    ['float', 'float', 'pointer']
);

Interceptor.attach(updateStepAddr, {
    onEnter(args) {

        if (joypad === null) {
            joypad = args[0];
            console.log("[+] Joypad =", joypad);

            // Move left once
            setMoveDirection(-1.0, 0.0, joypad);
        }
    }
});

rpc.exports = {

    left() {
        if (joypad)
            setMoveDirection(-1.0, 0.0, joypad);
    },

    right() {
        if (joypad)
            setMoveDirection(1.0, 0.0, joypad);
    },

    up() {
        if (joypad)
            setMoveDirection(0.0, 1.0, joypad);
    },

    down() {
        if (joypad)
            setMoveDirection(0.0, -1.0, joypad);
    },

    stop() {
        if (joypad)
            setMoveDirection(0.0, 0.0, joypad);
    }
};

console.log("[*] Waiting for Joypad...");