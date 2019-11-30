// ECMAScript target versions
es3 = "ES3"
es5 = "ES5"
es6 = "ES6"
es2015 = "ES2015"
es2016 = "ES2016"
es2017 = "ES2017"
es2018 = "ES2018"
es2019 = "ES2019"
es2020 = "ES2020"
esnext = "ESNext"

// Module code generation
none = "None"
commonjs = "CommonJS"
amd = "AMD"
system = "System"
umd = "UMD"


compilerOptions: close({
  // Allow JavaScript files to be compiled.
  allowJs: true | *false

  // Emit __importStar and __importDefault helpers
  // for runtime babel ecosystem compatibility
  // and enable --allowSyntheticDefaultImports for typesystem compatiblity
  esModuleInterop: true | *false

  // Allow accessing UMD globals from modules.
  allowUmdGlobalAccess: true | *false

  // Do not report errors on unreachable code.
  allowUnreachableCode: true | *false

  // Do not report errors on unused labels.
  allowUnusedLabels: true | *false

  // Parse in strict mode and emit "use strict" for each source file
  alwaysStrict: true | *false

  // Base directory to resolve non-relative module names.
  baseUrl?: string

  // Builds this project and all of its dependencies specified by Project References.
  build: true | *false

  // The character set of the input files.
  charset: string | *"utf8"

  // Report errors in .js files. Use in conjunction with --allowJs.
  if allowJs == true {
    checkJs: true | *false
  }

  // Ensure TypeScript can determine where to find the outputs of
  // the referenced project to compile project.
  composite: *true | false

  // Generates corresponding .d.ts file.
  declaration: true | *false

  // Output directory for generated declaration files.
  declarationDir?: string

  // Generates a sourcemap for each corresponding .d.ts file.
  declarationMap: true | *false

  // Show diagnostic information.
  diagnostics: true | *false

  // Disable size limitation on JavaScript project.
  disableSizeLimit: true | *false

  // Emit a UTF-8 Byte Order Mark (BOM) in the beginning of output files.
  emitBOM: true | *false

  // Only emit .d.ts declaration files.
  emitDeclarationOnly: true | *false

  // Emit design-type metadata for decorated declarations in source.
  emitDecoratorMetadata: true | *false

  // Enables experimental support for ES decorators.
  experimentalDecorators: true | *false

  // Show verbose diagnostic information
  extendedDiagnostics: true | *false

  // Disallow inconsistently-cased references to the same file.
  forceConsistentCasingInFileNames: true | *false

  // Generates a cpu profile at the given path.
  // Passing an existing directory name instead of
  // a file path will cause a timestamp-named profile
  // to be generated in that directory instead.
  generateCpuProfile: string | *"profile.cpuprofile"

  // The locale to use to show error messages, e.g. en-us.
  locale: "en" | "cs" | "de" | "es" | "fr" | "it" | "ja" | "ko" | "pl" | "pt-BR" | "ru" | "tr" | "zh-CN" | "zh-TW"

  // Specify ECMAScript target version
  target: *es3 | es5 | es6 | es2015 | es2016 | es2017 | es2018 | es2019 | es2020 | esnext

  // Provide full support for iterables in for..of, spread and destructuring.
  if target == es3 || target == es5 {
    downlevelIteration: true | *false
  }

  // Specify module code generation
  module: string
  if target == es3 || target == es5 {
    module: none | *commonjs | amd | system | umd | es6 | es2015 | esnext
  }
  if target != es3 && target != es5 {
    module: none | commonjs | amd | system | umd | *es6 | es2015 | esnext
  }

  // Allow default imports from modules with no default export.
  // This does not affect code emit, just typechecking.
  if esModuleInterop == true || module == system {
    allowSyntheticDefaultImports: *true | false
  }
  if esModuleInterop != true && module != system {
    allowSyntheticDefaultImports: true | *false
  }
})
