module.exports = ( function() {
    'use strict';

    var npm = {},
        logger = require('./logger'),
        q = require('q');

    npm.install = function( name ){
        var exec = require('child_process').exec,
            cmd = 'npm install ' + name + ' --save',
            child = exec(cmd),
            deferred = q.defer();

        logger.trace('');
        logger.trace('RUNNING: ' + cmd);

        child.on('error', function(err){
            deferred.reject(err);
        });

        child.on('close', function(code){
            if(code === 0){
                deferred.resolve();
            }
            else {
                deferred.reject(new Error(code));
            }
        });

        return deferred.promise;
    };

    return npm;
} )();