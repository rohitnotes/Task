<?php
class DatabaseConnection {
    
    protected static $servername = "sql200.epizy.com";
    protected static $username   = "epiz_26723936";
    protected static $password   = "1icNoQpToT";
    protected static $dbname     = "epiz_26723936_item";
    
    public static function getConnection() {
        
        $servername = self::$servername;
        $username   = self::$username;
        $password   = self::$password;
        $dbname     = self::$dbname;
        
        /**
         * Create Connection
         */
        $connection = new mysqli($servername, $username, $password, $dbname);
        
        /**
         * Check Connection
         */
        if ($connection->connect_error) 
        {
            die("Connection failed: " . $connection->connect_error);
        }
        
        return $connection;
    } 	
}
?>
