exports.LocalConfig = function (localizer, project) {

    localizer.where('center').then([29.9377, -3.4216, 9]);
    localizer.where('Layer').if({'Datasource.type': 'postgis'}).then({
        'Datasource.dbname': 'hdm',
        'Datasource.password': 'chp@0479',
        'Datasource.user': 'angelo',
        'Datasource.host': 'localhost'
    });
};

