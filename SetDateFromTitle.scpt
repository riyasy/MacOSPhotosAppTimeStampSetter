FasdUAS 1.101.10   ��   ��    k             l      ��  ��    

Batch change the timestamp of multiple files at once
When files from old cameras are imported 
into Photos app, the date of the file gets set
to the imported time. Ideally we expect the time
to be taken from the exif or from the created or
modified time stamp. But this doesn't happen for 
some files.
This causes the file to be shown on the wrong 
time line. Taking each photo or video  and adjusting the 
timestamp is difficult.
This script takes the timestamp from the filename
and sets it to date attribute which is used by
Photos app.
The script requires the filename to start with 
the following format
YYYYMMDD_HHMMSS.
If your current file name is not in this format,
please use some tool to change it to that format
first.
I use Advanced Renamer tool in Windows.
I usually rename all photos/videos from
all my photos and cameras in this format
for easy searching.

Some Ideas were borrowed from these links.
https://gist.github.com/RichardHyde/3386ac57b55455b71140
https://discussions.apple.com/docs/DOC-250000327

     � 	 	   
 
 B a t c h   c h a n g e   t h e   t i m e s t a m p   o f   m u l t i p l e   f i l e s   a t   o n c e 
 W h e n   f i l e s   f r o m   o l d   c a m e r a s   a r e   i m p o r t e d   
 i n t o   P h o t o s   a p p ,   t h e   d a t e   o f   t h e   f i l e   g e t s   s e t 
 t o   t h e   i m p o r t e d   t i m e .   I d e a l l y   w e   e x p e c t   t h e   t i m e 
 t o   b e   t a k e n   f r o m   t h e   e x i f   o r   f r o m   t h e   c r e a t e d   o r 
 m o d i f i e d   t i m e   s t a m p .   B u t   t h i s   d o e s n ' t   h a p p e n   f o r   
 s o m e   f i l e s . 
 T h i s   c a u s e s   t h e   f i l e   t o   b e   s h o w n   o n   t h e   w r o n g   
 t i m e   l i n e .   T a k i n g   e a c h   p h o t o   o r   v i d e o     a n d   a d j u s t i n g   t h e   
 t i m e s t a m p   i s   d i f f i c u l t . 
 T h i s   s c r i p t   t a k e s   t h e   t i m e s t a m p   f r o m   t h e   f i l e n a m e 
 a n d   s e t s   i t   t o   d a t e   a t t r i b u t e   w h i c h   i s   u s e d   b y 
 P h o t o s   a p p . 
 T h e   s c r i p t   r e q u i r e s   t h e   f i l e n a m e   t o   s t a r t   w i t h   
 t h e   f o l l o w i n g   f o r m a t 
 Y Y Y Y M M D D _ H H M M S S . 
 I f   y o u r   c u r r e n t   f i l e   n a m e   i s   n o t   i n   t h i s   f o r m a t , 
 p l e a s e   u s e   s o m e   t o o l   t o   c h a n g e   i t   t o   t h a t   f o r m a t 
 f i r s t . 
 I   u s e   A d v a n c e d   R e n a m e r   t o o l   i n   W i n d o w s . 
 I   u s u a l l y   r e n a m e   a l l   p h o t o s / v i d e o s   f r o m 
 a l l   m y   p h o t o s   a n d   c a m e r a s   i n   t h i s   f o r m a t 
 f o r   e a s y   s e a r c h i n g . 
 
 S o m e   I d e a s   w e r e   b o r r o w e d   f r o m   t h e s e   l i n k s . 
 h t t p s : / / g i s t . g i t h u b . c o m / R i c h a r d H y d e / 3 3 8 6 a c 5 7 b 5 5 4 5 5 b 7 1 1 4 0 
 h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / d o c s / D O C - 2 5 0 0 0 0 3 2 7 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l      ��  ��    ( " select at least 1 file in Photos      �   D   s e l e c t   a t   l e a s t   1   f i l e   i n   P h o t o s        l   # ����  O    #    k   "       I   	������
�� .miscactvnull��� ��� null��  ��        r   
      l  
  !���� ! e   
  " " 1   
 ��
�� 
selc��  ��     o      ���� 0 selectedfile selectedFile   # $ # Z    % &�� ' % G     ( ) ( l    *���� * =    + , + o    ���� 0 selectedfile selectedFile , J    ����  ��  ��   ) l    -���� - A     . / . l    0���� 0 n     1 2 1 1    ��
�� 
leng 2 o    ���� 0 selectedfile selectedFile��  ��   / m    ���� ��  ��   & R   " &�� 3��
�� .ascrerr ****      � **** 3 m   $ % 4 4 � 5 5 B P l e a s e   s e l e c t   a t   l e a s t   o n e   i m a g e .��  ��   ' k   ) 6 6  7 8 7 l  ) )��������  ��  ��   8  9�� 9 Y   ) :�� ; <�� : k   7 = =  > ? > l  7 7��������  ��  ��   ?  @ A @ r   7 = B C B n   7 ; D E D 4   8 ;�� F
�� 
cobj F o   9 :���� 0 i   E o   7 8���� 0 selectedfile selectedFile C o      ���� 0 currentfile currentFile A  G H G r   > E I J I c   > C K L K l  > A M���� M l  > A N���� N n   > A O P O m   ? A��
�� 
ldt  P o   > ?���� 0 currentfile currentFile��  ��  ��  ��   L m   A B��
�� 
ldt  J o      ���� ,0 currentfiletimestamp currentFileTimeStamp H  Q R Q l  F F��������  ��  ��   R  S T S r   F K U V U n   F I W X W 1   G I��
�� 
filn X o   F G���� 0 currentfile currentFile V o      ���� *0 currentfilefilename currentFileFileName T  Y Z Y l  L L��������  ��  ��   Z  [ \ [ r   L S ] ^ ] l  L Q _���� _ I  L Q������
�� .misccurdldt    ��� null��  ��  ��  ��   ^ o      ���� &0 adjustedtimestamp adjustedTimeStamp \  ` a ` r   T _ b c b l  T Y d���� d c   T Y e f e m   T U����  f m   U X��
�� 
long��  ��   c l      g���� g n       h i h m   Z ^��
�� 
mnth i o   Y Z���� &0 adjustedtimestamp adjustedTimeStamp��  ��   a  j k j r   ` k l m l l  ` e n���� n c   ` e o p o m   ` a����  p m   a d��
�� 
long��  ��   m l      q���� q n       r s r 1   f j��
�� 
day  s o   e f���� &0 adjustedtimestamp adjustedTimeStamp��  ��   k  t u t l  l l��������  ��  ��   u  v w v r   l � x y x l  l { z���� z n   l { { | { 7  m {�� } ~
�� 
ctxt } m   s u����  ~ m   v z����  | o   l m���� *0 currentfilefilename currentFileFileName��  ��   y l      ����  n       � � � 1   | ���
�� 
year � o   { |���� &0 adjustedtimestamp adjustedTimeStamp��  ��   w  � � � r   � � � � � l  � � ����� � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � �����  � m   � �����  � o   � ����� *0 currentfilefilename currentFileFileName��  ��   � l      ����� � n       � � � m   � ���
�� 
mnth � o   � ����� &0 adjustedtimestamp adjustedTimeStamp��  ��   �  � � � r   � � � � � l  � � ����� � n   � � � � � 7  � ��� � �
�� 
ctxt � m   � �����  � m   � �����  � o   � ����� *0 currentfilefilename currentFileFileName��  ��   � l      ����� � n       � � � 1   � ���
�� 
day  � o   � ����� &0 adjustedtimestamp adjustedTimeStamp��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � �����   � l      ����� � n       � � � 1   � ���
�� 
time � o   � ����� &0 adjustedtimestamp adjustedTimeStamp��  ��   �  � � � l  � ���~�}�  �~  �}   �  � � � r   � � � � � l  � � ��|�{ � n   � � � � � 7  � ��z � �
�z 
ctxt � m   � ��y�y 
 � m   � ��x�x  � o   � ��w�w *0 currentfilefilename currentFileFileName�|  �{   � l      ��v�u � n       � � � 1   � ��t
�t 
hour � o   � ��s�s &0 adjustedtimestamp adjustedTimeStamp�v  �u   �  � � � r   � � � � � l  � � ��r�q � n   � � � � � 7  � ��p � �
�p 
ctxt � m   � ��o�o  � m   � ��n�n  � o   � ��m�m *0 currentfilefilename currentFileFileName�r  �q   � l      ��l�k � n       � � � 1   � ��j
�j 
min  � o   � ��i�i &0 adjustedtimestamp adjustedTimeStamp�l  �k   �  � � � r   � � � � l  � � ��h�g � n   � � � � � 7  � ��f � �
�f 
ctxt � m   � ��e�e  � m   � ��d�d  � o   � ��c�c *0 currentfilefilename currentFileFileName�h  �g   � l      ��b�a � n       � � � m   � �`
�` 
scnd � o   � ��_�_ &0 adjustedtimestamp adjustedTimeStamp�b  �a   �  � � � l �^�]�\�^  �]  �\   �  � � � l �[�Z�Y�[  �Z  �Y   �  � � � O   � � � r   � � � c  	 � � � l  ��X�W � o  �V�V &0 adjustedtimestamp adjustedTimeStamp�X  �W   � m  �U
�U 
ldt  � l      ��T�S � n       � � � m  
�R
�R 
ldt  � o  	
�Q�Q 0 currentfile currentFile�T  �S   � o  �P�P 0 currentfile currentFile �  � � � l �O�N�M�O  �N  �M   �  ��L � l �K�J�I�K  �J  �I  �L  �� 0 i   ; m   , -�H�H  < I  - 2�G ��F
�G .corecnte****       **** � o   - .�E�E 0 selectedfile selectedFile�F  ��  ��   $  ��D � L  " � � b  ! � � � b   � � � m   � � � � � < A d j u s t e d   t h e   d a t e   a n d   t i m e   o f   � l  ��C�B � l  ��A�@ � n   � � � 1  �?
�? 
leng � o  �>�> 0 selectedfile selectedFile�A  �@  �C  �B   � m    � � � � �    v i d e o s�D    m      � �|                                                                                  Phts  alis      mac                            BD ����
Photos.app                                                     ����            ����  
 cu             Applications  !/:System:Applications:Photos.app/    
 P h o t o s . a p p    m a c  System/Applications/Photos.app  / ��  ��  ��     � � � l     �=�<�;�=  �<  �;   �  ��: � l     �9�8�7�9  �8  �7  �:       �6 � ��6   � �5
�5 .aevtoappnull  �   � **** � �4 ��3�2 � ��1
�4 .aevtoappnull  �   � **** � k    # � �  �0�0  �3  �2   � �/�/ 0 i   � & ��.�-�,�+�* 4�)�(�'�&�%�$�#�"�!� ������������������� � �
�. .miscactvnull��� ��� null
�- 
selc�, 0 selectedfile selectedFile
�+ 
leng
�* 
bool
�) .corecnte****       ****
�( 
cobj�' 0 currentfile currentFile
�& 
ldt �% ,0 currentfiletimestamp currentFileTimeStamp
�$ 
filn�# *0 currentfilefilename currentFileFileName
�" .misccurdldt    ��� null�! &0 adjustedtimestamp adjustedTimeStamp
�  
long
� 
mnth
� 
day 
� 
ctxt� 
� 
year� � � � 
� 
time� 
� 
� 
hour� � 
� 
min � � 
� 
scnd�1$� *j O*�,EE�O�jv 
 	��,k�& 	)j�Y � �k�j kh  ��/E�O��,�&E�O��,E�O*j E�Oka &�a ,FOka &�a ,FO�[a \[Zk\Za 2�a ,FO�[a \[Za \Za 2�a ,FO�[a \[Za \Za 2�a ,FOj�a ,FO�[a \[Za \Za 2�a ,FO�[a \[Za \Za 2�a  ,FO�[a \[Za !\Za "2�a #,FO� 	��&��,FUOP[OY�!Oa $��,%a %%Uascr  ��ޭ