module.exports = {
  "env": {
    node: true,
    browser: true
  },

  parserOptions: {
    "ecmaVersion": 6 
  },

  "rules": {
    "eqeqeq": "error",
    "semi": ["error", 'always'],
    "comma-spacing": ["error"],
    "no-multi-spaces": ["error"],
    "no-inline-comments": ["error"],
    "no-multiple-empty-lines": ["error"],
    "no-unused-vars": ["warn"],
    "dot-notation": "error",
    "complexity": ["warn", 4],
    "max-depth": ["error", 4],
    "key-spacing": ["error"],
    "max-len": ["warn", { "code": 80 }],
    "no-negated-condition": "error",
    "no-unneeded-ternary": "error"
  }
};