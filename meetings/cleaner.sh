#!/bin/bash
cat $1 | sed 's/\([>;]\)\([a-zA-Z ]*\): /\1<b>\2<\/b>: /g' | sed 's/Updated automatically every 5 minutes//' | sed 's/Mise à jour automatique effectuée toutes les 5 minutes//' | sed 's/\([Nn]\)icolas/\1icol\&aacute;s/g' | sed 's/Pena/Pe\&ntilde;a/g' | sed 's/Published by//'| sed 's/Google Drive//g' | sed 's/Report Abuse//' | sed 's/div id="publish-banner"/div style="display:none" id="publish-banner"/' | sed 's/padding:72pt 72pt 72pt 72pt//' | sed 's/padding: 100px 20% 50px 20%/padding: 50px 5% 50px 5%/' | sed 's/max-width:468pt/max-width:600pt/' > /tmp/tmp_file.html
cat `dirname $0`/resize.js >> /tmp/tmp_file.html
mv /tmp/tmp_file.html $1
