FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .GURLGURLnull��� ��� TEXT 	 o      ���� 0 this_url this_URL��    k     X 
 
     l     ��  ��    7 1 Extract the numerical ID from the tv://XXXXX URI     �   b   E x t r a c t   t h e   n u m e r i c a l   I D   f r o m   t h e   t v : / / X X X X X   U R I      l     ��  ��    A ; display dialog this_URL buttons {"OK"} default button "OK"     �   v   d i s p l a y   d i a l o g   t h i s _ U R L   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   " O K "      l     ��������  ��  ��        l         r         l    	 ����  I    	���� 
�� .sysooffslong    ��� null��    ��   !
�� 
psof   m     " " � # #  / / ! �� $��
�� 
psin $ o    ���� 0 this_url this_URL��  ��  ��    o      ���� 0 x    $  Find the position of the "//"     � % % <   F i n d   t h e   p o s i t i o n   o f   t h e   " / / "   & ' & l    ( ) * ( r     + , + n     - . - 7   �� / 0
�� 
TEXT / l    1���� 1 [     2 3 2 o    ���� 0 x   3 m    ���� ��  ��   0 m    ������ . o    ���� 0 this_url this_URL , o      ���� 0 theid theID ) ( " Extract everything after the "//"    * � 4 4 D   E x t r a c t   e v e r y t h i n g   a f t e r   t h e   " / / " '  5 6 5 l   ��������  ��  ��   6  7 8 7 l   �� 9 :��   9 2 , Check if theID is an IP address or a number    : � ; ; X   C h e c k   i f   t h e I D   i s   a n   I P   a d d r e s s   o r   a   n u m b e r 8  < = < Z    0 > ?�� @ > E     A B A o    ���� 0 theid theID B m     C C � D D  . ? k   " , E E  F G F l  " "�� H I��   H 0 * Convert the IP address back to an integer    I � J J T   C o n v e r t   t h e   I P   a d d r e s s   b a c k   t o   a n   i n t e g e r G  K L K r   " * M N M I   " (�� O���� (0 convertiptointeger convertIPToInteger O  P�� P o   # $���� 0 theid theID��  ��   N o      ���� 0 theid theID L  Q�� Q l  + +�� R S��   R \ V display dialog "Converted IP to integer: " & theID buttons {"OK"} default button "OK"    S � T T �   d i s p l a y   d i a l o g   " C o n v e r t e d   I P   t o   i n t e g e r :   "   &   t h e I D   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   " O K "��  ��   @ k   / / U U  V W V l  / /�� X Y��   X , & Otherwise, assume it's a numerical ID    Y � Z Z L   O t h e r w i s e ,   a s s u m e   i t ' s   a   n u m e r i c a l   I D W  [�� [ l  / /�� \ ]��   \ S M display dialog "ID is a number: " & theID buttons {"OK"} default button "OK"    ] � ^ ^ �   d i s p l a y   d i a l o g   " I D   i s   a   n u m b e r :   "   &   t h e I D   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   " O K "��   =  _ ` _ l  1 1��������  ��  ��   `  a b a l  1 1�� c d��   c    Validate the extracted ID    d � e e 4   V a l i d a t e   t h e   e x t r a c t e d   I D b  f�� f Z   1 X g h�� i g >  1 4 j k j o   1 2���� 0 theid theID k m   2 3 l l � m m   h k   7 F n n  o p o l  7 7�� q r��   q #  Construct the TeamViewer URI    r � s s :   C o n s t r u c t   t h e   T e a m V i e w e r   U R I p  t u t r   7 < v w v b   7 : x y x m   7 8 z z � { { < t e a m v i e w e r 1 0 : / / c o n t r o l ? d e v i c e = y o   8 9���� 0 theid theID w o      ���� 0 teamvieweruri teamviewerURI u  | } | l  = =��������  ��  ��   }  ~  ~ l  = =�� � ���   � . ( Print the constructed URI for debugging    � � � � P   P r i n t   t h e   c o n s t r u c t e d   U R I   f o r   d e b u g g i n g   � � � l  = =�� � ���   � \ V display dialog "Constructed URI: " & teamviewerURI buttons {"OK"} default button "OK"    � � � � �   d i s p l a y   d i a l o g   " C o n s t r u c t e d   U R I :   "   &   t e a m v i e w e r U R I   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   " O K " �  � � � l  = =��������  ��  ��   �  � � � l  = =�� � ���   �   Open the TeamViewer URI    � � � � 0   O p e n   t h e   T e a m V i e w e r   U R I �  ��� � I  = F�� ���
�� .sysoexecTEXT���     TEXT � b   = B � � � m   = > � � � � � 
 o p e n   � n   > A � � � 1   ? A��
�� 
strq � o   > ?���� 0 teamvieweruri teamviewerURI��  ��  ��   i I  I X�� � �
�� .sysodlogaskr        TEXT � m   I J � � � � � d I n v a l i d   U R I .   P l e a s e   p r o v i d e   a   v a l i d   T e a m V i e w e r   I D . � �� � �
�� 
btns � J   K N � �  ��� � m   K L � � � � �  O K��   � �� ���
�� 
dflt � m   Q T � � � � �  O K��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 0 * Function to convert IP address to integer    � � � � T   F u n c t i o n   t o   c o n v e r t   I P   a d d r e s s   t o   i n t e g e r �  � � � i     � � � I      �� ����� (0 convertiptointeger convertIPToInteger �  ��� � o      ���� 0 	ipaddress 	ipAddress��  ��   � Q     w � � � � k    _ � �  � � � l   �� � ���   � J D Split the IP address into its four parts using text item delimiters    � � � � �   S p l i t   t h e   I P   a d d r e s s   i n t o   i t s   f o u r   p a r t s   u s i n g   t e x t   i t e m   d e l i m i t e r s �  � � � r    ' � � � I      �� ����� 0 splitstring splitString �  � � � o    ���� 0 	ipaddress 	ipAddress �  ��� � m     � � � � �  .��  ��   � J       � �  � � � o      ���� 
0 octet1   �  � � � o      ���� 
0 octet2   �  � � � o      ���� 
0 octet3   �  ��� � o      ���� 
0 octet4  ��   �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   � &   Ensure each octet is an integer    � � � � @   E n s u r e   e a c h   o c t e t   i s   a n   i n t e g e r �  � � � r   ( - � � � c   ( + � � � o   ( )���� 
0 octet1   � m   ) *��
�� 
long � o      ���� 
0 octet1   �  � � � r   . 3 � � � c   . 1 � � � o   . /���� 
0 octet2   � m   / 0��
�� 
long � o      ���� 
0 octet2   �  � � � r   4 9 � � � c   4 7 � � � o   4 5���� 
0 octet3   � m   5 6��
�� 
long � o      ���� 
0 octet3   �  � � � r   : ? � � � c   : = � � � o   : ;���� 
0 octet4   � m   ; <��
�� 
long � o      ���� 
0 octet4   �  � � � l  @ @��������  ��  ��   �  � � � l  @ @�� � ���   � = 7 Calculate the integer representation of the IP address    � � � � n   C a l c u l a t e   t h e   i n t e g e r   r e p r e s e n t a t i o n   o f   t h e   I P   a d d r e s s �  � � � r   @ S � � � [   @ Q � � � [   @ O � � � [   @ K � � � l  @ E ����� � ]   @ E � � � o   @ A���� 
0 octet1   � l  A D ����� � a   A D   m   A B����  m   B C���� ��  ��  ��  ��   � l  E J���� ]   E J o   E F���� 
0 octet2   l  F I���� a   F I m   F G����  m   G H���� ��  ��  ��  ��   � l  K N���� ]   K N	
	 o   K L���� 
0 octet3  
 m   L M���� ��  ��   � o   O P�� 
0 octet4   � o      �~�~ 0 ipint ipInt �  l  T T�}�|�{�}  �|  �{    l  T T�z�z   5 / Convert to string to avoid scientific notation    � ^   C o n v e r t   t o   s t r i n g   t o   a v o i d   s c i e n t i f i c   n o t a t i o n  r   T \ I   T Z�y�x�y .0 convertnumbertostring convertNumberToString �w o   U V�v�v 0 ipint ipInt�w  �x   o      �u�u 0 ipint ipInt �t L   ] _ o   ] ^�s�s 0 ipint ipInt�t   � R      �r�q
�r .ascrerr ****      � **** o      �p�p 0 errmsg errMsg�q   � k   g w  I  g t�o
�o .sysodlogaskr        TEXT b   g j !  m   g h"" �## @ E r r o r   c o n v e r t i n g   I P   t o   i n t e g e r :  ! o   h i�n�n 0 errmsg errMsg �m$%
�m 
btns$ J   k n&& '�l' m   k l(( �))  O K�l  % �k*�j
�k 
dflt* m   o p++ �,,  O K�j   -�i- L   u w.. m   u v// �00  �i   � 121 l     �h�g�f�h  �g  �f  2 343 l     �e56�e  5 U O Function to convert large numbers to string format without scientific notation   6 �77 �   F u n c t i o n   t o   c o n v e r t   l a r g e   n u m b e r s   t o   s t r i n g   f o r m a t   w i t h o u t   s c i e n t i f i c   n o t a t i o n4 898 i    :;: I      �d<�c�d .0 convertnumbertostring convertNumberToString< =�b= o      �a�a 0 	thenumber 	theNumber�b  �c  ; k    V>> ?@? r     ABA c     CDC o     �`�` 0 	thenumber 	theNumberD m    �_
�_ 
TEXTB o      �^�^ "0 thenumberstring theNumberString@ EFE r    GHG I   �]�\I
�] .sysooffslong    ��� null�\  I �[JK
�[ 
psofJ m    	LL �MM  EK �ZN�Y
�Z 
psinN o   
 �X�X "0 thenumberstring theNumberString�Y  H o      �W�W 0 	theoffset 	theOffsetF OPO Z   QR�V�UQ =    STS o    �T�T 0 	theoffset 	theOffsetT m    �S�S  R L    UU o    �R�R "0 thenumberstring theNumberString�V  �U  P VWV r    .XYX n    ,Z[Z 7    ,�Q\]
�Q 
ctxt\ m   $ &�P�P ] l  ' +^�O�N^ \   ' +_`_ o   ( )�M�M 0 	theoffset 	theOffset` m   ) *�L�L �O  �N  [ o     �K�K "0 thenumberstring theNumberStringY o      �J�J 0 	theprefix 	thePrefixW aba r   / 2cdc m   / 0ee �ff  d o      �I�I 40 theconvertednumberprefix theConvertedNumberPrefixb ghg Z   3 Zij�H�Gi C  3 6klk o   3 4�F�F 0 	theprefix 	thePrefixl m   4 5mm �nn  -j k   9 Voo pqp r   9 <rsr m   9 :tt �uu  -s o      �E�E 40 theconvertednumberprefix theConvertedNumberPrefixq v�Dv Z   = Vwx�Cyw =   = @z{z o   = >�B�B 0 	theprefix 	thePrefix{ m   > ?|| �}}  -x r   C F~~ m   C D�� ���   o      �A�A 0 	theprefix 	thePrefix�C  y r   I V��� n   I T��� 7  J T�@��
�@ 
ctxt� m   N P�?�? � m   Q S�>�>��� o   I J�=�= 0 	theprefix 	thePrefix� o      �<�< 0 	theprefix 	thePrefix�D  �H  �G  h ��� r   [ l��� c   [ j��� l  [ h��;�:� n   [ h��� 7  \ h�9��
�9 
ctxt� l  ` d��8�7� [   ` d��� o   a b�6�6 0 	theoffset 	theOffset� m   b c�5�5 �8  �7  � m   e g�4�4��� o   [ \�3�3 "0 thenumberstring theNumberString�;  �:  � m   h i�2
�2 
nmbr� o      �1�1 ,0 thedecimaladjustment theDecimalAdjustment� ��� r   m r��� A  m p��� o   m n�0�0 ,0 thedecimaladjustment theDecimalAdjustment� m   n o�/�/  � o      �.�. :0 isnegativedecimaladjustment isNegativeDecimalAdjustment� ��� Z   s ����-�,� o   s t�+�+ :0 isnegativedecimaladjustment isNegativeDecimalAdjustment� k   w ��� ��� r   w ���� c   w ~��� l  w |��*�)� n   w |��� 1   z |�(
�( 
rvse� l  w z��'�&� n   w z��� 2  x z�%
�% 
cha � o   w x�$�$ 0 	theprefix 	thePrefix�'  �&  �*  �)  � m   | }�#
�# 
TEXT� o      �"�" 0 	theprefix 	thePrefix� ��!� r   � ���� d   � ��� o   � �� �  ,0 thedecimaladjustment theDecimalAdjustment� o      �� ,0 thedecimaladjustment theDecimalAdjustment�!  �-  �,  � ��� r   � ���� I  � ����
� .sysooffslong    ��� null�  � ���
� 
psof� m   � ��� ���  .� ���
� 
psin� o   � ��� 0 	theprefix 	thePrefix�  � o      �� $0 thedecimaloffset theDecimalOffset� ��� Z   � ������ =   � ���� o   � ��� $0 thedecimaloffset theDecimalOffset� m   � ���  � r   � ���� m   � ��� ���  � o      �� 0 thefirstpart theFirstPart�  � r   � ���� n   � ���� 7  � ����
� 
ctxt� m   � ��� � l  � ����� \   � ���� o   � ��� $0 thedecimaloffset theDecimalOffset� m   � ��� �  �  � o   � ��� 0 	theprefix 	thePrefix� o      �� 0 thefirstpart theFirstPart� ��� r   � ���� n   � ���� 7  � ����
� 
ctxt� l  � ���
�	� [   � ���� o   � ��� $0 thedecimaloffset theDecimalOffset� m   � ��� �
  �	  � m   � ������ o   � ��� 0 	theprefix 	thePrefix� o      �� 0 thesecondpart theSecondPart� ��� r   � ���� o   � ��� 0 thefirstpart theFirstPart� o      �� (0 theconvertednumber theConvertedNumber� ��� r   � ���� o   � ��� ,0 thedecimaladjustment theDecimalAdjustment� o      � �   0 therepeatcount theRepeatCount� ��� Z  � �������� ?  � ���� l  � ������� n   � ���� 1   � ���
�� 
leng� o   � ����� 0 thesecondpart theSecondPart��  ��  � o   � �����  0 therepeatcount theRepeatCount� r   � ���� n   � ���� 1   � ���
�� 
leng� o   � ����� 0 thesecondpart theSecondPart� o      ����  0 therepeatcount theRepeatCount��  ��  � ��� Y   �+�������� k   �&�� ��� Q   ����� r   � ���� b   � ���� o   � ����� (0 theconvertednumber theConvertedNumber� n   � ���� 4   � ��� 
�� 
cha   o   � ����� 0 a  � o   � ����� 0 thesecondpart theSecondPart� o      ���� (0 theconvertednumber theConvertedNumber� R      ������
�� .ascrerr ****      � ****��  ��  � r   � b   � o   � ���� (0 theconvertednumber theConvertedNumber m    �  0 o      ���� (0 theconvertednumber theConvertedNumber� �� Z &	���� F  

 =  
 o  ���� 0 a   o  	���� ,0 thedecimaladjustment theDecimalAdjustment >  o  ���� 0 a   l ���� n   1  ��
�� 
leng o  ���� 0 thesecondpart theSecondPart��  ��  	 r  " b    o  ���� (0 theconvertednumber theConvertedNumber m   �  . o      ���� (0 theconvertednumber theConvertedNumber��  ��  ��  �� 0 a  � m   � ����� � o   � �����  0 therepeatcount theRepeatCount��  �  Z ,?���� D  ,1 o  ,-���� (0 theconvertednumber theConvertedNumber m  -0 �    . r  4;!"! b  49#$# o  45���� (0 theconvertednumber theConvertedNumber$ m  58%% �&&  0" o      ���� (0 theconvertednumber theConvertedNumber��  ��   '(' Z @Q)*����) o  @A���� :0 isnegativedecimaladjustment isNegativeDecimalAdjustment* r  DM+,+ c  DK-.- l DI/����/ n  DI010 1  GI��
�� 
rvse1 l DG2����2 n  DG343 2 EG��
�� 
cha 4 o  DE���� (0 theconvertednumber theConvertedNumber��  ��  ��  ��  . m  IJ��
�� 
TEXT, o      ���� (0 theconvertednumber theConvertedNumber��  ��  ( 5��5 L  RV66 b  RU787 o  RS���� 40 theconvertednumberprefix theConvertedNumberPrefix8 o  ST���� (0 theconvertednumber theConvertedNumber��  9 9:9 l     ��������  ��  ��  : ;<; l     ��=>��  = 0 * Function to split a string by a delimiter   > �?? T   F u n c t i o n   t o   s p l i t   a   s t r i n g   b y   a   d e l i m i t e r< @A@ i    BCB I      ��D���� 0 splitstring splitStringD EFE o      ���� 0 
somestring 
someStringF G��G o      ���� 0 	delimiter  ��  ��  C k     pHH IJI Q     hKLMK k    KNN OPO l   QRSQ r    TUT n   VWV 1    ��
�� 
txdlW 1    ��
�� 
ascrU o      ���� 0 temptid tempTIDR   Save current delimiters   S �XX 0   S a v e   c u r r e n t   d e l i m i t e r sP YZY r   	 [\[ o   	 
���� 0 	delimiter  \ n     ]^] 1    ��
�� 
txdl^ 1   
 ��
�� 
ascrZ _`_ l   abca r    ded n    fgf 2   ��
�� 
citmg o    ���� 0 
somestring 
someStringe o      ���� 
0 pieces  b   Split the string   c �hh "   S p l i t   t h e   s t r i n g` iji l   klmk r    non o    ���� 0 temptid tempTIDo n     pqp 1    ��
�� 
txdlq 1    ��
�� 
ascrl   Restore old delimiters   m �rr .   R e s t o r e   o l d   d e l i m i t e r sj sts l   ��������  ��  ��  t uvu Z   -wx����w >   "yzy l    {����{ I    ��|��
�� .corecnte****       ****| o    ���� 
0 pieces  ��  ��  ��  z m     !���� x R   % )��}��
�� .ascrerr ****      � ****} m   ' (~~ � 2 I n v a l i d   I P   a d d r e s s   f o r m a t��  ��  ��  v ��� r   . 4��� n   . 2��� 4   / 2���
�� 
cobj� m   0 1���� � o   . /���� 
0 pieces  � o      ���� 0 	firstpart 	firstPart� ��� r   5 ;��� n   5 9��� 4   6 9���
�� 
cobj� m   7 8���� � o   5 6���� 
0 pieces  � o      ���� 0 
secondpart 
secondPart� ��� r   < B��� n   < @��� 4   = @���
�� 
cobj� m   > ?���� � o   < =���� 
0 pieces  � o      ���� 0 	thirdpart 	thirdPart� ��� r   C I��� n   C G��� 4   D G���
�� 
cobj� m   E F���� � o   C D���� 
0 pieces  � o      ���� 0 
fourthpart 
fourthPart� ���� l  J J��������  ��  ��  ��  L R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmess  ��  M l  S h���� k   S h�� ��� I  S `����
�� .sysodlogaskr        TEXT� b   S V��� m   S T�� ��� ( E r r o r   s p l i t t i n g   I P :  � o   T U���� 0 errmess  � ����
�� 
btns� J   W Z�� ���� m   W X�� ���  O K��  � �����
�� 
dflt� m   [ \�� ���  O K��  � ���� l  a h���� L   a h�� J   a g�� ��� m   a b����  � ��� m   b c����  � ��� m   c d����  � ���� m   d e����  ��  � &   Return 0s for invalid IP format   � ��� @   R e t u r n   0 s   f o r   i n v a l i d   I P   f o r m a t��  � / ) Handle error in case of incorrect format   � ��� R   H a n d l e   e r r o r   i n   c a s e   o f   i n c o r r e c t   f o r m a tJ ���� L   i p�� J   i o�� ��� o   i j���� 0 	firstpart 	firstPart� ��� o   j k���� 0 
secondpart 
secondPart� ��� o   k l�� 0 	thirdpart 	thirdPart� ��~� o   l m�}�} 0 
fourthpart 
fourthPart�~  ��  A ��|� l     �{�z�y�{  �z  �y  �|       �x������x  � �w�v�u�t
�w .GURLGURLnull��� ��� TEXT�v (0 convertiptointeger convertIPToInteger�u .0 convertnumbertostring convertNumberToString�t 0 splitstring splitString� �s �r�q���p
�s .GURLGURLnull��� ��� TEXT�r 0 this_url this_URL�q  � �o�n�m�l�o 0 this_url this_URL�n 0 x  �m 0 theid theID�l 0 teamvieweruri teamviewerURI� �k "�j�i�h�g C�f l z ��e�d ��c ��b ��a
�k 
psof
�j 
psin�i 
�h .sysooffslong    ��� null
�g 
TEXT�f (0 convertiptointeger convertIPToInteger
�e 
strq
�d .sysoexecTEXT���     TEXT
�c 
btns
�b 
dflt
�a .sysodlogaskr        TEXT�p Y*���� E�O�[�\[Z�l\Zi2E�O�� *�k+ E�OPY hO�� �%E�O��,%j Y ���kva a � � �` ��_�^���]�` (0 convertiptointeger convertIPToInteger�_ �\��\ �  �[�[ 0 	ipaddress 	ipAddress�^  � �Z�Y�X�W�V�U�T�Z 0 	ipaddress 	ipAddress�Y 
0 octet1  �X 
0 octet2  �W 
0 octet3  �V 
0 octet4  �U 0 ipint ipInt�T 0 errmsg errMsg�  ��S�R�Q�P�O�N�M�L"�K(�J+�I/�S 0 splitstring splitString
�R 
cobj�Q 
�P 
long�O �N .0 convertnumbertostring convertNumberToString�M 0 errmsg errMsg�L  
�K 
btns
�J 
dflt
�I .sysodlogaskr        TEXT�] x a*��l+ E[�k/E�Z[�l/E�Z[�m/E�Z[��/E�ZO��&E�O��&E�O��&E�O��&E�O��m$ ��l$ �� �E�O*�k+ E�O�W X  �%��kv��� O�� �H;�G�F���E�H .0 convertnumbertostring convertNumberToString�G �D��D �  �C�C 0 	thenumber 	theNumber�F  � �B�A�@�?�>�=�<�;�:�9�8�7�6�B 0 	thenumber 	theNumber�A "0 thenumberstring theNumberString�@ 0 	theoffset 	theOffset�? 0 	theprefix 	thePrefix�> 40 theconvertednumberprefix theConvertedNumberPrefix�= ,0 thedecimaladjustment theDecimalAdjustment�< :0 isnegativedecimaladjustment isNegativeDecimalAdjustment�; $0 thedecimaloffset theDecimalOffset�: 0 thefirstpart theFirstPart�9 0 thesecondpart theSecondPart�8 (0 theconvertednumber theConvertedNumber�7  0 therepeatcount theRepeatCount�6 0 a  � �5�4L�3�2�1�0emt|��/�.�-���,�+�*�)%
�5 
TEXT
�4 
psof
�3 
psin�2 
�1 .sysooffslong    ��� null
�0 
ctxt
�/ 
nmbr
�. 
cha 
�- 
rvse
�, 
leng�+  �*  
�) 
bool�EW��&E�O*���� E�O�j  �Y hO�[�\[Zk\Z�k2E�O�E�O�� "�E�O��  �E�Y �[�\[Zl\Zi2E�Y hO�[�\[Z�k\Zi2�&E�O�jE�O� ��-�,�&E�O�'E�Y hO*���� E�O�j  
a E�Y �[�\[Zk\Z�k2E�O�[�\[Z�k\Zi2E�O�E�O�E�O�a ,� �a ,E�Y hO Hk�kh  ����/%E�W X  �a %E�O�� 	 ��a ,a & �a %E�Y h[OY��O�a  �a %E�Y hO� ��-�,�&E�Y hO��%� �(C�'�&���%�( 0 splitstring splitString�' �$��$ �  �#�"�# 0 
somestring 
someString�" 0 	delimiter  �&  � 	�!� ��������! 0 
somestring 
someString�  0 	delimiter  � 0 temptid tempTID� 
0 pieces  � 0 	firstpart 	firstPart� 0 
secondpart 
secondPart� 0 	thirdpart 	thirdPart� 0 
fourthpart 
fourthPart� 0 errmess  � �����~���������
� 
ascr
� 
txdl
� 
citm
� .corecnte****       ****� 
� 
cobj� 0 errmess  �  
� 
btns
� 
dflt
� .sysodlogaskr        TEXT�% q M��,E�O���,FO��-E�O���,FO�j � 	)j�Y hO��k/E�O��l/E�O��m/E�O���/E�OPW X  �%��kv��� Ojjjj�vO�����vascr  ��ޭ