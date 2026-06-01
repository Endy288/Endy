<?php
//  Require composer autoload
require_once __DIR__ . '/vendor/autoload.php';

// Koneksi database
require_once ('koneksi.php');
function query($query) {
    global $conn;

    $result = mysqli_query($conn, $query);

    if (!$result) {
        die("SQL Error: " . mysqli_error($conn));
    }

    $rows = [];

    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    return $rows;
}

// Ambil data barang masuk
$data = query("
SELECT
    sl.id,
    sl.created_at,
    p.product_Code,
    p.product_name,
    c.nm_kat,
    sl.qty
FROM stock_logs sl
JOIN products p ON sl.product_id = p.id
JOIN categories c ON p.category_id = c.category_id
WHERE sl.change_type='ADD'
ORDER BY sl.created_at DESC
");

// Inisialisasi mPDF
$mpdf = new \Mpdf\Mpdf([
    'format' => 'A4-L'
]);

$html = '
<html>
<head>
    <title>Laporan Barang Masuk</title>
    <style>
        body { font-family: sans-serif; }

        h1 { 
            text-align: center; 
             color: #262626;
             margin-bottom: 5px;
        }

        h3 { 
            text-align: center; 
             margin-top: 0;
             margin-bottom: 20px;
        }
        table { 
                width: 100%; 
                border-collapse: collapse; 
                margin-bottom: 20px;
        }
        thead th { 
                background-color: #198754; 
                color: white;
                padding: 10px; 
                font-size: 12px;
        }
        tbody td {
            padding: 8px;
            font-size: 11px;
            border: 1px solid #ccc;
        }
        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .text-center { 
            text-align: center; 
        }
        .text-right { 
            text-align: right; 
        }
        .qty-masuk {
            color: green;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <h1>BarangEndy</h1>
    <h3>LAPORAN BARANG MASUK</h3>
    <table>
        <thead>
           <tr>
    <th>No</th>
    <th>Tanggal</th>
    <th>Kode Produk</th>
    <th>Nama Produk</th>
    <th>Kategori</th>
    <th>Qty Masuk</th>
</tr>
        </thead>
        <tbody>
';

$no = 1;

foreach ($data as $row) {

    $html .= '
    <tr>
        <td class="text-center">'.$no++.'</td>
        <td class="text-center">'.date('d-m-Y H:i', strtotime($row['created_at'])).'</td>
        <td>'.$row['product_Code'].'</td>
        <td>'.$row['product_name'].'</td>
        <td>'.$row['nm_kat'].'</td>
        <td class="text-center qty-masuk">+'.$row['qty'].'</td>
    </tr>
    ';
}

$html .= '
        </tbody>
    </table>
</body>
</html>
';

// Menampilkan ke PDF
$mpdf->WriteHTML($html);
$mpdf->Output('laporan_barang_masuk.pdf', 'I');
?>