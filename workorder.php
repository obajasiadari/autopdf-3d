<?php
//konektor database
include 'koneksi.php';

//menangkapdata yang di kirim dari form
$refrence = $_POST['refrence'];
$customer = $_POST['customer'];
$customerAdd = $_POST['Add'];
$contact = $_POST['contact'];
$works = $_POST['works'];
$remarks = $_POST['remarks'];
$itemDes = $_POST['itemDes'];
$itemQty = $_POST['itemQty'];
$remarksUsed = $_POST['remarksUsed'];
$cdate = $_POST['cdate'];
$techni = $_POST['technician'];

//menginput data ke database
mysqli_query($koneksi,"insert into wo_pdf values('','$refrence','$customer','$customerAdd','$contact','$cdate','$techni')");

// Validate the email addresses and prepare them for insertion
$works = array_filter($works, 'filter_var');
$works = array_map('trim', $works);
$works = array_unique($works);
$remarks = array_filter($remarks, 'filter_var');
$remarks = array_map('trim', $remarks);
$remarks = array_unique($remarks);
$itemDes = array_filter($itemDes, 'filter_var');
$itemDes = array_map('trim', $itemDes);
$itemDes = array_unique($itemDes);
$itemQty = array_filter($itemQty, 'filter_var');
$itemQty = array_map('trim', $itemQty);
$itemQty = array_unique($itemQty);
$remarksUsed = array_filter($remarksUsed, 'filter_var');
$remarksUsed = array_map('trim', $remarksUsed);
$remarksUsed = array_unique($remarksUsed);

$arraye = array_combine($works, $remarks);
$arraydu = array_combine($itemDes,$remarksUsed);


//Details of works
/*
foreach ($works as $value) {
    foreach ($remarks as $remark) {
    $query = "INSERT INTO wo_detailsofworks VALUES('','{$value}','{$remark}','$refrence')";
    $koneksi->query($query);
    }
}
*/

//---------------------T C P D F-------------------------
// Include the main TCPDF library (search for installation path).
require_once('tcpdf.php');


// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {
    public $company;
    public function setCompany($refrence){
        $this->company = $refrence;
    }
    public $date;
    public function setDate($cdate){
        $this->date = $cdate;
    }

    //Page header
    public function Header() {
        // Logo
        $image_file = K_PATH_IMAGES.'3dtech.png';
        $this->Image($image_file, 15, 7, 23, '', 'PNG', '', '', false, 300, '', false, false, 0, false, false, false);
        // Set font
        $this->setFont('helvetica', 'BU', 18);
        // Title
        $this->Cell(0, 0, 'SURAT PERINTAH KERJA', 0, false, 'R', 0, '', 0, false, 'M', 'M');
        $this->Ln(6);
        $this->setFont('helvetica', 'I', 10);
        $this->Cell(0, 0, 'WORK ORDER', 0, false, 'R', 0, '', 0, false, 'M', 'M');
        $this->Ln(7);
        $this->setFont('helvetica', '', 10);
        $this->Cell(0, 120,'No. '.$this->company, 0, false, 'R', 0, '', 0, false, 'M', 'M');
        $this->Ln(5);
        $this->Cell(0, 120, 'Date : '.$this->date, 0, false, 'R', 0, '', 0, false, 'M', 'M');
        $this->Ln(5);
        $this->Line(10, 30, 200, 30, '');
    }

    // Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->setY(-15);
        // Set font
        $this->setFont('helvetica', 'I', 8);
        // Page number
        $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/ '.$this->getAliasNbPages().' © 2024 '.' PT. 3D TECH', 0, false, 'C', 0, '', 0, false, 'T', 'M');

    }
}

// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->setCreator(PDF_CREATOR);
$pdf->setAuthor('Obaja Siadari');
$pdf->setTitle('Work Order');
$pdf->setSubject('No Refrence');
$pdf->setKeywords('PDF, WO, Report, Laporan');

