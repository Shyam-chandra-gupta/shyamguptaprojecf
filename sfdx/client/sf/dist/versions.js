"use strict";
/*
 * Copyright (c) 2022, salesforce.com, inc.
 * All rights reserved.
 * Licensed under the BSD 3-Clause license.
 * For full license text, see LICENSE.txt file in the repo root or https://opensource.org/licenses/BSD-3-Clause
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.checkNodeVersion = exports.isVersion = void 0;
const semver = require("semver");
// eslint-disable-next-line @typescript-eslint/no-var-requires
const pjson = require('../package.json');
/**
 * Determines whether or not a tag string is a semantic version.
 *
 * @param {*} tag The possible version string
 * @returns {boolean} True, if the string is recognized as a semantic version
 */
function isVersion(tag) {
    if (!tag) {
        return false;
    }
    return !!semver.valid(tag) || false;
}
exports.isVersion = isVersion;
// eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
module.exports.isVersion = isVersion;
/**
 * Checks the current Node version for compatibility before launching the CLI.
 */
function checkNodeVersion(preferThrow = false, currentVersion = process.versions.node, requiredVersion = pjson.engines.node.slice(2)) {
    if (semver.compare(currentVersion, requiredVersion) < 0) {
        const message = `Unsupported Node.js version ${currentVersion}, version ${requiredVersion} or later is required.`;
        if (!preferThrow) {
            // eslint-disable-next-line no-console
            console.error(message);
            process.exit(1);
        }
        else {
            throw new Error(message);
        }
    }
}
exports.checkNodeVersion = checkNodeVersion;
// eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
module.exports.checkNodeVersion = checkNodeVersion;
//# sourceMappingURL=versions.js.map