<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class table extends CI_Controller{
    
    function  __construct(){
        parent::__construct();
        
        // Load member model
        $this->load->model('table_');
    }
    
    function index(){
        // Load the member list view
        $this->load->view('table');
    }
    
    function getList(){
        $data = $row = array();
        $tableData = $this->table_->getRows($_POST); # 2. model table_ getrows function
        #6. continue
        $i = $_POST['start'];
        #print_r($tableData);
        foreach ($tableData as $data) {
            $i++;
            $button = "<button tag='delete' id='{$i}'>{$data->id}</button>";
            $arrangeData[] = array($i, $data->firstname, $data->middlename, $data->lastname, $data->birthdate, $data->age, $data->gender);
        }
        #print_r($arrangeData);

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->table_->countAll(), # 7. model table_ countAll function
            #continue
            "recordsFiltered" => $this->table_->countFiltered($_POST), # 9. model table_ countFiltered function
            #continue
            "data" => $arrangeData,
        );
        // Output to JSON format
        echo json_encode($output); # 13. return to view
    }
}