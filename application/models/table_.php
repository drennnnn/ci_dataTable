<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
#[\AllowDynamicProperties]

class table_ extends CI_Model{
    
    function __construct() {
        // Set table name
        $this->table = 'tbl_task2';
        // Set orderable column fields
        $this->column_order = array(null, 'firstname','middlename','lastname','birthdate','age','gender');
        // Set searchable column fields
        $this->column_search = array('firstname','middlename','lastname','birthdate','age','gender');
        // Set default order
        $this->order = array('id' => 'asc');
    }

    public function getRows($postData){
        $this->_get_datatables_query($postData); # 3. private function _get_datatables_query
        #5. continue here
        if($postData['length'] != -1){
            $this->db->limit($postData['length'], $postData['start']);
        }
        $query = $this->db->get();
        return $query->result();# return to controller getList function
        print_r($this->db->last_query());
    }

    private function _get_datatables_query($postData){ # 4. method called # 11. method called for filtered counting
        $this->db->from($this->table); # specify table

        $i = 0;

        foreach($this->column_search as $item){
            # check if there is a search activity
            if($postData['search']['value']){
                // first loop
                if($i===0){
                    // open bracket
                    $this->db->group_start();
                    $this->db->like($item, $postData['search']['value']);
                }else{
                    $this->db->or_like($item, $postData['search']['value']);
                }
                
                // last loop
                if(count($this->column_search) - 1 == $i){
                    // close bracket
                    $this->db->group_end();
                }
            }
            $i++;
        }
        if(isset($postData['order'])){
            $this->db->order_by($this->column_order[$postData['order']['0']['column']], $postData['order']['0']['dir']); #order_by(columnName, direction)
        }else if(isset($this->order)){
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]); #key($order) = gets the key of $order in array, $order[key($order)]= $order = ['id'=>'asc']
        }

    }

    public function countAll() {
        $this->db->from($this->table);
        return $this->db->count_all_results(); # 8. controller table getlist function
    }

    public function countFiltered($postData) {
        $this->_get_datatables_query($postData); # 10. private function _get_datatables_query
        #continue
        $query = $this->db->get();
        return $query->num_rows(); # 12. controller table getList function
    }
}
?>