<?php
class Banner extends ThaoTac{
    
    
    function getbanner()
    {
      $sql = "SELECT * FROM banner";
      $stmt = parent::pdo_query($sql);
      return $stmt;
    }
}
?>
