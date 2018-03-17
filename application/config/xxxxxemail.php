<?php

defined('BASEPATH') OR exit('No direct script access allowed.');
$config['useragent'] = 'PHPMailer'; // Mail engine switcher: ‘CodeIgniter’ or ‘PHPMailer’
$config['protocol'] = 'mail'; // ‘mail’, ‘sendmail’, or ‘smtp’
$config['mailpath'] = '/usr/sbin/sendmail';
$config['smtp_host'] = 'smtp.gmail.com';
$config['smtp_user'] = 'trinityemailer@gmail.com'; //youremail
$config['smtp_pass'] = 'tr1n1ty@1963'; //yourpassword
$config['smtp_port'] = 587;
$config['smtp_timeout'] = 30; // (in seconds)
$config['smtp_crypto'] = 'tsl'; // ‘’ or ‘tls’ or ‘ssl’
$config['smtp_debug'] = 2; // PHPMailer’s SMTP debug info level: 0 = off, 1 = commands, 2 = commands and data, 3 = as 2 plus connection status, 4 = low level data output.
$config['smtp_auto_tls'] = false; // Whether to enable TLS encryption automatically if a server supports it, even if `smtp_crypto` is not set to ‘tls’.
$config['smtp_conn_options'] = array(); // SMTP connection options, an array passed to the function stream_context_create() when connecting via SMTP.
$config['wordwrap'] = true;
$config['wrapchars'] = 76;
$config['mailtype'] = 'html'; // ‘text’ or ‘html’
$config['charset'] = 'UTF-8'; // ‘UTF-8’, ‘ISO-8859–15’, …; NULL (preferable) means config_item(‘charset’), i.e. the character set of the site.
$config['validate'] = true;
$config['priority'] = 3; // 1, 2, 3, 4, 5; on PHPMailer useragent NULL is a possible option, it means that X-priority header is not set at all, see https://github.com/PHPMailer/PHPMailer/issues/449
$config['crlf'] = "\n"; // “\r\n” or “\n” or “\r”
$config['newline'] = "\r\n"; // “\r\n” or “\n” or “\r”
$config['bcc_batch_mode'] = false;
$config['bcc_batch_size'] = 200;
$config['encoding'] = '8bit';

?>