PGDMP     &                	    z            new_db    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16434    new_db    DATABASE     c   CREATE DATABASE new_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE new_db;
                postgres    false            �            1259    16435    address    TABLE     O   CREATE TABLE public.address (
    c1 integer NOT NULL,
    c2 text NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16440    author    TABLE     E   CREATE TABLE public.author (
    c1 integer NOT NULL,
    c2 text
);
    DROP TABLE public.author;
       public         heap    postgres    false            �            1259    16445    new    TABLE     �   CREATE TABLE public.new (
    c1 integer NOT NULL,
    c2 text,
    c3 integer,
    c4 integer,
    c5 text,
    c6 integer,
    c7 text
);
    DROP TABLE public.new;
       public         heap    postgres    false            �          0    16435    address 
   TABLE DATA           )   COPY public.address (c1, c2) FROM stdin;
    public          postgres    false    209   P	       �          0    16440    author 
   TABLE DATA           (   COPY public.author (c1, c2) FROM stdin;
    public          postgres    false    210   
       �          0    16445    new 
   TABLE DATA           9   COPY public.new (c1, c2, c3, c4, c5, c6, c7) FROM stdin;
    public          postgres    false    211   �
       d           2606    16451    new new_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.new
    ADD CONSTRAINT new_pkey PRIMARY KEY (c1);
 6   ALTER TABLE ONLY public.new DROP CONSTRAINT new_pkey;
       public            postgres    false    211            �   �   x�m�M
�@�םS��b�����taAAܪP�r;����^n�RE�"!?_��y�+�lQ���h���	
4�^{V3iv�4.��fU4��'V*<�Q�]+G�a9W��"#ez�����7��^R�M/d�~qG8㮒:�N�M5L���Y��c��D[��i��7Vcx.F<�_ˎ�x*�^9��.      �   W   x���	�0Dϻ�~����Գ�B�`jx���mf����E�%UO�A8	d�>���S�3��$���ӹ��C$�"�/�j�ݬ����64      �     x��Y�n�]������ј×(�HVA���ʉ��]���E�DPm!R�Jg9Nkz޿�����s���!-�������8��Gu[��"/.���)w�q�+O���{�i�W��a=�"+w��I�km��6WW[��r����,���yyPۣ�>V�>��a���-;�o��"+f�	ɋIy\d��v��O3~�W���z��`K~�BBg8h\��`�-��gܾ�/�&�N1��,ĒI����ߘ9O�A3:�\����<8�^�N(Πۤ<�1Y(�xťT}�7FA�xvv�0G�f�AB����X��N�2��nH-����V����W7��8ؗ���K��]J�}J��8/e�὇���&\���FX�-�%��|����9�$-gP"����p��-���AF���\��q���dl��)D>iS5��.c:�ۧa�},���6,�!&�@�r�O��>�5���7h� ���'��(�q��)5~����yk������,"PW�'[<�����,Q��%��7|b��,�1�S"���1Ed�P��V��1B+*F|s&�M�,]��^�YL�<�I��/�Y�E�6����?g�<�ؿ��T�Q �Z뭮X��;�Ę	C���SGm�`~��8���V#ٶZ_<���/������W�<���_?zx��eV)H&�|���b�L{��|ǌɰ�K�_R�~Xӫn�)/��P�,�h�Y��|�a����.���R��^�Կ��r������Dd�;-l�҄6`�06���M(��rTcm.��df�Z ���Q���8�,�"W��S9e��5I`��6{���O������|?/cX|4�J3_02��?��-B��&��
�ۭ�5w����F/B6�=P`4_z � e��=U�Y�O�U*��U+A�H�.��H�ѽT�6p�����<�{U���a{Z3k��t3r,iOa�Q.���&�҄�"�si��D��-�k,D	{�P0��
��P�N��v̗
!�,�4L���6=��BٹW�Ys��ĖQș�!i��������,�M͈�n`�^j%���[G�����2;�RF��� `��]Vn�7����#/}�s�p���	��?r^�_��!H@�FN;X2�J �sLh�C�����'�yA��Xu����f=��X�S�X�I�iTWx�-�'�h�UL0�@�^���EQ�z�YLΫBe��a�Q������^(�����^��n�^V���gI�*�%�ѠrB;�������4q7�O}"��k��;Y����� �����.�Ɣ|�X��ze��N��-���1.x��kX�����ˤ��0	L��T����G5@t�M�g��U��� �_�� R�����
��;�KA�Tl�jz�~�u��	���D�{����G�D�CeQv ����H�b�#��]�cQ$qvS���&�ɻ<Y	�|l����|��誩af�A�<�����ر�́3�|̈́|��h�m�"Y��m��Ѷ�Ir�A�({�FB���p꘳��o���Wg���g�$s+C���6������d�v-7.5w����DQ�$�ii0�X�2��Qa5fH�n��5���:��W\s�m�Zq湜��)8�D��fŔ���	����+��)	�+��PL�ZI�\g͔���ϡ�m�dp�_���������A�����K�5��OqZ�!��ĘU�5����$��%�� 3��%�]D�0�M�!Y+�S��Tee1�b��Kۦ�u��0��9�3K,0�T,{�ү�ݨ�"ډ +�c��Kb� �Lp ��F>)�'��5P�m6=�R�m�X{K؟�Fgg�+�\6��0�x&n�֧�h�VU�w*���ء�Mhյ&w$֬�p��翏ճAy![�[��>3۵4�aQ�;>�fƼ���zwm5=��8,�rjpl�����fâA�FOs/��D��æl=�u���%q�=��R������5�;&�0wו�d�M�;
��;��V�m*�����jo�>��7��9g�YX)���m��L7e4Pc~(��Y�yNoi����f��� ���7�$��lR�R�e�6��/d=ܧ4�vG�ezӧW������$����'�t��Y�>������c��My���ً���ST	�3�z�#%Ք-�ۡl�}�O��B��Q%ޮL���h[t,D��9�8�޶�4��������}F� ��Wkݷ�Z;V�G�����Fm9��F 룖��E/^.��q�Y�K�^U���j3���p�d.E������Cu�$O�8)V�bX�^o�sUS��������섚��Wš6��b�n�͝�4zC{Zi�ó`=��Qc�@�aa�ʢ��5��~�1��-�kݱ�e�L��p���v�Af��2�6a�V`�T>�����J��H��^]Ys�P�#�b�B7�*�R�n6 �A�׃���w��"�#"w����v�<gj}�]���A�1t׷Yt��~y{�E�}���3��b.�x��ԁ��-�J���t��qh�r��g�U��i[�P2ڳ�g/�I�������x�������3�L�sY��^%��O4z��?>j������+�tS��;��ݚ�*���f�K}8�#�䶯^��֌ZaF�����\���M^�ɬE5k��z�Bkl��T�3Up<��;O�6��"u���.,�#?�����gwV+[[�8��Л�;>��e6�\eJ��X:,uD�T*ϼ'�s�`�w�K�=ǁ�o�ó��+>���u�6kq^-%�.~���x�����y�"��V�`k��Y���幾���g�_׍2��D2���],3�N�Y_�l�A���n�ջfx��xn-b<�M}�gb��+8O��������̉Hi*���Η��Z��8��w��X��I�"D�yv���(�T#�FdM�g?5i~��	�YDU,w�N��\�#Z�}p;��xϔz��)toи�vĩUb�)��|j0��Ol0�zN�}���M�^S�31+��TEs��#�Z~�r]*o�unܸ�?�;�*     