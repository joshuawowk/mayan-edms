��    k      t  �   �       	  6   !	  7   X	  1   �	  2   �	  1   �	  2   '
  9   Z
  :   �
  4   �
  5     '   :  ,   b  �   �  �   C     �  2     �   N  
   �     �     �     �            9        N     Q     o     �     �     �     �     �     �     �               #     :     S  Z   a  �   �     W     k     �     �     �     �  
   �     �  	   �     �        S        Y  (   _     �     �     �     �     �  .   �       y        �  %   �     �     �     �  �         �      �  	   �     �  !        '     D  $   a     �     �     �     �     �  4   �  A     2   _  F   �  7   �               1     B  ,   [  &   �  7   �  "   �  X   
  �   c     �               #  N   ,     {  �   �  s       �  �  �  P   {  Q   �  I     E   h  :   �  <   �  O   &  P   v  G   �  ;     $   K  /   p  �   �  �   p      K!  5   f!  �   �!     $"     *"     ."     6"     G"     Z"  B   `"     �"     �"     �"     �"     �"      #     #      %#     F#  $   ]#     �#     �#     �#     �#     �#  n   �#  �   ^$     %  '   8%     `%     |%  &   �%     �%     �%  
   �%     �%     	&     &  _   &     q&  +   y&     �&     �&     �&     �&     �&  2   '     9'  �   J'     �'  .   �'  $   (     A(     N(  �   T(     )  '   )     D)     R)  /   a)  '   �)  #   �)  .   �)  &   *     3*     P*     ^*     w*  6   *  X   �*  ?   +  M   O+  I   �+     �+  !   �+     ,     (,  0   E,  )   v,  ;   �,  )   �,  k   -  �   r-     .     .     .     0.  G   9.     �.  �   �.  �  0/      1     C   0       3                   1                       @                 h   M       	       ]          e   K       +   d   2   )   b           <   P   _   E                      ^   >   c   Y   a         #       k   6              !   \   R              =   4   &           /      A       Q          V   9   X   *      j   :                 Z   [           .      T           %   ?      "   S   8   f       L   ;       ,   U      `       G      (   J                '   F   D          B   
   g                 $   N   5   i   W   H   -          O   7   I        %(count)d document file link queued for email delivery %(count)d document file links queued for email delivery %(count)d document file queued for email delivery %(count)d document files queued for email delivery %(count)d document link queued for email delivery %(count)d document links queued for email delivery %(count)d document version link queued for email delivery %(count)d document version links queued for email delivery %(count)d document version queued for email delivery %(count)d document versions queued for email delivery %(email)s is not a valid email address. A short text describing the mailing profile. Address used in the "Bcc" header when sending the email. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Address used in the "Reply-To" header when sending the email. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Attach an object to the email. Attach the exported document version to the email. Attached to this email is the {{ object_name }}: {{ object }}

 --------
 This email has been sent from %(project_title)s (%(project_website)s) Attachment BCC Backend Backend data Backend path Body Body of the email to send. Can be a string or a template. CC Create a "%s" mailing profile Create a mailing profile Create mailing profile Default Delete Delete a mailing profile Delete mailing profile: %s Django SMTP backend Django file based backend Document file Edit Edit a mailing profile Edit mailing profile: %s Email address Email address of the recipient. Can be multiple addresses separated by comma or semicolon. Email address of the recipient. Can be multiple addresses separated by comma or semicolon. A template can be used to reference properties of the document. Email document file Email document file link Email document link Email document version Email document version link Email link version Email sent Enabled File path From Host If default, this mailing profile will be pre-selected on the document mailing form. Label Link for {{ object_name }}: {{ object }} Mailer Mailing Mailing profile Mailing profile created Mailing profile edited Mailing profile to use when sending the email. Mailing profiles Mailing profiles are email configurations. Mailing profiles allow sending documents as attachments or as links via email. Mailing profiles list New mailing profile backend selection No mailing profiles available Null backend Password Password to use for the SMTP server. This setting is used in conjunction with the username when authenticating to the SMTP server. If either of these settings is empty, authentication won't be attempted. Port Port to use for the SMTP server. Recipient Reply to Send document file link via email Send document file via email Send document link via email Send document version link via email Send document version via email Send document via email Send object Send object via email Subject Subject of the email. Can be a string or a template. Template for the document email form body text. Can include HTML. Template for the document email form subject line. Template for the document link email form body text. Can include HTML. Template for the document link email form subject line. Test Test email from Mayan EDMS Test email sent. Test mailing profile: %s The dotted Python path to the backend class. The driver to use when sending emails. The email profile that will be used to send this email. The host to use for sending email. The sender's address. Some system will refuse to send messages if this value is not set. To access this {{ object_name }} click on the following link: {{ link }}

--------
 This email has been sent from %(project_title)s (%(project_website)s) Use SSL Use TLS Use a mailing profile Username Username to use for the SMTP server. If empty, authentication won't attempted. View a mailing profile Whether to use a TLS (secure) connection when talking to the SMTP server. This is used for explicit TLS connections, generally on port 587. Whether to use an implicit TLS (secure) connection when talking to the SMTP server. In most email documentation this type of TLS connection is referred to as SSL. It is generally used on port 465. If you are experiencing problems, see the explicit TLS setting "Use TLS". Note that "Use TLS" and "Use SSL" are mutually exclusive, so only set one of those settings to True. {{ object_name }}: {{ object }} Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-07-27 05:36+0000
