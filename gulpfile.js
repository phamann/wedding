var gulp = require('gulp');
var ngAnnotate = require('gulp-ng-annotate');
var nodemon = require('gulp-nodemon');
var sass = require('gulp-sass');
var cssshrink = require('gulp-cssshrink');
var jshint = require('gulp-jshint');
var stylish = require('jshint-stylish');
var livereload = require('gulp-livereload');
var _ = require('lodash');

var DIST = 'public/dist/',
    watchFiles = {
        serverViews: ['app/views/**/*.*'],
        serverJS:    ['gruntfile.js', 'server.js', 'config/**/*.js', 'app/**/*.js'],
        clientViews: ['public/modules/**/views/**/*.html'],
        clientJS:    ['public/lib/**/*.js'],
        clientCSS:   ['public/stylesheets/**/*.scss'],
        mochaTests:  ['app/tests/**/*.js']
    },
  allJsFiles = _.merge(watchFiles.serverJS, watchFiles.clientJS),
  allFiles = _.chain(watchFiles).map(function(i) { return i }).flatten().value();

gulp.task('reload', function(){
  console.log('fooo');
  livereload();
});

gulp.task('watch', function () {
    console.log(allFiles);
    livereload.listen();
    gulp.watch(allJsFiles, ['jshint']);
    gulp.watch(watchFiles.clientCSS, ['sass']);
});

gulp.task('nodemon', function () {
  nodemon({
        script: 'server.js',
        ext: 'html js',
        env: { 'NODE_ENV': 'development' } ,
        nodeArgs: ['--debug']
    });
});

gulp.task('jshint', function() {
    return gulp.src(allJsFiles)
        .pipe(jshint())
        .pipe(jshint.reporter(stylish))
        .pipe(livereload());
});

gulp.task('sass', function () {
    gulp.src(watchFiles.clientCSS)
        .pipe(sass({
            outputStyle: 'compressed',
            sourceComments: 'none'
        }))
        .pipe(cssshrink())
        .pipe(gulp.dest(DIST + 'stylesheets/'))
        .pipe(livereload());
});

gulp.task('default', ['sass', 'watch', 'nodemon']);

