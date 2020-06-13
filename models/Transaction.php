<?php 

class Transaction {
    private $db;

    public function __construct() {
        $this->db = new Database;
    }

    public function addTransaction($data) {
        // Prepare Query
        $this->db->query("INSERT INTO `transactions` (id, costumer_id, product, amount, currency, status) VALUES(:id,:costumer_id,:product,:amount,:currency,:status);");

        // Bind Values
        $this->db->bind(':id', $data['id']);
        $this->db->bind(':costumer_id', $data['costumer_id']);
        $this->db->bind(':product', $data['product']);
        $this->db->bind(':amount', $data['amount']);
        $this->db->bind(':currency', $data['currency']);
        $this->db->bind(':status', $data['status']);

        // Execute

        if($this->db->execute()){
            return true;
        } else {
            return false;
        }
    }
    
}