/** @format */

module.exports = {
  preset: "jest-preset-preact",
  testEnvironment: "node",
  roots: ["<rootDir>/src"],
  setupFiles: [
    "<rootDir>/tests/__mocks__/browserMocks.ts",
    "<rootDir>/tests/__mocks__/setupTests.ts",
  ],
  testMatch: [
    "**/__tests__/**/*.+(ts|tsx|js)",
    "**/?(*.)+(spec|test).+(ts|tsx|js)",
  ],
  transform: {
    "^.+\\.(ts|tsx)$": "ts-jest",
  },
};
