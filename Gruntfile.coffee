module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    gaslib: 'lib/gas-underscore.string-v<%= pkg.version %>'
    gastestlib: 'lib/gas-underscore.string-test-v<%= pkg.version %>'

    copy:
      sources:
        files: [
          {
            src: 'src/main.js'
            dest: '<%= gaslib %>/main.gs.js'
          }
          {
            src: 'node_modules/underscore.string/lib/underscore.string.js'
            dest: '<%= gaslib %>/underscore.string.gs.js'
          }
          {
            src: 'src/test.js'
            dest: '<%= gastestlib %>/test.gs.js'
          }
        ]

    shell:
      npm_update:
        command: 'npm update'
        options:
          stdout: true
          stderr: true
          failOnError: true

    'string-replace':
      tests:
        files: [
          '<%= gastestlib %>/strings.gs.js': 'node_modules/underscore.string/test/strings.js'
        ]
        options:
          replacements: [
            # Wraps tests in global functions so that they can be run in Google Apps Script
            pattern: /\$\(document\)\.ready\(function\(\) \{([^]+)module\((\'|\")(\w+)([^\"\']*)(?:\'|\")([^]+)\}\);\n*$/mg
            replacement: 'function test$3() {$1module($2$3$4$2$5};\n'
          ]

  grunt.registerTask 'build', [
    'copy'
    'string-replace'
  ]

  grunt.registerTask 'update', [
    'shell:npm_update'
  ]

  grunt.registerTask 'default', [
    'build'
  ]

  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-string-replace'
