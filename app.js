#!/usr/bin/env
process.env.UV_THREADPOOL_SIZE = Math.ceil(require('os').cpus().length * 1.5);

console.log("Iniciando router...");

var express = require('express');
var OSRM = require('osrm');
var path = require('path');
var cors = require('cors')


var port = 5000;

var app = express();
app.use(cors());
var osrm = new OSRM("/home/osm/osm_data/south-america-latest.osrm");


console.log("OSM importado");

app.get('/route/v1/driving/:coordinates', function(req, res) {

    if (!req.params.coordinates){
        return res.json({"error":"invalid start and end query"});
    }

    var coordinates = [];

    var pontos = req.params.coordinates.split(';');

    for(var i=0;i<pontos.length;i++){
        var latlng = pontos[i].split(',');
        coordinates.push([
                +latlng[0],+latlng[1]
        ]);
    }

    var query = {
        coordinates: coordinates
    };

    if(req.query.geometries){
        query.geometries = req.query.geometries;
    }

    if(req.query.overview){
        query.overview = req.query.overview;
    }

    if(req.query.steps){
        query.steps = req.query.steps == 'true';
    }

    if(req.query.alternatives){
        query.alternatives = req.query.alternatives == 'true';
    }

    osrm.route(query, function(err, result) {
        if (err) return res.json({"code":"NoRoute"});

        if(result.routes && result.routes.length > 0){
                result.code = "Ok";
                return res.json(result);
        }
        result.code = "NoRoute";
        return res.json(result);
    });

});

console.log('Listening on port: ' + port);
app.listen(port);
