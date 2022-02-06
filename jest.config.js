/** @format */

module.exports = {
  preset: "jest-preset-preact",
  setupFiles: [
    "<rootDir>/tests/__mocks__/browserMocks.ts",
    "<rootDir>/tests/__mocks__/setupTests.ts",
    "<rootDir>/tests/__mocks__/fileMocks.ts",
  ],
};
