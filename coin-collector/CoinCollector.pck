GDPC                �                                                                         `   res://.godot/exported/133200997/export-58402a616f40e2811fe184d99d8746b5-CoinCollectorLevel.scn          �      q_��|<�����?��&    P   res://.godot/exported/133200997/export-cfd538a465b9799b811984d89e43d2b9-coin.scn�            ���LsB�T�s�    ,   res://.godot/global_script_class_cache.cfg  0%             ��Р�8���8~$}P�    D   res://.godot/imported/Coin.png-c2cd5c0bdd61476fb24bcd9448984ab7.ctex             ����mB����i:Mm    H   res://.godot/imported/Player.png-0662117005c6b9039deb63a286c8efe4.ctex  �      �      �Yo� �����9(�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �Yz=������������       res://.godot/uid_cache.bin  )      x      V�Ωr���`��ֻ    ,   res://Scenes/CoinCollectorLevel.tscn.remap  P$      o       �p�p�~�E�6�'e       res://Scenes/coin.tscn.remap�$      a       �HkH�A)�k��       res://Scripts/Coin.gd   �      i       �]џn��l�y�,��       res://Scripts/Player.gd        �      YR$e��W7C;���_�        res://Sprites/Coin.png.import          �       �52�A��o�ei��        res://Sprites/Player.png.import �      �       �),�����iĕ       res://icon.svg  P%      �      C��=U���^Qu��U3       res://icon.svg.import   �#      �       |��>}	����#~�|�       res://project.binary�*      ?      =�H��v�Z��è%?W    RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Scripts/Player.gd ��������
   Texture2D    res://Sprites/Player.png ����^R   PackedScene    res://Scenes/coin.tscn ���ە�?      local://RectangleShape2D_3x305 �         local://PackedScene_qm7bv �         RectangleShape2D       
     TB  �B         PackedScene          	         names "         Node2D    Player    script    CharacterBody2D    Sprite    texture 	   Sprite2D    CollisionShape2D 	   position    shape 	   Camera2D    zoom    Coin    scale    Coin2    Coin3    Coin4    Coin5    Coin6    Coin7    Coin8    Coin9    Coin10    	   variants                          
      �  pA          
     �?  �?         
   �~?  �?
     �  #C
     @@  ��
     lC  �
    ��C  �B
    �%�  LB
    ���  �A
     ��  �
     �B  |C
    ��C  ��      node_count             nodes     �   ��������        ����                      ����                           ����                          ����         	                 
   
   ����                     ���                           ���                           ���                           ���            	               ���            
               ���                           ���                           ���                           ���                           ���                         conn_count              conns               node_paths              editable_instances              version             RSRC��u�?�@RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://Scripts/Coin.gd ��������
   Texture2D    res://Sprites/Coin.png fPB���2      local://CircleShape2D_ndyfs �         local://PackedScene_dsru6 �         CircleShape2D            `A         PackedScene          	         names "   
      Coin 	   position    script    Area2D    texture 	   Sprite2D    CollisionShape2D    shape    _on_body_entered    body_entered    	   variants       
     h�   �                                   node_count             nodes        ��������       ����                                   ����                           ����                   conn_count             conns                	                       node_paths              editable_instances              version             RSRC�extends CharacterBody2D

var move_speed : float = 200.0

func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
		
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
		
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
		
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
		
	velocity *= move_speed

	move_and_slide()
��2��extends Area2D



func _on_body_entered(body):
	body.scale.x += 0.2
	body.scale.y += 0.2
	
	queue_free()
