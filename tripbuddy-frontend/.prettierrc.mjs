// .prettierrc.mjs
/** @type {import("prettier").Config} */
export default {
  plugins: ['prettier-plugin-astro'],
  overrides: [
    {
      files: '*.astro',
      options: {
        parser: 'astro'
      }
    }
  ],
  arrowParens: 'avoid',
  singleQuote: true,
  bracketSpacing: true,
  endOfLine: 'lf',
  semi: false,
  tabWidth: 2,
  trailingComma: 'none'
}
