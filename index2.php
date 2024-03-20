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
        $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}

// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->setCreator(PDF_CREATOR);
$pdf->setAuthor('Nicola Asuni');
$pdf->setTitle('TCPDF Example 003');
$pdf->setSubject('TCPDF Tutorial');
$pdf->setKeywords('TCPDF, PDF, example, test, guide');

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

$ceklis = '<table border="1" cellpadding="4" cellspacing="6">
        <tr>
            <td></td>
            <td>Advance</td>
        </tr>
        <tr>
            <td></td>
            <td>Final</td>
        </tr>
    </table>';
// print a block of text using Write()
$pdf->Write(0, $txt, '', 0, 'C', true, 0, false, false, 0);

$pdf->setFont('times', '', 12);


$html = '<table border = "0">
    <tr>
        <td> Refrence No : </td>
        <td></td>
        <td></td>
        <td>'.$ceklis.'</td>
    </tr>
    
</table>';

$pdf->writeHTML($html, true, false, true, false, '');

$tbl = <<<EOD



EOD;
$txt = "Lorem ipsum";

$pdf->MultiCell(55, 5, '[LEFT] '.$txt, 1, 'L', 0, 0, '', '', true);
$pdf->MultiCell(55, 5, '[RIGHT] '.$txt, 1, 'R', 0, 1, '', '', true);
$pdf->MultiCell(55, 5, '[CENTER] '.$txt, 1, 'C', 0, 0, '', '', true);
$pdf->MultiCell(55, 5, '[JUSTIFY] '.$txt, 1, 'J', 0, 2, '' ,'', true);
$pdf->MultiCell(55, 5, '[DEFAULT] '.$txt, 1, '', 0, 1, '', '', true);

$pdf->writeHTML($tbl, true, false, false, false, '');

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('example_003.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
