var gulp = require('gulp');
var nodemon = require('gulp-nodemon');
var sass = require('gulp-sass');
var cssshrink = require('gulp-cssshrink');
var jshint = require('gulp-jshint');
var stylish = require('jshint-stylish');
var livereload = require('gulp-livereload');
var shell = require('gulp-shell');
var uglify = require('gulp-uglify');
var _ = require('lodash');
var rev = require('gulp-rev');
var del = require('del');

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

gulp.task('clean', function() {
  del([DIST + '**/*']);
});

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

gulp.task('nodemon', ['dist'], function () {
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

gulp.task('sass', ['clean'], function () {
    gulp.src(watchFiles.clientCSS)
        .pipe(sass({
            outputStyle: 'compressed',
            sourceComments: 'none'
        }))
        .pipe(cssshrink())
        .pipe(gulp.dest(DIST + 'stylesheets/'))
        .pipe(livereload());
});

gulp.task('jspm', ['clean'], shell.task(['jspm bundle-sfx lib/app ' + DIST + 'javascript/app.js']));

gulp.task('compress', ['clean', 'jspm', 'rev'], function() {
    gulp.src(DIST + 'javascript/*.js')
        .pipe(uglify())
        .pipe(gulp.dest(DIST + 'javascript'))
});

gulp.task('rev', ['clean', 'sass', 'jspm'], function () {
    return gulp.src(DIST + '**/*')
        .pipe(rev())
        .pipe(gulp.dest(DIST))
        .pipe(rev.manifest())
        .pipe(gulp.dest(DIST));
});

gulp.task('dist', ['clean','sass', 'jspm', 'rev', 'compress']);
gulp.task('default', ['dist', 'watch', 'nodemon']);