����З1GST2   @   @      ����               @ @        �   RIFF�   WEBPVP8L�   /?�������vx��=�	�o�m���!<�+�?�d��t��3����!�0��딚�0��mG3����;%v�\���i�86t����f��y=�C*�a�aX�G*XD���j`]7Q�@�W1հ���)� g�J�!���.S�s9��X�����6Y�?�ޤ��I./@V�!%bĝ��$��Ҁ���.ð���eF���[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bsa3nrhh6q4gw"
path="res://.godot/imported/Coin.png-c2cd5c0bdd61476fb24bcd9448984ab7.ctex"
metadata={
"vram_texture": false
}
 ʧ�|�l=C�¸�XGGST2   `   `      ����               ` `        �  RIFF�  WEBPVP8L�  /_����mW�ڇn	��%9�ݕ�b$I���}�h��1?V�j�m#I������������tٶ��K�k@hbTm@i�7��S���:�`���P� [�	D K$�� �m�F]�ɂ�c�2F@`�s,A(C��1@�fKP2�_Z��?���L��HC0"EJc�"�q��p��$���jWm��RH<J� ��$;i��R�W�����m�C69�j�T:��� !-v-�*��z����v%�R-rm㱸r9�7ſ����p��>��-��������O�hk?-�=��.���V�h�~�ip9΃��ip���ip9?\�Y{�|}.�?O�|h�c;�q�
����"����1��_����=G��k��F��k�����hTS5�d���vf'�Vl�7�m�۫ۋ;�Vq����羥难�xOD�!�m#I���=2��#��K����h[���M�<�ISgZ�x��i����Q�ނia�.l���Z�l�R��9�7���]dT<�]6�Mf������"[�V��UG�&$��R������"L��L���:R��W���B�3�Y��t��R�EB�R� �8��J\%����ꏟ�|5��O��Յ/_���JX�����VPY^^^-C'��:*�1���1�+d!��"�+B~��J����!5��R)SY��Xi��T-V�b�����Q,ucTpģX�t3��O�G������_���Q��B��O�z���+6YU��RW^^�b4XUu���`�Y���K���ޔ��)STX˚��ej
X��������7΀ժ�];g�\0_�����2˧N]�ּ\�v���&���h�Z�U�5cƎ7Q��k���]�~ߨQ�Ǆ�����mݪB�7��6n�j��:8t���J���C�N��An�6� �7i�w{^�С�D�N�t�;�D���ҩ���w�ڝ����'��W��z=�o�dg�ٹ��7ϟ������-C��;������t�'�����mBo
7o�e���/�W����S����I�C�SR���H�{�x�L�7#H9L�6�	�2`ࠔ��H��k�Oك��?��S)���& ���_�)�)d~f������{�S�1�u�����a2Bw�ޭg�~pB�0��.3�C�%KA�~�z��1B��1�s��]鉱!�SZR�����ݸqW�x��٭k�.����}�f�S���ٗ�A$��<�KS��Mq�8��s�������)�o�Ou8��\&� ����$�~���:J4AqD�DN�1Ӕ�h7dF��MK��B�5�WTZZ��y1�5��д 	C�MLV�K�:��4mlO�*'/y47U��x'd�3B4�hNZ߾A$G��8���"�f��p��t2
4M��J"=2���r6���r���$7A�7:�	a���z��C(y�Fy<��&E{	��sC��c�1�n:�����.��p8D�j���c���1I>��>3,Bt��ٙw-�s�\8��G9~��p��6[��6w ����e=�"�Õ(��jK7��r��/!�%�`��)�r9'���nĘ�M%�0F����� O$����m�6ˮm�lW)�H�C>j$�ƅ��!���d�7�R�.Ȇ1ơ]�Cd �:� [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cqtb5gl24waan"
path="res://.godot/imported/Player.png-0662117005c6b9039deb63a286c8efe4.ctex"
metadata={
"vram_texture": false
}
 �H;u�Y�'GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح����mow�*��f�&��Cp�ȑD_��ٮ}�)� C+���UE��tlp�V/<p��ҕ�ig���E�W�����Sթ�� ӗ�A~@2�E�G"���~ ��5tQ#�+�@.ݡ�i۳�3�5�l��^c��=�x�Н&rA��a�lN��TgK㼧�)݉J�N���I�9��R���$`��[���=i�QgK�4c��%�*�D#I-�<�)&a��J�� ���d+�-Ֆ
��Ζ���Ut��(Q�h:�K��xZ�-��b��ٞ%+�]�p�yFV�F'����kd�^���:[Z��/��ʡy�����EJo�񷰼s�ɿ�A���N�O��Y��D��8�c)���TZ6�7m�A��\oE�hZ�{YJ�)u\a{W��>�?�]���+T�<o�{dU�`��5�Hf1�ۗ�j�b�2�,%85�G.�A�J�"���i��e)!	�Z؊U�u�X��j�c�_�r�`֩A�O��X5��F+YNL��A��ƩƗp��ױب���>J�[a|	�J��;�ʴb���F�^�PT�s�)+Xe)qL^wS�`�)%��9�x��bZ��y
Y4�F����$G�$�Rz����[���lu�ie)qN��K�<)�:�,�=�ۼ�R����x��5�'+X�OV�<���F[�g=w[-�A�����v����$+��Ҳ�i����*���	�e͙�Y���:5FM{6�����d)锵Z�*ʹ�v�U+�9�\���������P�e-��Eb)j�y��RwJ�6��Mrd\�pyYJ���t�mMO�'a8�R4��̍ﾒX��R�Vsb|q�id)	�ݛ��GR��$p�����Y��$r�J��^hi�̃�ūu'2+��s�rp�&��U��Pf��+�7�:w��|��EUe�`����$G�C�q�ō&1ŎG�s� Dq�Q�{�p��x���|��S%��<
\�n���9�X�_�y���6]���մ�Ŝt�q�<�RW����A �y��ػ����������p�7�l���?�:������*.ո;i��5�	 Ύ�ș`D*�JZA����V^���%�~������1�#�a'a*�;Qa�y�b��[��'[�"a���H�$��4� ���	j�ô7�xS�@�W�@ ��DF"���X����4g��'4��F�@ ����ܿ� ���e�~�U�T#�x��)vr#�Q��?���2��]i�{8>9^[�� �4�2{�F'&����|���|�.�?��Ȩ"�� 3Tp��93/Dp>ϙ�@�B�\���E��#��YA 7 `�2"���%�c�YM: ��S���"�+ P�9=+D�%�i �3� �G�vs�D ?&"� !�3nEФ��?Q��@D �Z4�]�~D �������6�	q�\.[[7����!��P�=��J��H�*]_��q�s��s��V�=w�� ��9wr��(Z����)'�IH����t�'0��y�luG�9@��UDV�W ��0ݙe)i e��.�� ����<����	�}m֛�������L ,6�  �x����~Tg����&c�U��` ���iڛu����<���?" �-��s[�!}����W�_�J���f����+^*����n�;�SSyp��c��6��e�G���;3Z�A�3�t��i�9b�Pg�����^����t����x��)O��Q�My95�G���;w9�n��$�z[������<w�#�)+��"������" U~}����O��[��|��]q;�lzt�;��Ȱ:��7�������E��*��oh�z���N<_�>���>>��|O�׷_L��/������զ9̳���{���z~����Ŀ?� �.݌��?�N����|��ZgO�o�����9��!�
Ƽ�}S߫˓���:����q�;i��i�]�t� G��Q0�_î!�w��?-��0_�|��nk�S�0l�>=]�e9�G��v��J[=Y9b�3�mE�X�X�-A��fV�2K�jS0"��2!��7��؀�3���3�\�+2�Z`��T	�hI-��N�2���A��M�@�jl����	���5�a�Y�6-o���������x}�}t��Zgs>1)���mQ?����vbZR����m���C��C�{�3o��=}b"/�|���o��?_^�_�+��,���5�U��� 4��]>	@Cl5���w��_$�c��V��sr*5 5��I��9��
�hJV�!�jk�A�=ٞ7���9<T�gť�o�٣����������l��Y�:���}�G�R}Ο����������r!Nϊ�C�;m7�dg����Ez���S%��8��)2Kͪ�6̰�5�/Ӥ�ag�1���,9Pu�]o�Q��{��;�J?<�Yo^_��~��.�>�����]����>߿Y�_�,�U_��o�~��[?n�=��Wg����>���������}y��N�m	n���Kro�䨯rJ���.u�e���-K��䐖��Y�['��N��p������r�Εܪ�x]���j1=^�wʩ4�,���!�&;ج��j�e��EcL���b�_��E�ϕ�u�$�Y��Lj��*���٢Z�y�F��m�p�
�Rw�����,Y�/q��h�M!���,V� �g��Y�J��
.��e�h#�m�d���Y�h�������k�c�q��ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[  =��,�ɏ[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dttx6qnsp5nyw"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 ��ΰ�?�  �:�ʫ[remap]

path="res://.godot/exported/133200997/export-58402a616f40e2811fe184d99d8746b5-CoinCollectorLevel.scn"
�[remap]

path="res://.godot/exported/133200997/export-cfd538a465b9799b811984d89e43d2b9-coin.scn"
�,�p���$p=_/1list=Array[Dictionary]([])
�&(�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
Xh��0
>   Z���,mv   res://icon.svgXc�$��u=   res://TestScene.tscnfPB���2   res://Coin.png����^R   res://Player.pngfPB���2   res://Sprites/Coin.png����^R   res://Sprites/Player.png�n�Iw�   res://Player.tscn}&�7{)   res://TestScene3d.tscn�k&1-i!   res://Materials/TestMaterial.tresp�a�[�;$   res://Scenes/CoinCollectorLevel.tscn���ە�?   res://Scenes/coin.tscn.�#[����ECFG      application/config/name         IntroToGodot   application/run/main_scene,      $   res://Scenes/CoinCollectorLevel.tscn   application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg     dotnet/project/assembly_name         IntroToGodot