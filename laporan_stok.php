<?php
include "koneksi.php";

$query = mysqli_query($conn, "SELECT * FROM products");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laporan Stok Barang</title>

    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">

    <h2 class="mb-4">Laporan Stok Barang</h2>

    <table class="table table-bordered table-striped">

        <thead class="table-dark">
            <tr>
                <th>No</th>
                <th>Kode Produk</th>
                <th>Nama Produk</th>
                <th>Stok</th>
                <th>Harga</th>
                <th>Gambar</th>
            </tr>
        </thead>

        <tbody>

        <?php
        $no = 1;

        while($row = mysqli_fetch_array($query)) {
        ?>

            <tr>

                <td><?= $no++; ?></td>

                <td><?= $row['product_Code']; ?></td>

                <td><?= $row['product_name']; ?></td>

                <td><?= $row['stock']; ?></td>

                <td>Rp. <?= number_format($row['price']); ?></td>

                <td>
                    <img src="produk_img/<?= $row['gambar']; ?>" width="80">
                </td>

            </tr>

        <?php } ?>

        </tbody>

    </table>

</div>

</body>
</html>