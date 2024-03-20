<?php
//============================================================+
// File name   : example_003.php
// Begin       : 2008-03-04
// Last Update : 2013-05-14
//
// Description : Example 003 for TCPDF class
//               Custom Header and Footer
//
// Author: Nicola Asuni
//
// (c) Copyright:
//               Nicola Asuni
//               Tecnick.com LTD
//               www.tecnick.com
//               info@tecnick.com
//============================================================+

/**
 * Creates an example PDF TEST document using TCPDF
 * @package com.tecnick.tcpdf
 * @abstract TCPDF - Example: Custom Header and Footer
 * @author Nicola Asuni
 * @since 2008-03-04
 * @group header
 * @group footer
 * @group page
 * @group pdf
 */

// Include the main TCPDF library (search for installation path).
require_once('tcpdf.php');


// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo
        $image_file = K_PATH_IMAGES.'3dtech.png';
        $this->Image($image_file, 5, 7, 23, '', 'PNG', '', '', false, 300, '', false, false, 0, false, false, false);
        // Set font
        $this->setFont('helvetica', 'B', 18);
        // Title
        $this->Cell(0, 0, 'PT. 3D TECH', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->Ln(6);
        $this->setFont('helvetica', '', 10);
        $this->Cell(0, 0, 'THREE DIMENSION TECHNOLOGY', 0, false, 'C', 0, '', 0, false, 'M', 'M');
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
        $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/ '.$this->getAliasNbPages().' © 2024' .'<a href="www.obajasiadari.com">'.'Obaja Siadari'.'</a>', 0, false, 'C', 0, '', 0, false, 'T', 'M');
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
        <td> Refrence No : </td>
        <td></td>
        <td></td>
        <td>'.$ceklis.'</td>
    </tr>
    
</table>';

$pdf->writeHTML($html, true, false, true, false, '');

//Customer Information Section
$html = '<h1>Customer Information</h1>
<p>1. Customer Name</p> <br>
<p></p>     <br>
            <br>
<p>2. Customer Adress</p> <br>
<p> </p>    <br>
            <br>
<p>3. Location and Description of Project</p>
<br><br><br><br>
<p>4. Item of Works</p>
<br>
<p>5. Actual Job Completion Date :</p> <br>';

$pdf->writeHTML($html, true, false, true, false, '');

$signature = '<table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td width="280" align="center"><br><br><br><br><br><u>Teknisi</u></td>
            <td  align="center"><br><br><br><br><br>IT Head</td>
            <td  align="center"><br><br><br><br><br>.../.../2024</td>
        </tr>
        <tr>
            <td align="center">PT. 3D TECH Representative(signature)</td>
            <td  align="center">Title</td>
            <td  align="center">Date</td>
        </tr>
    </table>';

$pdf->writeHTML($signature, true, false, true, false, '');

$signature = '<table border="0" cellpadding="1" cellspacing="1">
        <tr>
            <td width="280" align="center"><br><br><br><br><br>_____________________________</td>
            <td  align="center"><br><br><br><br><br>___________________</td>
            <td  align="center"><br><br><br><br><br>___/___/2024</td>
        </tr>
        <tr>
            <td align="center">.......................Representative(signature)</td>
            <td  align="center">Title</td>
            <td  align="center">Date</td>
        </tr>
    </table>';

$pdf->writeHTML($signature, true, false, true, false, '');


$tbl = <<<EOD



EOD;
$pdf->writeHTML($tbl, true, false, false, false, '');

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('example_003.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
