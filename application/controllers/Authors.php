<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Authors extends CI_Controller {

    public function __construct() {
        parent:: __construct();

        $this->load->helper('url');
        $this->load->model('Authors_model');
        $this->load->library("pagination");
    }

    public function index() {
        $config = array();
        $config["base_url"] = base_url("index.php/") . "authors";
        $config["total_rows"] = $this->Authors_model->get_count();
        $config["per_page"] = 10;
        $config["uri_segment"] = 2;

        $this->pagination->initialize($config);

        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;

        $data["links"] = $this->pagination->create_links();

        $data['authors'] = $this->Authors_model->get_authors($config["per_page"], $page);

        $this->load->view('authors/index', $data);
    }
}

/*
HERE,

class Authors extends CI_Controller {…} we define a class Authors that extends the CI_Controller class.
public function __construct() {…} this method initializes the parent constructor and loads the url helper, authors model and the pagination library.
public function index() {…} defines the method that responds to our route authors
$config[“base_url”] = base_url() . “authors”; sets the pagination URL that will be used to generate pagination links
$config[“total_rows”] = $this->authors_model->get_count(); sets the total row that need to be paginated. The value is retrieved from the authors model by calling the get_count method.
$config[“per_page”] = 10; defines the rows that need to be displayed per page
$config[“uri_segment”] = 2; specifies the URL segment that contains the value that will be used to skip records
$this->pagination->initialize($config); initializes the pagination library using the config array value that we defined and assign the above values to.
$page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0; checks if the skip number has been set in the second segment of the URI and if its not set then the value 0 is assigned to the variable $page
$data[“links”] = $this->pagination->create_links(); creates the pagination links and assigns them to the links key of the $data array variable.
data[‘authors’] = $this->authors_model->get_authors($config[“per_page”], $page); retrieved the paginated authors records and assigns them to the authors key of the $data array variable
$this->load->view(‘authors/index’, $data); loads the index view in the authors directory and passes in the array variable $data.
*/