PGDMP     *                    x            tb_pbd    12.2    12.2 8    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16410    tb_pbd    DATABASE     �   CREATE DATABASE tb_pbd WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE tb_pbd;
                postgres    false                        3079    16529 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    1                        3079    24576    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            �           0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                        false    3            �            1259    16538 
   akreditasi    TABLE     �   CREATE TABLE public.akreditasi (
    id_akreditasi character varying(12) NOT NULL,
    akreditasi character varying(20) NOT NULL
);
    DROP TABLE public.akreditasi;
       public         heap    postgres    false            �            1259    16541    alat    TABLE     w   CREATE TABLE public.alat (
    id_alat character varying(12) NOT NULL,
    nama_alat character varying(50) NOT NULL
);
    DROP TABLE public.alat;
       public         heap    postgres    false            �            1259    16544    detail_alat    TABLE     0  CREATE TABLE public.detail_alat (
    id_detail_alat character varying(12) NOT NULL,
    id_alat character varying(12) NOT NULL,
    id_sekolah character varying(12) NOT NULL,
    id_labor character varying(12) NOT NULL,
    kondisi_alat_baik integer NOT NULL,
    kondisi_alat_buruk integer NOT NULL
);
    DROP TABLE public.detail_alat;
       public         heap    postgres    false            �            1259    16547    detail_guru    TABLE     �   CREATE TABLE public.detail_guru (
    id_detail_guru character varying(12) NOT NULL,
    id_guru character varying(12) NOT NULL,
    id_sekolah character varying(12) NOT NULL,
    jumlah_guru_gol integer NOT NULL
);
    DROP TABLE public.detail_guru;
       public         heap    postgres    false            �            1259    16550    detail_labor    TABLE     �   CREATE TABLE public.detail_labor (
    id_detail_labor character varying(12) NOT NULL,
    id_sekolah character varying(12) NOT NULL,
    id_labor character varying(12) NOT NULL,
    jumlah_labor integer NOT NULL
);
     DROP TABLE public.detail_labor;
       public         heap    postgres    false            �            1259    16553    guru    TABLE     �   CREATE TABLE public.guru (
    id_guru character varying(12) NOT NULL,
    golongan_guru character varying(20) NOT NULL,
    gaji_guru integer NOT NULL
);
    DROP TABLE public.guru;
       public         heap    postgres    false            �            1259    16556 	   kecamatan    TABLE     �   CREATE TABLE public.kecamatan (
    id_kecamatan character varying(12) NOT NULL,
    nama_kec character varying(20) NOT NULL,
    kec_geom public.geometry
);
    DROP TABLE public.kecamatan;
       public         heap    postgres    false    3    3    3    3    3    3    3    3            �            1259    16559    kelas    TABLE     �   CREATE TABLE public.kelas (
    id_kelas character varying(12) NOT NULL,
    id_sekolah character varying(12) NOT NULL,
    id_kondisi_kelas character varying(12) NOT NULL,
    jumlah_meja integer NOT NULL,
    jumlah_kursi integer NOT NULL
);
    DROP TABLE public.kelas;
       public         heap    postgres    false            �            1259    16562    kondisi_kelas    TABLE     �   CREATE TABLE public.kondisi_kelas (
    id_kondisi_kelas character varying(12) NOT NULL,
    kondisi_kelas character varying(50) NOT NULL
);
 !   DROP TABLE public.kondisi_kelas;
       public         heap    postgres    false            �            1259    16565    labor    TABLE     z   CREATE TABLE public.labor (
    id_labor character varying(12) NOT NULL,
    nama_labor character varying(20) NOT NULL
);
    DROP TABLE public.labor;
       public         heap    postgres    false            �            1259    16568    sekolah    TABLE     S  CREATE TABLE public.sekolah (
    id_sekolah character varying(12) NOT NULL,
    id_akreditasi character varying(12) NOT NULL,
    id_status character varying(12) NOT NULL,
    nama_sekolah character varying(50) NOT NULL,
    siswa_lk integer NOT NULL,
    siswa_pr integer NOT NULL,
    kurikulum character varying(10) NOT NULL,
    luas_tanah integer NOT NULL,
    jumlah_kelas integer NOT NULL,
    jumlah_guru integer NOT NULL,
    alamat character varying(255) NOT NULL,
    lat character varying(255) NOT NULL,
    long character varying(255) NOT NULL,
    sekolah_geom public.geometry
);
    DROP TABLE public.sekolah;
       public         heap    postgres    false    3    3    3    3    3    3    3    3            �            1259    16574    status    TABLE     }   CREATE TABLE public.status (
    id_status character varying(12) NOT NULL,
    nama_status character varying(20) NOT NULL
);
    DROP TABLE public.status;
       public         heap    postgres    false            �          0    16538 
   akreditasi 
   TABLE DATA           ?   COPY public.akreditasi (id_akreditasi, akreditasi) FROM stdin;
    public          postgres    false    204   UD       �          0    16541    alat 
   TABLE DATA           2   COPY public.alat (id_alat, nama_alat) FROM stdin;
    public          postgres    false    205   �D       �          0    16544    detail_alat 
   TABLE DATA           {   COPY public.detail_alat (id_detail_alat, id_alat, id_sekolah, id_labor, kondisi_alat_baik, kondisi_alat_buruk) FROM stdin;
    public          postgres    false    206   VE       �          0    16547    detail_guru 
   TABLE DATA           [   COPY public.detail_guru (id_detail_guru, id_guru, id_sekolah, jumlah_guru_gol) FROM stdin;
    public          postgres    false    207   lX       �          0    16550    detail_labor 
   TABLE DATA           [   COPY public.detail_labor (id_detail_labor, id_sekolah, id_labor, jumlah_labor) FROM stdin;
    public          postgres    false    208   2]       �          0    16553    guru 
   TABLE DATA           A   COPY public.guru (id_guru, golongan_guru, gaji_guru) FROM stdin;
    public          postgres    false    209   �c       �          0    16556 	   kecamatan 
   TABLE DATA           E   COPY public.kecamatan (id_kecamatan, nama_kec, kec_geom) FROM stdin;
    public          postgres    false    210   Sd       �          0    16559    kelas 
   TABLE DATA           b   COPY public.kelas (id_kelas, id_sekolah, id_kondisi_kelas, jumlah_meja, jumlah_kursi) FROM stdin;
    public          postgres    false    211   ;�       �          0    16562    kondisi_kelas 
   TABLE DATA           H   COPY public.kondisi_kelas (id_kondisi_kelas, kondisi_kelas) FROM stdin;
    public          postgres    false    212   S�       �          0    16565    labor 
   TABLE DATA           5   COPY public.labor (id_labor, nama_labor) FROM stdin;
    public          postgres    false    213   ��       �          0    16568    sekolah 
   TABLE DATA           �   COPY public.sekolah (id_sekolah, id_akreditasi, id_status, nama_sekolah, siswa_lk, siswa_pr, kurikulum, luas_tanah, jumlah_kelas, jumlah_guru, alamat, lat, long, sekolah_geom) FROM stdin;
    public          postgres    false    214   �       �          0    24881    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    217   1�       �          0    16574    status 
   TABLE DATA           8   COPY public.status (id_status, nama_status) FROM stdin;
    public          postgres    false    215   N�                  2606    16578    akreditasi akreditasi_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.akreditasi
    ADD CONSTRAINT akreditasi_pkey PRIMARY KEY (id_akreditasi);
 D   ALTER TABLE ONLY public.akreditasi DROP CONSTRAINT akreditasi_pkey;
       public            postgres    false    204                       2606    16580    alat alat_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.alat
    ADD CONSTRAINT alat_pkey PRIMARY KEY (id_alat);
 8   ALTER TABLE ONLY public.alat DROP CONSTRAINT alat_pkey;
       public            postgres    false    205                       2606    16582    detail_alat detail_alat_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.detail_alat
    ADD CONSTRAINT detail_alat_pkey PRIMARY KEY (id_detail_alat);
 F   ALTER TABLE ONLY public.detail_alat DROP CONSTRAINT detail_alat_pkey;
       public            postgres    false    206                       2606    16584    detail_guru detail_guru_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.detail_guru
    ADD CONSTRAINT detail_guru_pkey PRIMARY KEY (id_detail_guru);
 F   ALTER TABLE ONLY public.detail_guru DROP CONSTRAINT detail_guru_pkey;
       public            postgres    false    207            	           2606    16586    detail_labor detail_labor_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.detail_labor
    ADD CONSTRAINT detail_labor_pkey PRIMARY KEY (id_detail_labor);
 H   ALTER TABLE ONLY public.detail_labor DROP CONSTRAINT detail_labor_pkey;
       public            postgres    false    208                       2606    16588    guru guru_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.guru
    ADD CONSTRAINT guru_pkey PRIMARY KEY (id_guru);
 8   ALTER TABLE ONLY public.guru DROP CONSTRAINT guru_pkey;
       public            postgres    false    209                       2606    16590    kecamatan kecamatan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.kecamatan
    ADD CONSTRAINT kecamatan_pkey PRIMARY KEY (id_kecamatan);
 B   ALTER TABLE ONLY public.kecamatan DROP CONSTRAINT kecamatan_pkey;
       public            postgres    false    210                       2606    16592    kelas kelas_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.kelas
    ADD CONSTRAINT kelas_pkey PRIMARY KEY (id_kelas);
 :   ALTER TABLE ONLY public.kelas DROP CONSTRAINT kelas_pkey;
       public            postgres    false    211                       2606    16594     kondisi_kelas kondisi_kelas_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.kondisi_kelas
    ADD CONSTRAINT kondisi_kelas_pkey PRIMARY KEY (id_kondisi_kelas);
 J   ALTER TABLE ONLY public.kondisi_kelas DROP CONSTRAINT kondisi_kelas_pkey;
       public            postgres    false    212                       2606    16596    labor labor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.labor
    ADD CONSTRAINT labor_pkey PRIMARY KEY (id_labor);
 :   ALTER TABLE ONLY public.labor DROP CONSTRAINT labor_pkey;
       public            postgres    false    213                       2606    16598    sekolah sekolah_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT sekolah_pkey PRIMARY KEY (id_sekolah);
 >   ALTER TABLE ONLY public.sekolah DROP CONSTRAINT sekolah_pkey;
       public            postgres    false    214                       2606    16600    status status_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id_status);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    215                       2606    16601 $   detail_alat detail_alat_id_alat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_alat
    ADD CONSTRAINT detail_alat_id_alat_fkey FOREIGN KEY (id_alat) REFERENCES public.alat(id_alat);
 N   ALTER TABLE ONLY public.detail_alat DROP CONSTRAINT detail_alat_id_alat_fkey;
       public          postgres    false    3587    206    205                       2606    16606 %   detail_alat detail_alat_id_labor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_alat
    ADD CONSTRAINT detail_alat_id_labor_fkey FOREIGN KEY (id_labor) REFERENCES public.labor(id_labor);
 O   ALTER TABLE ONLY public.detail_alat DROP CONSTRAINT detail_alat_id_labor_fkey;
       public          postgres    false    3603    206    213                       2606    16611 '   detail_alat detail_alat_id_sekolah_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_alat
    ADD CONSTRAINT detail_alat_id_sekolah_fkey FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah);
 Q   ALTER TABLE ONLY public.detail_alat DROP CONSTRAINT detail_alat_id_sekolah_fkey;
       public          postgres    false    3605    206    214                       2606    16616 $   detail_guru detail_guru_id_guru_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_guru
    ADD CONSTRAINT detail_guru_id_guru_fkey FOREIGN KEY (id_guru) REFERENCES public.guru(id_guru);
 N   ALTER TABLE ONLY public.detail_guru DROP CONSTRAINT detail_guru_id_guru_fkey;
       public          postgres    false    3595    209    207                       2606    16621 '   detail_guru detail_guru_id_sekolah_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_guru
    ADD CONSTRAINT detail_guru_id_sekolah_fkey FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah);
 Q   ALTER TABLE ONLY public.detail_guru DROP CONSTRAINT detail_guru_id_sekolah_fkey;
       public          postgres    false    214    207    3605                       2606    16626 '   detail_labor detail_labor_id_labor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_labor
    ADD CONSTRAINT detail_labor_id_labor_fkey FOREIGN KEY (id_labor) REFERENCES public.labor(id_labor);
 Q   ALTER TABLE ONLY public.detail_labor DROP CONSTRAINT detail_labor_id_labor_fkey;
       public          postgres    false    3603    208    213                        2606    16631 )   detail_labor detail_labor_id_sekolah_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_labor
    ADD CONSTRAINT detail_labor_id_sekolah_fkey FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah);
 S   ALTER TABLE ONLY public.detail_labor DROP CONSTRAINT detail_labor_id_sekolah_fkey;
       public          postgres    false    214    208    3605            !           2606    16636 !   kelas kelas_id_kondisi_kelas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kelas
    ADD CONSTRAINT kelas_id_kondisi_kelas_fkey FOREIGN KEY (id_kondisi_kelas) REFERENCES public.kondisi_kelas(id_kondisi_kelas);
 K   ALTER TABLE ONLY public.kelas DROP CONSTRAINT kelas_id_kondisi_kelas_fkey;
       public          postgres    false    211    3601    212            "           2606    16641    kelas kelas_id_sekolah_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kelas
    ADD CONSTRAINT kelas_id_sekolah_fkey FOREIGN KEY (id_sekolah) REFERENCES public.sekolah(id_sekolah);
 E   ALTER TABLE ONLY public.kelas DROP CONSTRAINT kelas_id_sekolah_fkey;
       public          postgres    false    211    3605    214            #           2606    16646 "   sekolah sekolah_id_akreditasi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT sekolah_id_akreditasi_fkey FOREIGN KEY (id_akreditasi) REFERENCES public.akreditasi(id_akreditasi);
 L   ALTER TABLE ONLY public.sekolah DROP CONSTRAINT sekolah_id_akreditasi_fkey;
       public          postgres    false    204    214    3585            $           2606    16651    sekolah sekolah_id_status_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sekolah
    ADD CONSTRAINT sekolah_id_status_fkey FOREIGN KEY (id_status) REFERENCES public.status(id_status);
 H   ALTER TABLE ONLY public.sekolah DROP CONSTRAINT sekolah_id_status_fkey;
       public          postgres    false    214    215    3607            �   7   x�s�r50�t�r1�8� cNgÄ�)5�4W�%31�(5%�$�8�+F��� ���      �   �   x�M��
�0���+�җ�eP�E�FWn�2��Ą4U�{kS��=��(��b(���'��7'����a�$���Ώ�]�̠j-y.�Sh	�n?��g�;[A�����ʙ7u��՛i�-���/��f�8�\��B�A6�������'	��Ж�Q����1���H�      �      x�}�M�$)��Y�@X֬{�˹�9&�D?�G���ʾB!$ ����Oy�������ծ&m������/�����B��t�o�i��~c�ߘ���#�/S^��e��4g�/#��̬��Y���b�\?L)_�_G�o�U~�\��
̯���\a,ɓ����kOj�yR��(�'�2�;11&��2�%�,�0c��*:�wP-@�E;��iAOm\Ob��Icu�xc�f�%�5���L�Y���5G�]\sb
+��*+�� X?L�2J Z�r/����he����������Ÿo�+��\\Qb
�}�q?^m3�ޘ��6�`�#���ޘ���ӣ\O�3���L�E�,�Y���z��5K���,/u;�k���q�︷��c�3ޟ`��R�ֺ#������Zϰ���1��0zqAwIq��~4-\Q{�\QbW���o��t�zc<<Ta�3 ۹$(.����y�of�rh�?����1�k��4�9���9��ѹf	)h(ל��O;_�1��	��Y�m�Ͻ���3/��vF�,�����AO�e��&z�O=�=��£��|b����G�(3;Xx�ϵ��v�X�~&��^�H4<c܇<�`��=�l,�hv�����5!Z�ο���M-�V�,K��heL�heL��b���Svw��Bܗ����t�(1�ztQ�f�4cp=$̧;��1�1�1�1qƘ����w[46�0�zN����m8c0MO�w�S*f�y����Y�1���ъ��Y�1���%��ܮZ���\)K<�`H�A-�ևߒ6�td�f��vF�N˯�Z��;-�&\ϻ�tC�z�O)W���˩(�6��wQ����h�nQwX;�.;4.E*��	$��=�@�̞���gK���d=��"�A(�2�+�1\Q����%l�+a�^���@
��ѿ�C
q&DH���=#�E�>�g���y�S���kY����2�(�z��~0-\�܌٩\s�Xm\sz�T��4X�%��
�UŞ��=������7ŞSi�=g<�{�A_�Fz�q����t5�����8���j�r=1���zZ�<��֡O�XN=>�n������E��ޘ�EgC���q�i����SPL!`�%�ƩZw{��6N��˄�S�,�8�&9k]�)�A�8ݢLϽ�3��-,A�,A3aZ�Xf��S/����x/�cC���PqC��G�Ɲ�����za�6?�AGcw�`;O��zM�'���Z\OX}+#��R�1���U*���Z��876j����بK�sc���X��G��v�3��X�ٖ�]"Z��}����D�`�ǘ���췧
��v.(1�%k�aŢ�0��Od�Fm�$9���uWDfDc�?��pE��Y��c�%�,a�1<f�VѐAX~�ɪa����>�b9��v��U���ކF�h��zNy�	l�Q��(���<��`lӜ��6�:��M��ؿ;[s��5�Vb��p�F�ݦ��ve��`��:���a�kc�l��k��,Ӝ�e�ف�5���5��nרm��	qnn�蹋Vn�Pfp'&���{���6q��*����6�2P����xOP�T y���`�rC�<�`7��`�$p����q0cV4�|:�B����OH�7 �N���1��:!PF��@��?F;ߏ	�Ù`�e б 0fA�`c-����A���5w��(��>_-�\O\���z��v=�91~Nf��A�0yS������5'F��g��H�䱑Ƃ�e3?��.�Z���)�T��L�oXbWtg��W�V��P��\Pb0��-���M)�!m�-d��e
� ��9�S��e���Q����3p�8Ν��牔Y܇��&q��ٱI�4�΄�`����S�`�`��S����1�:���#�Sv4��qn4��������q�3h�k��\���1&��N�ځN���ЈS�p6VǵP�Ww�B��Z�hc�fh�`@3�����k!w�ӄ���呦ь��f���Mq'��!\Ͻ���2C�1��3��3�������������1�2�B��Z�\}�f��6p1<�V��Ő1��:'�ǹO���2���p1d��`�`z0w0sc0wض�]j�ua�8�V����L��$=�ݬ�-�� I;ӝG;S�C�U��xө��ehrI-������2��R�l�F��u���f*�-i��e�(�%\u���s�y4���Px4���x�~Iw��b��F�<o'6�(y�Ag��<�#}m��B���v����i���N��zb�J\P��&�c�F�B��WoI-\v�Y$�rՉi\u�*\t7>�����y^)�
>�m��������:�p�c���A��4� q�x�n��f�4��swZl�:����GkO�9�a������`p�#
2�p�#ڐ\�C��=T���-j|Κ߇��qa�H�W7�f ����L�9ޥY\t|���EǕ�.:^:�^�j	����x�,]x��[e��v��b��t��;��p��2��g�_/�F|��l���Ppv0t9m��~*��mm\�;�̐pE?��A�K�T�����R$aØ ����X����!�����������8�퀣����
�t�٭S�8����RfrEw�w/�{qE�V�W���%&������̫#gr���l�<Ѡ�k�<10����Re8'�{�����h3���^Y���h�r��M[��No��:\󕕋���r�r����Ϙ�s*���U_�<�W��ӯ\�q�pE�j�������%F���t��b_6�0��q��0��P�Єp,GX�kqE�wM�\\P���ᇊt,��bbl��5�l݋p͉�\s�^�kmS/�k��\^��k�e��쉯��52�u}S�տBbqV+����� ^��t���~������=����:`��9�ur=�P�uqA!�vqA1��V`Va�CU���5���+���	L��'��a��9iMa�ϲ����젳�O��}��d��6�S���v�!����`r�b�V �D&�����R�:&�z�4��Pt�z���i����M�'<�nOA��z���;�5s�{������e�Zv�������X��;�Z΀U,�����b�g�/����@۪k=9#V�����d�e���XVKS�e�C�Gò�!O��u�x�nC゘5�'v��h{�}��nO\�j�Fye�F��tYc<t����>�����?������f���������g�zb7+���>�<K���s�>��6��3��fv��v�?�k��|.���;4}]���օ݋�BH�&z_ؽ�n���1ؽ0����/t�1�_�i�������EC�5��0��v/n��^ؾ����%0}3ؾ����!��RW�U�A�V�����A��/.�:�L0��`�!b��l`�5Z��a60�W����3�jʀ����@�ߨ
��z���pZყ�����UaE��&5KhZaA$W�
"e`A����s�)��)�R10��C��,��/ݤ��;��7��3�HQ����1L`�4ז�a��ӹ���6�
���,|�G�{6Ƅ�p���&�`��M��"ypu��Uy�u(,�	����"g:W-I�r�1���b�\4y��d.��G���y���кi�<�ϋ��!OS���,1��#M�AW�����y���3���,�'2�E�@�fz�`��v���*�+r;�k��G��dg@�2fB�2fA�~��%��U� X���1��1����ڮr�pA1�G��\PbpA��i�����=9������ÿ97m6&���<Q'��`�`Lj���j%2iA|`҂���m���X1<�I��v�'O���������q�Ԡ9�B}`:�@��3-�\O,]����ρ׃������K.�\� 1B�Pj��A����'��=�͙���������`']�����   �{[>V��M���ʟ��z�߆���#�=��G���F��"��v�ٸ3�u��zm*��G*����9����x��9���|�42~\=���u7$���Ψ�jQ�rA��Q���F�g�G�F]\t�^�����j{��F�E��FƝ������O=�D���S��cc�����
��+���G���� b	�/���cw4�OF�}���P�v�<�r��L����b�|js��dH��px3r���������O9���F��1_?�̎�|�42�L��xГv="㱟/�:�senn(�=��Z�{���E�	�\s����=��	rOkj`�ӧ�)&f�X-��`ǘx8�7��N��<}�+��d�M��[���T�n���-z>c�}N�:ML�Ӹ�d��щypt��C�hI���˚ZD4d����hh^\vZ`f�Sì<@�Y���P�a����Dy�6c?��(�3��;O/��;��N�)$}��I�;}b���{�.�#�sW';7�Y"B��50_k`�0��܍\��}
�Jǲ�c�f��G��Gf��l�0��|a����X�������ϕ���Efr=�Y\Odʃ�����T�Y"Ӹ��ל��5'F�����<6������Z<�{�d��{�_��_��DGϦ����~b������ᇈ_�����gq=ю����v������?PD&�i\sb�kNL皓��dg�`}�3C��g{M7�B�&��-�~cJփ�������O�      �   �  x�m�K��(י�8��g��?ǠLE�ókSe�D� xR�>?����_�*W�e��w���E�/�|Q��_T%C�Z�b��e�+&g��Y��u��Q~P��2�FM>a�E��66�`c�j�6rLH�hCm���a�:�?�L�g��!�:��L���L����Z�!�:ZLH��ThCmt_�І �D�7G�A�1cB�D�hc�Z�6�;��-�҆ ڈ�PicE�!�`�G���6����Ii�ѣ4�P%�:6+�O7���U}Dh�!�>�B!�?��uɾ?:�D��4"�F������A!��H���ш D!�����=}D��!�>�G��A-J���Q� �D�OŤ��j�G4�I��CuD��!��#zդA�!�:"�,�X/��l�h6��"�P#�ǂ�-b��"���:Ղ����.��(�o��Tm�A�Q�%��Qcm�A���tx�H���(�D�hûCb(UD=&�A��mo$�ҍ����I�ǟ�L:�%fRE�!�6F�E�NJb&3&�A�!�6��`&��3��F��Iц �D�`c^�`c��Vb&�(cб�ş�T��5��}��(���S�FهA���d2�n��H��hD�����o&�L�w��d��1�*�����NL��y�L��MC��v�A2=�i�FQ�i�f��#��̶�i�b# �������f������v���iD�Ļ|�4����6hd���6�$��A%��$�zT��U9�$��A%qC*D%5�͠�J&�T6�F���4"�FZ2i�ű�4�Q>M��u҈ ��3����E#��/"j�O-	�@0��u&D��ADm��&!��79"���M��z��}FD���}ed���*�Ȩ���/)�C��F�E+&�E�u,��όZS�|f�6Nt�8�aー��F�%Ũ�Ɖ':l�̨de�u��2�TP���25��Q9�F�Q�!�6�7̜���ݓ}Ke�L���X�L�dϔ�Ay;�|�y���}������9H�|Q1�B�(Y�GL%s#}�V��EN�En���_�>y=ʘ���ؙ#���e�((2�/s���sDb�Hl���6mjc��e�� R@j�D]m|�=�.6�~��ϣ��"�� �����0���������E�	�      �   �  x�e�K�#7�݇1*�Kri�}��VO��Q�Y� �A �bFI���'��Omu}���??�~��/*@ŨU�Ԍ:P7@�(�^��h�Q{����|<@�� �| �G�|4 �ǞFN>P��M�f���Py�,_��E�(�/��Y�t ˗t�'�!?�yM�R�>@��d�Z�,_+��Mm@����U��|��_@�o�'��� Y�i�lk@~`[���ؖ@�|�@���|�4&'��� Y�W ��d�ށ,��!�i\�|�@>6}Y~<@�d�Q�,?*��Ǟ�x(?:�'?�!�@��:����J�=�q��Y�<��@~`�����6�!�@�U6�4�{>���d�@��ȓ���Y~j�=?�!�@��:����d�@>�K�h�*W�_�g~u ��5��:�'�!�ipI�� i�\R�\R�\R�\R�\R�}��O�C~���jэ4�P�ndy��F�W�.�P�.�P��Iy����
����
����
����
��X8�|	����
����
����
����
����
�h��h�%��,�͠�Z4��j��=j�dχZ4'��By�h�K>��	t�/ ˫E��|�E�R^-���C-���C-���C-����!�@����{>Ԣ�{>Ԣ�{>Ԣ�{>Ԣ�{>Ԣ�{>Ԣ�{>Ԣ�)��~�'�!?��dy�h^��Z4�{^-�|	�h�e$Ԣɗ�P���Q�&_FB-�|	�h�e$Ԣy-)�h&�բ��W�fr�jѼ��Z4�%��kI�Esr�jѼ��Z4�&jѼ��Z4�%��kI�E�ZRj�Ԓ�ϲZ4�%��kI�E�ZRjѼ��Z4�%��kI�E'ߤB-:�&�O _�j���̫E'ߤB-:�&j��o�B-:���|�
���TQ�N�I���-j��[Ԣ�oRE-:�a�Zt�M��E'ߤ�Zt�M��E'7lQ�Nnآ�ڰu�=��o�Zt�ۃ�]��jѵ(�]:�B�O�������|�-*d�ݢB��-*d�ݢB��-*d�ݢB��-����[T�O�C~��Ǧ>@���cS5~{Pj�|m@՟�@���O�C~��=(��| O� ˷
d�ր,�:��M�4�%�@��:����d�@���We�4��A���Y��C>��	t�/ O~h��#�,?
��G��h@���c �{׏e�h�~\(�E���B�-�{�����n�~��Pv���ǅ�[�w%�P��nQ�C>�<�ݢB����nQ!����۔ݢB��-*d�ـ,?;���@�|�ƕsY~=@��W �ج�ɯ
d�Հ,�n��?"�w��	�ɿ[��_@���5F$��n�6k@��[Ԩ�?l@ը5�t�'�!?��hm�<��5���E�,��Q�,��с<��4�5萟@�h遭��|	 ˗d�w�Ο�@�ݢF������-jt�'�!?��d���g.~{P[�@��m�Y��Ed��=P7�@��m���5V�6���բ���E?����E?����E?�'�j�Od�W�~"˿Zt��j�������'��_-��<��@�|�@���|�,��1g�aV{�|�@����Y��C>��?�X��[~�،��f���(@�����?�Xm��;l�O�C~���� Y>�G�������3��      �   Y   x�s2000�t����KO�S��4�05�00�r�!�xr[Z������r@�6$�0NcSKcC��)�G~^~����g����� �� �      �      x���ˮ.���ǥ��'0x�y�IFn�<���mY�U��o���[�rҩS�3���k�AnS�5����_������_���_�����˿�ן�5ɜ�?������kȣ�ҭ-�c��r>�۟Ъ�a�:��Z�x���}�8?�̱w��U;�"{uc�'�el�}D|L3Ŷ���2J}L	�9�i���U���ԚI���_݄:�����㝭-�����n�`��vO_�|BJV�'鯡����x�[�ٰ�?��ǞXo��J+��l���x;��|8����L5������9�?��i��fFw�|	ц��}>>oJ*��������]�����'���U�<����qSv7r�ON.���6?����Wg�H!�c_5���z�����ZlMn���4M�)����i�t���볷Q����X��aL~L��}~b�>۶�w~��y��t!�c/iF�������\�ڒ���br�Y�]{_u<�Uf��M��Pk���&��lI���}�f�u������R�w%3 �g��e��{�Rsx�3���0��0ʱ��X1<�������%c�_"�3b�^v�O����fb0�����
?x���[�Q��\3���<�物}7Iv�׈��+�3����!*eO%�L�ޮ=�;�zf�v�Cǝ}���0bv�Q��NÑ������考������O!�c_-��B���k�4GD�u�67�!����5MḦ́��~����&/�*��y�����}�o� �~x��l���[q��f,��P��Mpn��Sң��)~go�d� ��=e��˞��A��_��Z:�T����0�4{���f9c]9����f���q�jͭ�S؟a��O��n���� ��������	1N��H��c�&�>�_�;~�qyF��?�S[hm���s�������W���\+���3����C&�:^�:����^��yFw��h��o�]v��S]k ��� #&��܇�c�x3q��O7-�:��u�!'�q�@��m��O<��1^��զI�����[��Fy������_����Ͽ��O���w�p�Ο��!��wr�2I'?k0F�$�ҵ{]�O.�����j��^H����7X�Շ���qDi�l;I���c�(I�L�� -g&ڱ��]oe�c@C^He'��L�y�H�v�-$�í�	��rb�/�����癢�ZKcv%�8W1���f�����0{�/�On��ãk40tcP��:s0�/�l7�{g��W��{,�獑1@�HJZ�x�����B�x��Y9d&B��^�Ɇǌ�1$�����g����F�����cO�%P{�Z ��Ϻz���#�/2l����d`�b`���O��1�����%av�E&
�v��
�J�By�=� �7�n�a=���'~�	�g|�Y��������a���ā)���y�Dp�-�� ����%�f֛H�	N3�����q���9^�0�����ښ��C��꘱�d���<�/�?��?�^���HC�u�8��86�v1Q��b	w
II`r���I��N1�O�L�'����,��{"=��c�B������D���s�FC~���c "+\��ӄBfQ߶]ya`P)�+ ?�/��?�6R_���
�V'�<N������i`j��fe ���/@��Fi�E�|���Z���a�М�)�2�=v|�ey�KvK�!+/�Ա�>�����8t� "�c��13B{v��iS{iZ$���@o̦���]�;ޘ?wh9*t��c_�4����[H"�9v�Vʍd�};4�����c�͜��M�-DG����Isa ��hAM�瓫���Nt1��K��aE�c84�3��ӱ�Z���sӌ5�W�ze�D�r/�z�Th�����|B�R۹�O�СH�2e-%7��O7�32K���	G����&��4���tX���'1��XK�} �oQ�F��[ӝ��|�u�@���N|����_��g�����?:�i��;~Y܆����)�OBD���Qw�iG�����+��R"go�C��i-('g���AГA��?N�����e��4��ʨ�A��i�G�a!����a8=ʑM�}������Ѻt����
�<B��'���M/5��o���m��C*"IGJ{����v�CЁ�����[*"e�Wf��&�,�v��C�$���~���H�v�'����T0�	r��B =ӝ?`"�ī�]I6�������
^���"�E���Ǽ�������@Rd�n���ʤ�g�X�"���q��$��o��R���/"��.n|�c)1��v(N������y*��}�� g ������X���3�)
��[F���m����X@R��@(���N��|��+&K�h�-�@�N���C��b]������/���"*t���_B]{�-y"s��{Y��\��il�����oٷ�/��]&������O�Jb.��>�h8��0�g~�#Z���b�����d�P"I���!��S�Z'?�U-Dݱ��Jpx�]v�dH/���� ;��'?���?$A�Y�xST�N ����@F�54s�FP�o�֚��L�vd��7J⾟/����ˡ�H�V�a��pr��M�������y�y���?<�H�4��O��=�v�µ|xS�� �"�Y��{�p2pw�w���Mx�e���=�=�&�%�o� ��(�wi����A����ga6{"Լ%��J������M��͏Lt��ʜ{����x�g���FW��	h�(A�����\Ĉ���qh��`[	q�� �>�����Q5d�~�k�f4��>�c����x)%*����~���L6���Ӛ�<0F����� J?�� Z�d������χ��������>�����Ͽ��w�t���g(|��/�h�R��������ʥH�~B��	ٗB$y��=ܡ�Z�����(@�sCٍ4T����y� �8)
�B�%�� ^;Q�K�pRc�Ao��Z�AsO׾�[���s��������ޕ֐��Z�;)XɄ4���~5�)��~2���ܕ����-1r0�K!�(h���B^P���T���B9��Kq��N�˦ tG��N�h�����hxr|)Ԉ��H.uS$�O�o�%&4l�5u�B�  �7E�1{�ս�&�l���tx%���Ɂ6��Cq�d(gW���[� �z� �_���o�	�����Rd7�s(���]���<v�i��;�1
�4��c�4f��S���"�ߝ�q�Kg��)QM�}s����X:�����H�lS@�h"%���K0e���/�ՠh�����J�tn��@�IIk�c-d�jP����q]�����_�9R^��Ǚ��$��v�dTEc��X�E��徟�vͅ� ���=^:y�����i�?=#��}�u�ȑ0=�t2�������<;	���Nk��qRZ?+�Pԉ��|��8N�i��x��Gx�G
c�ʛ"�}o����͐=����������w��� ����ЇpՒ����;��x��
����;a�0|z���O�d�&�u�_k��ZE��oZ7����@���~Ʊ'�+��펟y ���z���4gc��D��L��߇�ѣx�_kl9���}����e�� ?��y�d��#>ݙ���`�{�@�Ψ�;��D�+#ӏ��w>�;>�) �<�G(Ÿp��?Z��V�c'��gf����|`w�?�:��_�`��4�ߏ���Lhr�7�j	�d�B���`SI�>�9��;;a0R� ���Ӡƀ�}����wE��x����G�}?$�)
���H�|�M�dS�h�'�6i���G89}r� ;~`T%��4�)�y��C�$�{wJ�X	Q�K;;��6&�����<:<��W����w�N�D�����O�g�RJ��X����Q���J��{Yi��[8�k �I�����@���=?Hg}_?����E:D3�� ��c�4��8����f��A� V�g:��(X    ��y��S�57>IH��Y�o{~��]�3�}���=Q�c��&4<�>tvb�%Fm��Hv^A_�N�#�[�t<;YbX���ܝ|J�vu�o��1���ю�f�g;t%;D-2g���;H�s�P��,�4;�Y8s7�Lԏ4Ҹ��P��h�?�����N��h��7�]6�{b~�82��Ӓ)�~�ʢ���������8�*8�Y"������~u����ms<b	�VJ4^���o������G��?���}�Nz�5�FNlo��z��Rk�4O�@�N�[E&�>�cPIAE�N(i��A����V�������'�ұ�+\��[w�p�fcI�,���x2*�_&'���;v�Y������!A��p�O���6�x��ң%>�xT�촶�7"��p��>�6�vr� aǨ{��������Ǚ��a�1���j	V��T����m��C�*�`O~�Y{��,_����)��Ҍ���O�G+�����ȭ�+��'>:f�.|wbaOZE�?�E�k����ă�?���i�����!0��Q������Y�?�BE��f��oq��b>��Q�m���J�?���)���' �ҏJ!Kˇfx�PJ��#�?�"=��2i{�w|�0��`8��Zլ�Ӯ|�A#�|y�o��͇�9�Wʈ��~�L�B̻}�����#~@$K8�U��s���v�?Ȯ���H�ܡ7����<�=��7���W�;~�*���'Db�O^|s}6-X��N|�6���w��	959�%���B{�;~��K����>����������q������*��� �TA��K�����3�v����@z+�2�O������c��y�>�*�=9[P���7� B�v���c���z�/�� ���Wo!������x��;Љ_�D���S%���z�Io�����OE{�O%`�Ѭ��V+��'~jM����lбl	�>�*5���I��U��ǝ�SYǘ�[r����w��5��<Hn��u#ﲵk'���}q��o؊wП�?#��pi������9���?���v�#ǀw���ี�iXʎ_�>�FNw�(e�7�;�x�^˾�6��@��?!�hþ��q\�����2���Ƨ��(-*m�Ѿ^��ˑ��s�״^�{+Y�������]2z���@��0K^�~�_^��5/?�����w�p4Ώ���kF�|z���ne�VJ��۾�$sx����@����3�,t�|/�Q}O���z��V����o�_����!��������*	��B��z� $��N�����P��:�\%��=�� ՙ��A��g7��%l���p�2b������*�hN~�r&���M/�$�r���{�ϴD{�� �ѷZ9����_��\V���^	8��c۩l&U���/s��u�����T chd���e"cy�go��V����?��E��K���7c���}�/���FG��xv��������+�����,.>&URz	�-k;�U^�A�$�/��ڱku����HP$�����m_��՜�nBzT���0��Va�y�6��4�Ο��*���B�Oݯ��/l r���e.��vn�U�������S�Nڲ�����c�����y�#?��J�����Wp��K7dK�<%>D��7�'h	�������.��?r�zH��㏶�#G�o��m҈�i_��
4����_Z�{~+2��R���}��8䬿C��P�~o>
�!�7�艪jV>v[�k����"g�fc��.mԖ�?b`<�K��I�Z�s/+��I^�{|�����U�&�z���O)�� �>�u�r�M�W��	�"3��7@���?&�9-�*y���Iu����x
�w�6�������������=��7��s ZF��ퟶ�c#n~#���q?�����m^���H>���Ms��֋@k�F�]{�{mC�U��Aa�U_�J��>�éF����) f�rڟ04i���"��mQ���?	(^��~F{b舆v*y���r�����%�O�tWETo�m���>=�� ^!����\�k}u��/$�0����I����O��	�����=�g��o�X?��. ���b���(�m�޺r֨�F�#i���;~�7zG�ۙ��д��o�PvC�~ۿ')�w�C���rK�lK��w�ԍ�Ƞr�������X��t��uC���3�ש&��|J(�"I���b!����)!���wg�0�[���o�����]������͠Uϗ�Ħ�1r������ )BE�/g�4#1У�yܛ�rs�ϓ��n>�&�ɑ�T��=���(�v�<�����"4hʯ�IZd:=�����������,]��~���Р����
�-�������1{�|tS�������uj�H� 6�r�{0˧ץ`���^Z]Z�_��i?�����HJr�<��!���������w;�;��E-��� �(� ��Xa(7��O�h�� �@ΐ�o�bK��������#A��H]RV'��&�o�!�T�bxn� ��߄\/H9'A٧x �y	"��<4�V59݇���L8�!0|���{�����.s�2@4��΄m"��y�S�7�%�e���a�Q��,��=��P�����#�Y2µ��$�|Z���z�N���v`��X)�{Ԍ�!��b�s �֕�ϱ�gF =��wbW�Զw�F���C�
�P�/��̴�7X�`�Ez5��q�-13ۧƓ�4���{T�t@���p�b�6
��K�!�S2[ Y��v��ϣB��<fQ���G��EI�� Gox�l�~�PS%�0���z��������y `c��Ó��s�f����t�}?�啽�[��6p�x���"z�csNF�g����y Jk�Y ך ��v���Q���G�����}m��s[��6�ϣ�6~
<��1{d��y/7�8j�D̚��o���P���4� ?	uvh�i7��?O���(�9��p�O|�tUh�=>9�!2����G
[�@�;{�F�w��CUf�ǽ�7�������}Hôړ���)��5�k/	NIB��"�xI������U��#�L�p���E� ��!H䫥�g?^��#<|����w�N�/���t��w�n�7~.�r��o|�$1��j�oK�=O"��߂��S)䘷���:P��:s߿��+d�C@k'[(�M{|y.P����Gu�i?�Dl9����b�#�
����1�{'=�mƉ1���E��}���GE�y��S�a��B�{���E6Ǜ�Q��!{:pvAũ*��?4&�P@����کn:�� p�P��*�N�$ȝ�r���JRr�
#̡|����+�bwƬw��G�h
��?�����x�N�~�?�͏���c�<O�2:j8����ew~T����]���9��'�ik�o��>t�����J���c��������7G~���Ώ ��$��~�_G>H:��W�h��u}ָ~��	L��-�J�����������d���󒼅�����Iȥ�o���*i��#]A'��f��+�}``�,SO�An_⌯u�S\2�������{;0��V��� ��T=�9�˜:�{��7��*�b�'R���1�響8C��	ϩQ�$�����s["(������QW�m������;��{6�����8C��nt@��<��O���M�l���,09�k�ԧA��� �Ja�c����҇W�i�m��z85�;z@�p�:��Uۥ�UUOtmp�� Rъ����?�N$s���k@��Ǯ�����kI��jx񉼝�y���1OB���_���
N��S#��R�=\;i����u�\�`ڋ�7��,�C���*#d^�^|�������[�::�����G��5O33�U�|�G�*0Ϊ��?��9�����X��7���.��� fO��_�OՉ�l^|�����u�������Q��f�����s�C���K|�M�J�8�����iV��� T�y�a�    ��$<�/ZSү���o���>�3�M�Ic׼��s��IR��WG��U���bKM
�v�8���SU�s�!��z�r��E��/>� ��)�sL��� ����a;Z�����-Hy)��F^��i~g���F���>�E @w~��]�=��q�gZ0d��'�tUG���tК��9�@������)G8��G�\hO$�������$��������}��y��h�-j��?5�_�C[t�^-����T��'##9����������)N���T#���{�����`s]:��ʛ_!�Ie�$��wS�#>_�/8I�q�O�j\��Gy�G��������90��G��>;poN���d�/\~�w�Qs�zc�+�R�t|��k4 r���'x!>�:�Z��Ş�YYe]�j��1��Z�:`��w������w����W� ��{JA;۠%0��t���- VzN���)&�2.2�Sa07��=e7!8`8������`	���Me��l�T"N�3��pT��Tݷkk#�{N�0����sJ�Q\ZH?���C�F8\J��-�������F�TS���l���e��#�>N�x����ɠQ�_ ��2�r��Gv�� ΌG���D4#c���j��瞒��G[�w����)�B'�G Im��T�������I��h�=eT�*�`�0�>�_�a��2x�L�^�-��s�>��9E�j�-�G[F�-�tN�����-T����������4I�Wj�p3�!�h�{�6�-���$�%���뿁����Z�e���J�Gf�����2�$C�K�'x�-!p�Jd�� >��i��=).�%xE�?Z�_�{-�[ ~.RO@r�- �#���b�#㒡�1��e��CZ����� ��o��rU{�ֵ����G�Ún��[$�R-iD���/���7'�x���i�N�q6rmGA-AF)��R�B���C����L��6�52�J���������NH���67��f�y������c�����я��5� ��b^�L��[xF�x�+غ����~�+ά��[t1�����J�})��;O��h���+��[��A��l�A7 ��(�8�.>��AP�0�t�W.���xuh�w�\��L��0�/�$�[��W��&���22�o	�6T<|R[���t:��n1BA�,�9;,v|�@����9;4���(�|�_t+,՛a�N T���0BQ��9���ߔp��`H?L�lF�O�x��(T������U�z���c��;?tiU%���\CW�i�w��D�T����)�1�4!K�5|��ꟗ-�V~?"�����n����Ծ5�̓����m�PYU��5�f�C���Jt(M��]�����Ng������֘U݇䧪ַD�m�+�|�~��6ʶ	:�V��K԰{oz=��BSex٥h哢�?u�YMw��{-=f��۪��� ܼ���K��һD��������s�ʆ��$ǳoza"?$�W�7��6�'��̡��'��I�JD����Q���o���;1��Q���3���b2�`�"�ڸ0����d����"�'\�ݤ�{ƾ�ۑ/�]��q��`�Yd'>�I��Jfݫ��me��*9Ç��~[��KK�UkdMź@T�Qt�)훘8==�Q�1!�	�u?ojOb$��ku���18Dख����s]����hO�w��g����1��Cڐ!������S�N�cVbYv�ه�,����mpQ&�J4K(�����И�%D# e�I�{?t��{ଲ����jw�C�<KU�(a}W�Y����r	A�=��D������O9��~���Ƽ��T#1w���즩(vd枿>�r��q�|��e������,�w��.�)���1u,��p�;y)����/^�.�/FҬ�<qKL����-��;uf�4�o�R�n\~�%��O���@��yQY{Ou�ţF=7A�Sj��w��c$����W�x�؋��@���6>������E�txF��~��K�÷��D��c����$���O����_���/�ܟ�~�pa~�V���&�v�jwU�~�eWoK�n�����'b6X8`�;z�d䤄�����c��;?�\���Qt����@;�@��g��Ph��G�}�+n��w���MF��x�;���=�R�vc��u-#����� $}�.���w-p0��V�U�ޞ	�v	!<^z�ϗ7�	<ˮK൷��Qy��(�C5�O��K��� ߦ�+�����KO�j���n;bPB��ޔ�K� 6/��|�%��:��=e�ANT���Vݜ8u���V	��e��9�]�����0~�ƽ�L.Tbt��0�i�Lo��Ͱ��١�JB �6�5���7�.���`�54�I!�﫴�o�e�:l��Ie�W�J*����rH���}�&����iČ�mt&�t��X[����1�F�o�t #�]'���lZF�玿����/��A�Q���K�U�W��sO]�<a�;PB'6���Qs���0#�C��t�O�<a�I��8�(e٥�w3�
�H\�EhBO�Y᫂o}��n�BF&�۷��N��w�^��4����Ds�Y�i�Fote�͋~:����u�/;f#-�_y�@�K8�p�!l�?vӫ@��o�֬���`�6�� d��Z��!�����U.�j_7p8]��<�84�h�]g' �z�	-�@��T�Z����wR{���Y��>yB^���Ew�?��~��l���n�0@E|�d~\e㲏H�	���#.0�9/; ���*un��j�r��m����G�Q�bԍτWS��H/��qI��Iw~hE��_��+�
0�Nn�غ����>t���&�����O'�՟��_�㗿���]ɏ�?U��CQb�>D[]��W-��[Xm�ס�]��(�������-�R�&�^�	: �H�^��ʒ��kV�Z3P��)95�l�%Svd:A4���dfA#�މf����(5�(?����*�!{2>C����J���˅���
��=�'tx�&�BS�B��V�ܹA�Y��ڨ���t[��i�]U���М��eer&R�}��hu��N.���&vo����0�}��f�C�|�m��/�;9�[�N�A����Cxj��n��7!��|�?�� ��������xo��8�EPv��njn�v�b;v������7k�]ۅţՂn<:�Ī� p��gmZKn��a����%Ыz�~T[=C����*�B�ϣҙ�잒�Ī3R��}���>��5MU�
���C�3,h�Ե}��7uk�:�m�g����I�t��I7��r�)6��7�;7D}�_f�
���Y�i:< ۵w�D5H(78{#��#E��
E��M�a��[��':����r�ݻ�丒6Ƶp��$���<��8u#�?�R��A���ǜ�ʗ��������q��3�X�~T�}}K��?Q⺃�o��j]�lrku]2��^���ZVɎn���m�)����m�Il �#�o��Wk~��_~���_�^xHpE�����<�.5̶��x#}��N����&��y�b��N�0�n��O�=�|�4�׮{B\��\Uk*�w��^���`Q�I�5���)��ۛ=$�Ǣ�!ٻ�"���<?��(�ڼ1��~����xt�'u5�C�C� �ӿ��v� ﺁ��1d���5�tδ
���^����W]�প��j���A������k*tzSvX��C��� ON�ߩ�m=�±�zpO��v���.��Z\p�ܮ[H�t��gkq^Y{<q#Y�h�]������t��$�ޢ���>�/Q�T����1Q�rL���Jbrѝۋ+�/NJ�\����͖@�fE�������k4iCE�f_��!�ĸ���x��1i� �N���ۙ�LO��.�������ݲs����u�̺߫���<�,�5�1WЙs��Êq�Ff�F��I��5ob�m>�&�m���8�FWl�ž �  :�/W�um�fD�:����^�W�F���3�]3���~��t_���ϫ�:*r�x���ա��Х[k�[Q�{/X�ͥ̎ϧ���k��tl�n*~I\�sӛ��a!	�)�vm�$���M�/��5�~���}��.F�]�[u���N~o��`ݖ̌��}�XY ����NBlx`��8��O�T���鴨�z�OYH�ޣ������Y[�<'1%p�+?W'��VtG�wv"W��o����O�<7�}���A4>�'����{�$v��ro�י�
��x�w�2����%m;q~}Qᢘ���e6���:�j���߫F�����=�,�\;m��<6��J��yba����-`J�F�������M�u�ѱ����4T�����<�i�ɵ���U�v]!Y�����p�Y�Bvw�=ׇ����Jt+��T�+��`������/����?��ga�I�0G��ݨM���)t�9�Vϥ�+h=E¡Ď
����b��-LpժY�C	$��W\Q�7ĭ�{�b�FW������c���'����N�}��]�ы��U=3a��7�9�co*��5$���砝�G?v:�ڄ�h�r��kU�o��*��j��U�K0w�6m;�C�V���Q`%����=U��Q6l~����f���I�O&�m;��X����'�)���YEt�Ӆ�}�l'�p����U��n �ɿ�*ʚ��S{��ؑ�S�|c�='�j�E;w�ߥ����y9@����E�KG���+n�jO��a���-[��mX�A�d�:��h��j!ԥ"��x��ڑ`�����-�Q�u	=W���N���ދ�v�cӜ<���󲿯X��x�I�7t �d�}}�W�&������ϝ�E9�8B�L��ɎW$�.[<�Ru�m:���dh�G�>C�ʽ74��hwm�jQ�����{��N��lTN�t���,�R~Y��R��F���VG$����su��E��/:�ր[�k�]k
���Ǫ���n�yd�Y�b/>3���*����M����3���JWp]|-V�$:�k��� ��U6�.%.�K�v�z����W?,�^�����չ��y�7S?P������̸"��j	���qj�{Ϗ��<����3S�8W���r�՘��*Y�$k�o���o��*�m��_$��ߓv�G�9����J�V�a�7\���R�x_��uK~���7>�{��]����4--H��6~��C���v"�?M�0Q�q~���FF��<«BO�g]�qn�r�w�t5��d�T�ք������z],��eFF��h��l����WT8y�R��RMCԩ#��+ɷ���������x�8B0���~.�]����e/\��p�^<�e�i��]��p�΃����{@E�ל���_v���Ӥ#,�)y��*k8�j8� ���:�R}�G�,\�TtU��?ڔE*6~~�8�>�j�����J`/�LI?ݜ~k&tCa�w��y��V�~߶��}D��aήИ	6�_�C�&F{�i[�9��=�O����A�������2~{~IPdm������uPڼ�o�~c�/�X��>��ݱ��s�ߐX����*W�x����SEiZ���䪵���� �`��uO��6UE���>�+u��^��7�}�~VM���2�����k����.�̕~���>۷�c���������?�?�_�      �     x�}�]n�HE��x1��5�f��*�R�<_�A�I�)���k��C�.�?�����R��c�,�ʼ��ٙ�9�y�7��Y����,�ʼ���|�3s2���ܜ��f̓Y�w5����l����\�:�'�0s5�j�Ք�)WS��\m�j�ͻ�n��8Y��y1�3s2�f�f\͸�q5���d}';s0's!�`��¬̋��9Ws��\͹Zp��j��bW�_�����l���ɼ����K�W��,�ʼ�]'E~'�3s2r泚_�T��daV��|V�y��mUϗ�r�`N�"�c0OfaV�Ō���js�j�ͽZ�^�g�ָWkܫ5���j�{�ƽZc�6���j�Մ�	W�����S��X�dcv�`N�B����'�0+3WS��\M{5��^�q��ͫWkܫ5���j�{�ƽZ�^�1W[\mq5�j���6p��������1;s0's!�m�����9Ws��\͹�s5�j�Ղ�W����#5z�ƽZ�^���ȽN��\�{��D�w��'�0+�b6fg�d.��j�Պ�W+�V\��Zq��j��d`5��A��8���Y��1;s0's!_������j��M�6���j��M�6��p5�j�Մ�	W�&\M��p5�j�6�{3G�mp�¬̫�~�ߎy=B�dg�d.�k��dfe^�\mo���y|6�������w�Sdo���¬̋٘�9����9Ws��\͹�s5�j�՜�9Ws�\-�Zp��j�Ղ�W�\mo��.�]�@�6x��,�ʼ��ٙw�u�p�;1	p��[��B�K�~�=��'/fcv�`N�]k_�:΍d���=���Y��y1�jy��>@���s2W���=�u�q'OfaV��l�g��W���>=��=���\���x��,�ʼ���Wkܫ5��s5�j�Ք�)WS��\M��r5�j��W[\mq���W[\m.z]�D���̅���OfaV��l�\͸�q5�j�՜�9Ws��\͹�s5�j�՜�W���@�ݓh�^������̅���Of��\-�Zr��j�Ւ�%W+�V\��Zq��j�Պ�W+�VXm�mP����b�m��¬̋٘�9����g�����v���O�2/fcv�`N�B>��s5�j�Մ�	W�&\M��p5�j�Ք�)WS��\M��r5�j��֮vwj��dfe^������̅l\͸�q5�j�Ռ�W3�f\͸�s5�j�՜�9Ws��\͹�s5��n�<b0OfaV��l�����Ւ�%WK��\-�Zr��j�Ւ��vwkת�<��Y��1;s0'3V���l`5X�V���l`5X�V���lp���&W�\mr���&W�����`N�B���=OfaV��l�\M��p5�j�Ք�)WS��\M��r�k��!�k�s!_���'�0+�b6fg���{�ƽ�7[�ָWkܫ5���j�{�ƽZc�f\͸�s5�j�՜�]������9vm�{
^����9����<��Y�{��\-�Zp��j�Ւ�%WK��\-�Zr��j�Ւ�%W+�V\��Zq��j���6�>g�q_��m���\ľ��OfaV��|V��/{��dg�d.�x2�2/f�6���j��M�&\M��p5�j�Մ�	W�&\M��r5�j�Ք��m`םw�σ�ؙ�9�yo���¬�\mo��$?~���m����̅���OfaV���[m��vƏ[g��9������`���u|���m��¬̋٘�9������E�&߼�����gƊ��y1�3�v}r��%7
9Gc���,�ʼ��ٙ��Wkܫ}sq��j�Պ�W+�V\��Zq��j1�Z����j1�Z��m��;��'�u�)�����������'�4�oV��l̽Z�^�q�ָW�f���j���p5�j�Մ�	W�&\M��r5�j�Ք�)W��sd]���'��w<s2��6x��,�ʼ����-�����j�Ռ�W3�f\͸�q5�j�Ռ�9Ws��\͹ڱ�[�7��O����������\���������x,�I(�J����)S}��3�o���9�7r����V���ɯ�de^̯f�r~����'gD:s0's!�`��¬���������?���u      �   ?   x���6000�tJ������8�J���2��� b�P��Ԕļt��	T�)�(��+F��� #J�      �   P   x��qt200��p��1�8�2�s��3!\cN����DǄ�-�83�3�tJ�H,��̀FC������%�E\1z\\\ �zG      �      x��\�rGr}n}E���_�n�7� XZ�u�i�d�����u@ԬC9�՝�u�,H��	Zmt{�BmO���_��i/�������6��v��ԛ�>��m���݇�#}����
��v#����!
#�g�B|��X���?H�������x��&�߂CI���&c鉾`�;:<|�#Hm��#�O�{!��<}���$�/�y�\+�ۈ;�-���2�ZSS��/�
-ۅ��iA)��
^��5ݰ�R(xQ�vݲ7�a��z-����َ�j��vߤ�ޛL�m�jYח��M	3�ϒ&|h�3���2�����#F��x�T�9GA�,��_x�9WF�����+�i��>���)9f�����g:�~��M
�4��),��a�I��K���ST�x蚋�IR�����-WKv�F5g�o>��%���X�K|��ޏ�5I���b�S�WES1�y����_N���ij�Jn��)���u��!�?�q�Dχ���r��/<���_Y�RT.�d��mY�\*�8i~�@Edj�h�]5x;WR�l�ߘ>R��hSM���d{�:�b��a���g���\��/��/��/7��pX �Ȱi����>�z��������!���x��@#�q��R� ����b�^E���#�T��a�V1{�����@j�JP�V�w�}��%! �
�bJ#�*.�xa��:}�u��|���<�f��Yx�� ���������E��ʫT�묿z�b�?T)݀Ƭ��b��U�6)��aǇơ|�(If-�ny�)�%�~=��U{p
 Y��������u��\'7�즃X�c� �B�]F����7=�<�b��t�T׺M��Y�՛��6Zd��5�Qide���k�sL������Cv�Z`��b��ƚ�c��9$*
å���p���bu�7p���,a�ڞ��r>����+��w�� L{j�o��j�%o���+��$�Z��&��j��E�Þ���"�����j}i3hy�2�=�'Z�����3�fK���/�s���pO�u��+���bXO�����kJ��p^������e
pF�Z��UX�GH($��([е4�2���� �^U-d�Zכ�X+�L^��JĴ�z2���TB�i�0���Y��L�O��/����6�13c��G��n|{�1��ؓ*��'������	��!~�]\*V[b&���
b�
�C��2U�K��c�U(��lo�����=r��Z�l��5�r�?p!c��0엞ozډs���>6+8�W��7�b�����i?��{4�+�}J��2(�N%&��BZ9�����-Yf'�L���NF!�@h��q�}��] �H޺j3���+l�4�r�o�dW=�r�Fݬ�a(Y
m*�#�@���S�D�f�M���o�j�19���	o�E������x-���3�*�,�7D�c�)w0�&���eH�(�������Db^ƈ�������o���r�f���Al�oa�f�������M2�JP�P�׬W)���D3�h,h��0�e|!��Ԧ]�K
���ד�&%e����/�s#��j�3��)2�Yn�dأ@>f������L�.l��|˙��3OQ�����B2��6�L�	��!��a�Q~�r�ס7�f��>ǆ�t�=��&�AƵ$E��O#����v�8��ʺ��B"k���԰���vO��M}�#�H�|z�)	����+�7�ہ�C�w{l�e 8�,�~���Ę�f�������1C���������7�
�p��<��K���h#��U��Nh8P�hW�Ť@WT�k����y�2��q��s�:�:���N�������`-@v������r8�>�b��~G��HϏ�������yS��S�p�	�ѿ�>�����-��������Mx?��m��$������Z
 <0M�i�/�L$��Iݔ�r�#|g,;�zi%Jde�vpP��(�T7�+��$��Ȋ�H����X�Ċ��dV��L$���m�t+ɲ���T���˄��Ocl�*t�y���fџSW��aO�O���9Q�9��ڜ!���7t8�vz�B�y��敤Yw�@P	�oY�, ƕ��S�����p�Ȁ�A��^�(W�dB��"�[(l�z]��׼{�+*�zA����og��rwG7;��Sa?��ڱO�6ti9~����3|t�m�+���ϴ�y��^5 ��V��u�YjЦ���L��|S�v@6���I�1
����Hc��6̂
!��w�/�����]����n����r�ra��s=^
��=��^��ᵌ����5?�Y���ȹZ��K;� �U��j��/Yi+<eT>o�9)(z ��6.���H��7A�{��ّ,Iyp�^�P\�Z�'$�J���K�?��幨�;|$����l���`�k��OC�������c����.����_�� m�ԧ`u
�z]-�U�S�����`�β)���$��g0,��,lW�"�谓�.�!�|�nL>�63�vI��l�4�r����-�( `?�M˰����p��_~��������ql��y,�7%v���6)\�M�)d�r<o,�XDq�-P4�TY��`BH ��%�dI^��oR*h���0�9с��}�Z���L#z�U�z����D9�Fɚri��r���C��.�z�% �aG:9�.����[3s��zK�7�w�����O��i�q�r�<��s�}Z���^�������&�&��&P8$��tx����=
P3( ���3���"�gY��a���Yv�#L$�O�'�cq�ߓjpd�����U3�~ֿ��� ��}�.=��9�w��ۗ�K�u�!��ȱ��I�������^׃3��~������ډ�ڀ.s6S�wjJԞ�S�9�R�P
��IL������ِ3�{p����٩	ZFxD����-G��>�7X/Y*��h.<��=����g���v�*L��������_��������ׯ��P��RJ�?��'2xV(L�g,�%h���
��wܲ�4�Y(L;r_36�)DR&�N�v�@����  ܘ\	������$U5�nR� �#v�/=��;�ӗ��:�&777�	�t#��N�o���C�6Q�7�P^��-�	�J˪�G�U*�5���&�-��؍k��� ���c�"�5˕�^B�sB!'�#\f�0v�kL�{��v jB�&�k�wł@A}C�{�����KϿ��/�]��V�oX���|b�8�G<ލ�)}ϝ�M����:���"8�3�l�r�)H����y$�%�<e,~���gd?���5�I@b�N�l�
��N�@uY]��N΃���S�dU��\@���7�I��:y�כ��*8������=�b,��c;WA���ʐ'ܰ��e�Ɏu���� �aJO��
������q�!��V!��x?�K�����[��\��4T�%6�_5�����K���M�ik�A�_�kR=>ގ����&5�7�˼�r3kK!VA28e�(�h��_!�Xq+���Xe�w��]mQ�&�;����0�q���@�H+�9;\ihzk��䵝t�F C�N��]��j+����n:�mG����;��2�/.�|J�V(`
�v\���ĝ�*�9>6�^���m���g���[n�x����(@5n�ɫ�B�ᑎ�e�����Ӣ��9Dz�Y6Ns�"��&��D��`���%�2y�����sӥ񧫂8[;V�7+����ݏ/�.�}��,9y������%)�)2w�]N�F*���
`1,f��{�hb�5�{�1;	�<پ���B���r8�U'�l� 
� �v�U �s1m����1� �z�^T�Y��y�,�6-�f�=U�@��/ܤ|��=����	��s�PTE��v���_�u~�I�fK�~��<Ƽ���~��gz���^�CZX9{���^�3���V�O\��UZZ@އ��6��|�Z���(��v�s+�l0����FhV<J�����1���i`'�G   �IB�/��IA�
n��P;b���Eא�|�2Q��+J!����m��ɠ����ctnë�rѯ���k��or�Ӿ�	HjUC@d���Օ���<�Ls�b�ν}MJ�e�x	���_������l��Z�eķFx"/�dF"� �a��5�9�YU&���ǆJ�Y��h��c�y��G��<Չ�*��C5s|*� �2ƿ����1���+�Y������O���_z?�5�4�\������RK`���p�&�$h5����E���}�/�v
2G5Rr�E�h̐>6�E ��¿�ͅ�Xݝq�+�� �,4���ڼ�����]����\�,���s�OZe4��@Ld�"p����<���!�;��F�êg��L� ��"���׹`����Ӵ_��,���gh6�����p��}Kgo�N~��)���r��ZR2C/A���t��@�f��l�ݙ����s�?dF~�z�0�&��i�y���ũ;�!�%ח��"�_�;��5w���E��;�pvKtG������S�(�,��rciW�%ݬK�4� ~d\��) Y�74	�Q����WԦ�ח �k��+8�$bDp�����n����X��J�P�ܜ��#^����M��|l޽n{z��Ɯ�I�~�,���K��wk9�W0��2� H�J�ql���l����1�@����:���Ay�#U���`� �$��&k�fn	�x��#'�Z�U�)i��,hl���k̹	�`��<��'�Z����E��[̵�4���$����*���sB�:�U�5 ��7�!�����5چ��\	ȧ�\���� se�s�Ε�I�C\�6���>q0���0m�vC�W`oh*��/<��=��p
h��+q��W=���~�����=o�W��~�Ȕ��%�S�#����9�ڂ�#��L��^�0$��x�[a��!�"�^��HezEV��T��$Λ�5��c��^�<�x��n�0��;���5��@� ����-y��]�6�?U���W����DfƝz�9B�sm_�v�����io`�Xi���l��Y���-�ޅ��M�d��u~؅�v�2ri��/s���%Y��j�6�׾��Ǌ�Z���j�{¿�Zc��b�$�;�@�[�g����/��4�l�p�;�Z	�J����	�Z�x�?T+"�	�j\���¯b�=��䐝v�?���-:�6�$g�$-2��PC+,3��i�@����+�B��:��;�����f϶�p-� ��bx�����{+%�� U�����V�m�-�{�^��A�
<��!V�AYd�]��Ύ� %�Iu0yp��a㔺%F�y-��9�Ł'��)��e��b�1�qv;p��v@fY�9���o�QKg�������!��n>#
#�i�P
R:�y��Tf���
����#Apʌ�3��A�RI��~K�Vq���E>ia�	�9s_�j�D���
»f��
�*���
H1�A�w�D����u�(�{��m��
����+T�gu~~����gKŉ�/�#��� }�E;m�q����{@��;��?c�v�_�/=���I���RY���ͭ|��}�⠃ʆVO;�?�f���nV3���>�0�ҟ��B�un�_y�l�6���9q���!�]���s�ԗ=N��f����n����3*�A~w~<�)0ꂞ$��_BὬ�A�2ir�@���e'[FsA���j^��s���v�"�p�S�*'eD؎��?�1,B�V���!/v;X`�Zs�.#x2"8�����0a��F���x;�\��X��:�X�'+��Z,��/��O@6
�;�����72�=T�D)nLu6e_wW�83D=��N�7c�[cE煚����'�e۫}�xw�JH��
~Q\)��3/ኢ��n'�`U�T<��F��H�ag��DP�C�p+J�~ء�Say4e����>{����a���6b#&܌Z9�>����ڲ������f쩗�Xw��[������=��>��ͨ��Y����9}�Z�E�mɉ$�̨b}EV%eؑ=�v\���i����*��,DV�c���aq��e���Ω�II�.zI�E_B�r_�X���Z�YN��=!�X}����}�t��L���7S%J�����Nm�έ�ʁ!��S��ǂV�=�Z��zs&�Z)ըۈm��}�B%�ir����޺�,;��E ���7$���!t�N�o���@�4�n���̰7g�Rb
�4�<Ȯ�<� VxT�۹VMI[ŵ2����,żq�n��]�8V��E��A q�ȏ������Ꮸ�z%�W篚�X�wd���F_y�W�?RX@��b���G���u���!�vH2�[�+q���ͬ�&	+��!�y>���A�yUz��JUo�L;��	7٦�b�2~�m��I�lw�Q>\�\� 1>�QL���ލ�3�%,~b����� ��gg��@\�4��)�WF�X^;܍���|�'Rt�ca�����,��w���r��b���\ŀ�V%O`��q����޽��q.pIh\�Z=i�Ӱ_^
܏r���h���o�x��T�`����u���ϯ��u����_��c�?��0��ݟ����߻]���P-�A��]1��S����J��X�Mo�;�X�aG�@���|�i|�<dB� ��iM�e#
qG���Z��TƝ�҉�b��Z�]���-���a���<�wk�LC���F�n�s��h֦㇛�������>8=�l�u\��d`�\Ǻ|��Uaz*�T���ȱ�ɠ[�ʫm�­P�X���B�����";y������u$Rx�a�G2.�Ϟ�|F��'�!>�?�
�)� ��#ՙMw�
}���o�������u{q�V�w�+�/܌]m8	��6e���`�k��4D�KMC^㬈џڀl��k
�k��H @���q��}��m̈Ym:�"7���^��4��:����=d�=���g�	a�i�+��vkEl%��^Y�������L�9P�?��>�ʰ��z���%$r�:�����⩍	J(��|�K�E<D��u�R�aF�C�Xa�∨ ދy���#}�`�'>\�ꖞ7<��Y�7���>���控_���o��������q�O�B��kv��H�!�0��'�C��O�S��tq���IsC�T�7�e\��w찓T^�ƿ���&-nE��=4��	�Բ�Q�&>#8:�uh�1�iL������~���S�1�      �      x������ � �      �   &   x�q10��KMO-��
�8���K�b���� �;�     