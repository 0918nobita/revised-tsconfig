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


compilerOptions: {
  // Allow JavaScript files to be compiled.
  allowJs: true | *false

  // Emit __importStar and __importDefault helpers
  // for runtime babel ecosystem compatibility
  // and enable --allowSyntheticDefaultImports for typesystem compatiblity
  esModuleInterop: true | *false

  // Specify ECMAScript target version
  target: *es3 | es5 | es6 | es2015 | es2016 | es2017 | es2018 | es2019 | es2020 | esnext

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
}
