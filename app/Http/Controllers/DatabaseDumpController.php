<?php

namespace App\Http\Controllers;

use Spatie\DbDumper\Databases\MySql;

class DatabaseDumpController extends Controller
{
    public function __invoke()
    {
        MySql::create()
        ->setHost(config('database.connections.mysql.host'))
        ->setDbName(config('database.connections.mysql.database'))
        ->setUserName(config('database.connections.mysql.username'))
        ->setPassword(config('database.connections.mysql.password'))
        ->dumpToFile(database_path('dump.sql'));
        return response()->download(database_path('dump.sql'));   
    }
}
