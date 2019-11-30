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

  // Specify ECMAScript target version
  target: *es3 | es5 | es6 | es2015 | es2016 | es2017 | es2018 | es2019 | es2020 | esnext

  // Specify module code generation
  if target == es3 || target == es5 {
    module: none | *commonjs | amd | system | umd | es6 | es2015 | esnext
  }
  if target != es3 && target != es5 {
    module: none | commonjs | amd | system | umd | *es6 | es2015 | esnext
  }
}
