��    k      t  �   �       	  6   !	  7   X	  1   �	  2   �	  1   �	  2   '
  9   Z
  :   �
  4   �
  5     '   :  ,   b  �   �  �   C     �  2     �   N  
   �     �     �     �            9        N     Q     o     �     �     �     �     �     �     �               #     :     S  Z   a  �   �     W     k     �     �     �     �  
   �     �  	   �     �        S        Y  (   _     �     �     �     �     �  .   �       y        �  %   �     �     �     �  �         �      �  	   �     �  !        '     D  $   a     �     �     �     �     �  4   �  A     2   _  F   �  7   �               1     B  ,   [  &   �  7   �  "   �  X   
  �   c     �               #  N   ,     {  �   �  s       �  �  �  D   7  E   |  @   �  B     =   F  <   �  G   �  H   	  B   R  D   �  +   �  0     �   7  �   �  #   �   :   �   �   !     �!     �!     �!     �!     �!     �!  S   �!     ."     1"     O"     d"     y"     �"     �"     �"     �"     �"     �"  
   �"     #     #     2#  s   @#  �   �#     t$     �$     �$     �$     �$     �$     %  	   %  	   #%     -%     1%  `   6%  
   �%  )   �%     �%     �%  
   �%     �%     �%  >   &     N&  s   Z&     �&  -   �&     '     ('     5'  �   >'      (     %(  
   @(     K(  %   T(  !   z(  #   �(  (   �(  #   �(      )     .)     <)     Y)  B   a)  H   �)  J   �)  L   8*  N   �*     �*     �*     �*     +  ,   +  C   I+  E   �+     �+  z   �+  �   n,     -     (-     5-     J-  ^   S-     �-  �   �-  �  X.     �/     C   0       3                   1                       @                 h   M       	       ]          e   K       +   d   2   )   b           <   P   _   E                      ^   >   c   Y   a         #       k   6              !   \   R              =   4   &           /      A       Q          V   9   X   *      j   :                 Z   [           .      T           %   ?      "   S   8   f       L   ;       ,   U      `       G      (   J                '   F   D          B   
   g                 $   N   5   i   W   H   -          O   7   I        %(count)d document file link queued for email delivery %(count)d document file links queued for email delivery %(count)d document file queued for email delivery %(count)d document files queued for email delivery %(count)d document link queued for email delivery %(count)d document links queued for email delivery %(count)d document version link queued for email delivery %(count)d document version links queued for email delivery %(count)d document version queued for email delivery %(count)d document versions queued for email delivery %(email)s is not a valid email address. A short text describing the mailing profile. Address used in the "Bcc" header when sending the email. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Address used in the "Reply-To" header when sending the email. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Attach an object to the email. Attach the exported document version to the email. Attached to this email is the {{ object_name }}: {{ object }}

 --------
 This email has been sent from %(project_title)s (%(project_website)s) Attachment BCC Backend Backend data Backend path Body Body of the email to send. Can be a string or a template. CC Create a "%s" mailing profile Create a mailing profile Create mailing profile Default Delete Delete a mailing profile Delete mailing profile: %s Django SMTP backend Django file based backend Document file Edit Edit a mailing profile Edit mailing profile: %s Email address Email address of the recipient. Can be multiple addresses separated by comma or semicolon. Email address of the recipient. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Email document file Email document file link Email document link Email document version Email document version link Email link version Email sent Enabled File path From Host If default, this mailing profile will be pre-selected on the document mailing form. Label Link for {{ object_name }}: {{ object }} Mailer Mailing Mailing profile Mailing profile created Mailing profile edited Mailing profile to use when sending the email. Mailing profiles Mailing profiles are email configurations. Mailing profiles allow sending documents as attachments or as links via email. Mailing profiles list New mailing profile backend selection No mailing profiles available Null backend Password Password to use for the SMTP server. This setting is used in conjunction with the username when authenticating to the SMTP server. If either of these settings is empty, authentication won't be attempted. Port Port to use for the SMTP server. Recipient Reply to Send document file link via email Send document file via email Send document link via email Send document version link via email Send document version via email Send document via email Send object Send object via email Subject Subject of the email. Can be a string or a template. Template for the document email form body text. Can include HTML. Template for the document email form subject line. Template for the document link email form body text. Can include HTML. Template for the document link email form subject line. Test Test email from Mayan EDMS Test email sent. Test mailing profile: %s The dotted Python path to the backend class. The driver to use when sending emails. The email profile that will be used to send this email. The host to use for sending email. The sender's address. Some system will refuse to send messages if this value is not set. To access this {{ object_name }} click on the following link: {{ link }}

--------
 This email has been sent from %(project_title)s (%(project_website)s) Use SSL Use TLS Use a mailing profile Username Username to use for the SMTP server. If empty, authentication won't attempted. View a mailing profile Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting "Use TLS". Note that "Use TLS" and "Use SSL" are mutually exclusive, so only set one of those settings to True. {{ object_name }}: {{ object }} Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-01-05 02:53+0000
Last-Translator: Mathias Behrle <mathiasb@m9s.biz>, 2023
Language-Team: German (Germany) (https://app.transifex.com/rosarior/teams/13584/de_DE/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: de_DE
Plural-Forms: nplurals=2; plural=(n != 1);
 %(count)d Dokumentendateilink in die E-Mailwarteschlange eingereicht %(count)d Dokumentendateilinks in die E-Mailwarteschlange eingereicht %(count)d Dokumentendatei in die E-Mailwarteschlange eingereicht %(count)d Dokumentendateien in die E-Mailwarteschlange eingereicht %(count)d Dokumentenlinks in die Mailwarteschlange eingereiht %(count)d Dokumentenlink in die Mailwarteschlange eingereiht %(count)d Dokumentenversionslink in die E-Mailwarteschlange eingereicht %(count)d Dokumentenversionslinks in die E-Mailwarteschlange eingereicht %(count)d Dokumentenversion in die E-Mailwarteschlange eingereicht %(count)d Dokumentenversionen in die E-Mailwarteschlange eingereicht %(email)s ist keine gültige E-Mailadresse. Ein kurzer Text, der das Mail-Profil beschreibt. Addresse für die "Bcc"-Kopfzeile. Können mehrere durch Komma oder Semikolon getrennte Adressen sein. Eine Vorlage kann verwendet werden, um auf Dokumenteneigenschaften zu verweisen. Addresse für die "Reply-to"-Kopfzeile. Können mehrere durch Komma oder Semikolon getrennte Adressen sein. Eine Vorlage kann verwendet werden, um auf Dokumenteneigenschaften zu verweisen. Ein Objekt an die E-Mail anhängen. Die exportierte Dokumentenversion an die E-Mail anhängen. Angehängt an diese E-Mail ist {{ object_name }}: {{ object }}

 --------
 Diese E-Mail wurde gesendet von %(project_title)s (%(project_website)s) Anhang BCC Backend Backenddaten Backendpfad Nachrichtenteil Textkörper der zu sendenden E-Mail. Kann eine Zeichenfolge oder eine Vorlage sein. CC Ein "%s" Mailprofil erstellen Mailprofil erstellen Mailprofil erstellen Standard Löschen Mailprofil löschen Mailprofil %s löschen Django SMTP Backend Django dateibasiertes Backend Dokumentendatei Bearbeiten Mailprofil bearbeiten Mailprofil %s bearbeiten E-Mailadresse E-Mailadresse des Empfängers. Es können mehrere Adressen eingetragen werden, getrennt durch Komma oder Semikolon. E-Mail-Adresse des Empfängers. Kann aus mehreren durch Komma oder Semikolon getrennten Adressen bestehen. Eine Vorlage kann verwendet werden, um auf Eigenschaften des Dokuments zu verweisen. Dokumentendatei mailen Dokumentendateilink mailen Dokumentenlink mailen Dokumentenversion mailen Dokumentenversionslink mailen Versionslink mailen E-Mail verschickt Aktiviert Dateipfad Von Host Wenn als Standard gesetzt, wird dieses Mailprofil auf dem Dokumentenmailformular voreingestellt. Bezeichner Link für {{ object_name }}: {{ object }} Mailer E-Mail Mailprofil Mailprofil erstellt Mailprofil bearbeitet Mail-Profil, das beim Senden der E-Mail verwendet werden soll. Mailprofile Mailprofile sind E-Mailkonfigurationen. Mailprofile erlauben das Senden von Dokumenten als Anhänge oder als Links. Mailprofilliste Auswahl des Backends für das neue Mailprofil Keine Mailprofile vorhanden Null Backend Passwort Passwort für den SMTP-Server. Diese Einstellung wird in Verbindung mit dem Benutzernamen für die Authentifizierung am SMTP-Server verwendet. Wenn eine dr beiden Einstellungen leer ist, wird keine Authentifizierung versucht. Port Der Port des SMTP-Servers. Empfänger Reply to Dokumentendateilink per E-Mail senden Dokumentendatei per E-Mail senden Link zum Dokument per E-Mail senden Dokumentenversionslink per E-Mail senden Dokumentenversion per E-Mail senden Dokument als E-Mailanhang senden Objekt senden Ein Objekt per E-Mail senden Betreff Betreff der E-Mail. Kann eine Zeichenfolge oder eine Vorlage sein. Vorlage für den Textkörper einer Dokumenten-Mail. Kann HTML enthalten. Vorlage für die Betreffzeile des Formulars für die Dokumentenversendung. Vorlage für den Textkörper einer Dokumentenlink-Mail. Kann HTML enthalten. Vorlage für die Betreffzeile des Formulars für die Dokumentenlinkversendung. Test Testmail aus Mayan EDMS Test-E-Mail gesendet. Mailprofil %s testen Der punktierte Pythonpfad zur Backendklasse. Der Treiber, der für das Senden von E-Mails verwendet werden soll. Das Mailprofil, das für die Versendung dieser E-Mail verwendet wird. Der Host für ausgehende Mails. Die Adresse des Absenders. Einige Systeme verweigern die Verarbeitung von Nachrichten, wenn dieser Wert nicht gesetzt ist. Für den Zugang zu {{ object_name }} klicken Sie bitte auf den folgenden Link: {{ link }}

--------
 Diese E-Mail wurde gesendet von %(project_title)s (%(project_website)s) SSL benutzen TLS benutzen Mailprofil verwenden Benutzer Benutzername für den SMTP-Server. Bei leerem Feld wird keine Authentifizierung durchgeführt. Mailprofil ansehen Ob eine TLS-gesicherte Verbindung zum SMTP-Server benutzt werden soll. Es werden explizite TLS-Verbindungen aufgebaut, üblicherweise an Port 587. Ob eine implizite gesicherte TLS-Verbindung zum SMTP-Server benutzt werden soll. In den meisten Dokumentationen wird dieser Typ der TLS-Verbindung als SSL referenziert. Er wird üblicherweise an Port 465 bereitgestellt. Wenn Sie Probleme feststellen, sehen Sie auch die explizite Einstellung "TLS benutzen". TLS und SSL schließen sich gegenseitig aus, also setzen Sie nur eine der beiden Einstellungen. {{ object_name }}: {{ object }} 