module.exports = (grunt) ->

  grunt.initConfig

    svgstore:

      # options:
      #   prefix: 'prefix-', # This will prefix each <g> ID

      default:
        files:
          'svg-defs.svg': ['svgs/**/*.svg']

    watch:

      options:
        livereload: true

      anything:
        files: [
          '**/*.*'
          '!svgs/**/*.svg'
        ]

      svg:
        files: [
          'svgs/**/*.svg'
        ]
        tasks: [
          'svgstore'
        ]

  grunt.registerTask 'dev', [
    'svgstore'
    'watch'
  ]

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-svgstore'