Last-Translator: Roberto Vasconcelos Novaes <rvnovaes@gmail.com>, 2022
Language-Team: Portuguese (Brazil) (https://app.transifex.com/rosarior/teams/13584/pt_BR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: pt_BR
Plural-Forms: nplurals=3; plural=(n == 0 || n == 1) ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
 %(count)dlink de ficheiro de documento em lista de espera para entrega de e-mail %(count)dlinks de ficheiro de documento em lista de espera para entrega de e-mail %(count)d ficheiro de documento em lista de espera para entrega de e-mail %(count)dlink de ficheiros em lista de espera para entrega de e-mailf %(count)d link de documento em fila para entrega de e-mail %(count)d links de documentos em fila para entrega de e-mail %(count)dlink de versão de documento em lista de espera para entrega de e-mail %(count)dlinks de versão de documento em lista de espera para entrega de e-mail %(count)dversão de documento em lista de espera para entrega de e-mail %(count)dversões de documento em lista de espera de e-mail %(email)s não é um e-mail válido. Um texto curto descrevendo o perfil de mailing. Endereço usado no cabeçalho "Cco" ao enviar o e-mail. Podem ser vários endereços separados por vírgula ou ponto e vírgula. Um modelo pode ser usado para fazer referência às propriedades do documento. Endereço usado no cabeçalho "Responder para" ao enviar o e-mail. Podem ser vários endereços separados por vírgula ou ponto e vírgula. Um modelo pode ser usado para fazer referência às propriedades do documento. Anexar um objeto ao e-mail Anexar a versão do documento exportada para o e-mail Anexado a este e-mail está {{ object_name }}: {{ object }}

--------
Este e-mail foi enviado de %(project_title)s(%(project_website)s) Anexo BCC Backend Dados do backend Caminho do backend Corpo Corpo do e-mail a ser enviado. Pode ser uma string ou um template. CC Criar um perfil de e-mail "%s" Criar um perfil de mailing Criar perfil de mailing Padrão Excluir Excluir um perfil de mailing Excluir um perfil de mailing: %s Backend SMTP do Django Backend baseado em arquivo do Django Ficheiro do documento Editar Editar um perfil de mailing Editar um perfil de mailing: %s Endereço de e-mail Endereço de e-mail do destinatário. Podem ser vários endereços separados por vírgula ou ponto e vírgula. Endereço de e-mail do destinatário. Podem ser vários endereços separados por vírgulas ou pontos e vírgulas. Um template pode ser usado para referênciar propriedades do documento. Ficheiro do documento de e-mail Link de ficheiro de documento de e-mail Link do documento do e-mail Versão do documento de e-mail Link de versão de documento de e-mail Versão de link de e-mail E-mail enviado Habilitado Caminho do arquivo De Host Se padrão, este perfil de mailing será preselecionado no formulário de mailing do documento. Rótulo Link para {{ nome_objeto }}: {{ objecto }}  Envio de emails Envio de e-mails Perfil de e-mail Perfil de envio criado Perfil de envio editado Perfil de mailing a ser usado para enviar o e-mail Perfis de e-mail Perfis de mailing são configurações de e-mail. Perfis de mailing permitem o envio de documentos como anexos ou como links via e-mail. Lista de perfis de e-mail Nova seleção de backend de perfil de mailing Nenhum perfil de mailing disponível Backend nulo Senha Senha do servidor SMTP. Esse valor é usado em conjunto com o nome de usário ao se autenticar no servidor SMTP. Se algum destes valores estiver vazio, a autenticação SMTP não será tentada. Porta Porta a ser usada para o servidor SMPT. Destinatário Responder para Enviar link do ficheiro de documento por e-mail Enviar ficheiro de documento por e-mail Enviar link do documento por e-mail Enviar link de versão de documento por e-mail Enviar versão de documento por e-mail Enviar documento por  e-mail Enviar objeto Enviar objeto por e-mail Assunto Assunto do e-mail. Pode ser uma string ou um template. Template para o texto do corpo do formulário de e-mail de documento. Pode incluir HTML. Modelo para a linha de assunto do e-mail de envio de documento. Template para o link do documento do corpo do formulário. Pode incluir HTML. Modelo para a linha de assunto do e-mail para envio do link do documento. Teste E-mail de teste para o Mayan EDMS E-mail de teste enviado. Testar perfil de mailing: %s O caminho pontudado da classe backend do Python. O driver a ser usado no envio de e-mails. O perfil de e-mail que será usado para enviar este e-mail. O host a ser usado para envio de e-mails. O endereço do remetente. Alguns sistemas podem recusar a enviar mensagens se este valor não for definido. Para aceder a {{ nome_objeto }} clique no link seguinte : {{ link }}

--------
este e-mail foi enviado de %(project_title)s(%(project_website)s) Usar SSL Usar TLS Usar um perfil de mainling Usuário Usuário do servidor SMTP. Se vazio, não será tentada autenticação. Ver um perfil de mailing Se deve ser usada a conexão TLS (segura) ao comunicar-se com o servidor SMTP. Essa é usada para conexões TLS explícitas, geralmente na porta 587. Define se deve ser utilizada uma conexão implícita TLS (segura) ao comunicar-se com o servidor SMTP. Na maior parte da documentação de e-mail este tipo de conexão TLS é conhecida como SSL. Geralmente é usada a porta 465. Se você está experimentando problemas, veja o parâmetro de TSL explícita "Use TLS" EMAIL_USE_TLS. Tenha em mente que "Use TLS" EMAIL_USE_TLS  e "Use SSL" EMAIL_USE_SSL são mutuamente excludentes, razão pela qual apenas um dos parâmetros pode ser True. {{ nome_objeto }}: {{ objecto }} 