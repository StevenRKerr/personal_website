    module.exports = function(grunt) {

    // Load S3 plugin

    grunt.loadNpmTasks('grunt-aws')

    // Static Webserver

    grunt.loadNpmTasks('grunt-contrib-connect')

    // Project configuration.

    grunt.initConfig({

    pkg: grunt.file.readJSON('package.json'),

    aws: grunt.file.readJSON('aws-keys.json'),

    s3: {

    options: {

    accessKeyId: '<%= aws.accessKeyId %>',

    secretAccessKey: '<%= aws.secretAccessKey %>',

    bucket: '<%= aws.bucket %>',

    },

    build: {

    cwd: '_site',

    src: '**',

    },

    },

    connect: {

    server: {

    options: {

    port: 8080,

    base: '_site',

    keepalive: true,

    },

    },

    },

    })

    // Default task(s).

    grunt.registerTask('default', ['connect'])

    }
    