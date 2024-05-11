<?php
//konektor database
include 'koneksi.php';

//menangkapdata yang di kirim dari form
$refrence = $_POST['refrence'];
$customer = $_POST['customer'];
$customerAdd = $_POST['Add'];
$location = $_POST['location'];
$works = $_POST['works'];
$cdate = $_POST['cdate'];
$techni = $_POST['technician'];


//menginput data ke database
mysqli_query($koneksi,"insert into jcr_pdf values('','$refrence','$customer','$customerAdd','$location','$cdate')");

// Validate the email addresses and prepare them for insertion
$works = array_filter($works, 'filter_var');
$works = array_map('trim', $works);
$works = array_unique($works);

//item of works
foreach ($works as $value) {
    $query = "INSERT INTO works VALUES('','{$value}','$refrence')";
    $koneksi->query($query);
}


//---------------------T C P D F-------------------------
// Include the main TCPDF library (search for installation path).
require_once('tcpdf.php');


// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo
        $image_file = K_PATH_IMAGES.'3dtech.png';
        $this->Image($image_file, 15, 7, 23, '', 'PNG', '', '', false, 300, '', false, false, 0, false, false, false);
        // Set font
        $this->setFont('helvetica', 'B', 18);
        // Title
        $this->Cell(0, 0, 'PT. 3D TECH', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->Ln(6);
        $this->setFont('helvetica', '', 10);
        $this->Cell(0, 0, 'NEW DIMENSION TECHNOLOGY', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->Ln(7);
        $this->setFont('helvetica', '', 9);
        $this->Cell(0, 120, 'Jl. Raja Isa, Komp. Ruko Purimas Blk A/7 Batam Center, Riau Island, Indonesia 2948', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->Ln(5);
        $this->Cell(0, 20, '+62 811 777 9900 | +62 778 7495888/89 (ext.103) | Fax +62 778 7495840 ', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->Ln(4);
        $this->Cell(0, 20, 'www.3dtech.net.id', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->Ln(4);
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
$pdf->setTitle('Job Completion Report');
$pdf->setSubject('No Refrence');
$pdf->setKeywords('PDF, JCR, Report, Laporan');

// set default header data
$pdf->setHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

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

JOB COMPLETION REPORT 


EOD;
// Title JCR Write()
$pdf->Write(0, $txt, '', 0, 'C', true, 0, false, false, 0);

//Isi
$pdf->setFont('times', '', 12);

//Advance and Final
$ceklis = '<table border="1" cellpadding="1" cellspacing="1">
        <tr>
            <td width="30"></td>
            <td align="center">Advance</td>
        </tr>
        <tr>
            <td width="30"></td>
            <td align="center">Final</td>
        </tr>
    </table>';
//refrence and ceklis advance and final
$html = '<table border = "0">
    <tr>
        <td> Refrence No : '.$refrence.'</td>
    </tr>
</table>';
/* Gunain ini kalau mau nambah fitur ceklis
$html = '<table border = "0">
    <tr>
        <td> Refrence No : '.$refrence.'</td>
       <td>'.$ceklis.'</td>
    </tr>
</table>';
*/
//Customer Information Section
$html .= '<h2>Customer Information</h2>
<h5>1. Customer Name</h5><table border="1" style="padding:2px;"><tr><td>'.$customer.'</td></tr></table>
<h5>2. Customer Address</h5><table border="1" style="padding:2px;"><tr><td>'.$customerAdd.'</td></tr></table> 
<h5>3. Location and Description of Project</h5><table border="1" style="padding:2px;">
<tr><td>'.$location.'</td></tr></table>
<h5>4. Item of Works</h5>';
 $i="a";
foreach ($works as $nilai){
    $html.=$i.' . '.$nilai."<br />";
    $i++;
    }

$date = date_create($cdate);
$date = date_format($date, 'l jS \o\f F Y h:i:s \W\I\B');

$html .='<p>5. Actual Job Completion Date : '.$date.'</p>';

$pdf->writeHTML($html, true, false, true, false, '');

$date = date_create($cdate);
$date = date_format($date, '\B\a\t\a\m\, j F Y');


$signature = '<table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td width="300" align="center">'.$date.'</td>
        </tr>
         <tr>
            <td width="300" align="center">PT. 3D TECH</td>
            <td width="300" align="center">'.$customer.'</td>
        </tr>
        <tr>
            <td width="300" align="center"><br><br><br><br>'.$techni.'</td>
            <td width="300" align="center"><br><br><br><br>_______________________</td>
        </tr> 
    </table>';

/* Kalau mau pakai title
$signature = '<table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td width="280" align="center"><br><br><br>'.$techni.'</td>
            <td  align="center"><br><br><br>IT Head</td>
            <td  align="center"><br><br><br>___/___/2024</td>
        </tr>
        <tr>
            <td align="center">PT. 3D TECH Representative</td>
            <td  align="center">Title</td>
            <td  align="center">Date</td>
        </tr>
    </table>';
*/

$pdf->writeHTML($signature, true, false, true, false, '');

/*
$signature = '<table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td  align="center"><br><br><br></td>
            <td  align="center"><br><br><br>___/___/2024</td>
        </tr>
        <tr>
            <td  align="center"></td>
            <td  align="center">Date</td>
        </tr>
    </table>';
*/
/* Kalau mau pakai Title
$signature = '<table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td width="280" align="center"><br><br><br>_____________________________</td>
            <td  align="center"><br><br><br>___________________</td>
            <td  align="center"><br><br><br>___/___/2024</td>
        </tr>
        <tr>
            <td align="center">'.$customer.' Representative</td>
            <td  align="center">Title</td>
            <td  align="center">Date</td>
        </tr>
    </table>';
*/

//$pdf->writeHTML($signature, true, false, true, false, '');

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('example_003.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
