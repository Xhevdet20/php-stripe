<?php
require_once('config/db.php');
require_once('lib/pdo_db.php');
require_once('models/Transaction.php');

// Instantiate Customer
$transaction = new Transaction();

// Get Customer
$transaction = $transaction->getTransactions();

?> 


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>View Transactions</title>
</head>
<body>
    <div class="container mt-4">
      <div class="btn-group" role="group">
        <a href="customers.php" class="btn btn-secondary">Customers</a>
        <a href="transactions.php" class="btn btn-primary">Transactions</a>
      </div>
      <hr>
      <h2>Transactions</h2>
      <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Customer ID</th>
                <th>Product</th>
                <th>Amount</th>
                <th>Currency</th>
                <th>Status</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($transaction as $c): ?>
                <tr>
                    <td><?php echo $c->id; ?></td>
                    <td><?php echo $c->costumer_id; ?></td>
                    <td><?php echo $c->product; ?></td>
                    <td><?php echo strtoupper($c->currency); ?></td>
                    <td><?php echo $c->status; ?></td>
                    <td><?php echo sprintf('%.2f', $c->amount /100); ?>
                        
                    </td>
                    <td><?php echo $c->created_at; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
      </table>
      <br>
      <p><a href="index.php">Pay Page</a></p>
    </div>
</body>
</html>