// set default header data
$pdf->setHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);
$pdf->setCompany($refrence);
$date = date_create($cdate);
$date = date_format($date, 'l jS \o\f F Y h:i:s \W\I\B');
$sdate = date_create($cdate);
$sdate = date_format($sdate, 'jS \o\f F Y ');
$pdf->setDate($date);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->setDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->setMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->setHeaderMargin(PDF_MARGIN_HEADER);
$pdf->setFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->setAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->setFont('times', 'BU', 14);

// add a page
$pdf->AddPage();

// set some text to print

$txt = <<<EOD


EOD;
// Title WO Write()
$pdf->Write(0, $txt, '', 0, 'C', true, 0, false, false, 0);

//Isi
$pdf->setFont('times', '', 12);

//Customer Information Section
$html = '<h4>Location of Work/Project</h4>
<table style="border-style:solid;border-width:2px 2px 2px 2px;">
    <tr>
        <td width="30%">Customer Name</td><td width="70%">:'.$customer.'</td>
    </tr>
    <tr>
        <td width="30%">Customer Address</td><td width="70%">:'.$customerAdd.'</td>
    </tr>
    <tr>    
        <td width="30%">Contact Number</td><td width="70%">:'.$contact.'</td>
    </tr>
</table>
';
$pdf->writeHTML($html, true, false, true, false, '');
$html ='
<h4>Details of Work</h4>
<table border="1">
    <tr style="background-color:powderblue; text-align:center; font-weight:bold;">
        <th width="6%">No.</th>
        <th width="80%">Description</th>
        <th width="14%">Remark</th>
    </tr>
    </table>
   ';
    $i=1;
    foreach($arraye as $k => $a){
    $html .="
    <tr>
        <td width='6%' style=text-align:center;>".$i."</td>
        <td width='80%'>".$k."</td>
        <td width='14%'>".$a."</td>
     </tr>";
    $i++;
    }
    ;
$pdf->writeHTML($html, true, false, true, false, '');

$html='<h4>Device Used</h4>
<table border="1">
    <tr style="background-color:powderblue; text-align:center; font-weight:bold;">
        <th width="6%">Item</th>
        <th width="70%">Item Description</th>
        <th width="10%">Qty</th>
        <th width="14%">Remark</th>
    </tr>
     </table>
   ';
    $i=1;
    foreach($arraydu as $k => $a){
    $html .="
    <tr>
        <td width='6%'>".$i."</td>
        <td width='70%'>".$k."</td>
        <td width-'10%'></td>
        <td width='14%'>".$a."</td>
     </tr>";
    $i++;
    }
    '
    ';
$pdf->writeHTML($html, true, false, true, false, '');

$html='
<table>
<tr><td></td></tr>
    <tr>
        <th width="29%">We hereby confirmed, This work is done</th>
        <th width="10%"></th>
        <th width="25%" style="text-align:center;">Acknowledge By,</th>
        <th width="3%"></th>
        <th width="15%" style="text-align:center;">Customer,</th>
        <th width="3%"></th>
        <th width="15%" style="text-align:center;">Prepared By,</th>
    </tr>
    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>    
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>    
        <td></td><td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <td width="29%">Sign :</td>
        <td width="10%"></td>
        <td width="25%" style="text-align:center;">Donal Pangihutan</td>
        <td width="3%"></td>
        <td width="15%">____________</td>
        <td width="3%"></td>
        <td width="15%" style="text-align:center;">Gestia</td>
    </tr>
    <tr>
        <td width="29%">Name :'.$techni.'</td>
        <td width="10%"></td>
        <td width="25%" style="text-align:center;">Tech. Superintendant</td>
        <td width="3%"></td>
        <td width="15%">Date :</td>
        <td width="3%"></td>
        <td width="15%" style="text-align:center;">Adm</td>
    </tr>
    <tr>
        <td width="29%">Date : '.$sdate.'</td>
        <td width="10%"></td>
        <td width="25%" style="text-align:center;"></td>
        <td width="3%"></td>
        <td width="15%"></td>
        <td width="3%"></td>
        <td width="15%" style="text-align:center;"></td>
    </tr>
</table>
';

$pdf->writeHTML($html, true, false, true, false, '');


// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('example_003.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
