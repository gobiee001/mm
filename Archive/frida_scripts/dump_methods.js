Java.perform(function () {
  const packagePrefix = "com.appsomniacs.da2";
  const classes = Java.enumerateLoadedClassesSync()
    .filter(function (name) {
      return name.indexOf(packagePrefix) === 0;
    })
    .sort();

  console.log("[*] Loaded classes matching: " + packagePrefix);
  console.log("[*] Class count: " + classes.length);

  classes.forEach(function (className) {
    try {
      const klass = Java.use(className);
      const methods = klass.class.getDeclaredMethods();

      if (methods.length > 0) {
        console.log("\n.class " + className);
      }

      for (let i = 0; i < methods.length; i++) {
        console.log("  " + methods[i].toString());
      }
    } catch (e) {
      console.log("[!] Failed: " + className + " -> " + e);
    }
  });
});
