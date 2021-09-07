<?php

class Authors_model extends CI_Model {

    protected $table = 'authors';

    public function __construct() {
        parent::__construct();
    }

    public function get_count() {
        return $this->db->count_all($this->table);
    }

    public function get_authors($limit, $start) {
        $this->db->limit($limit, $start);
        $query = $this->db->get($this->table);

        return $query->result();
    }
}
/*
HERE,

protected $table = ‘authors’; define a protected variable that defines the database table name for the model.
public function __construct() {…} calls the parent constructor method.
public function get_count() {…} returns the total records in the database table. This is a need for pagination purposes.
public function get_authors($limit, $start) {…} defines a method that will be used to retrieve paginated results from the database.
                                                We will be passing in the limit and the start point. The limit defines the total number of records to be returned while start defines the number of records that should be skipped */