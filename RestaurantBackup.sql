PGDMP     
    5                {         
   Restaurant    15.4    15.4 :    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    16544 
   Restaurant    DATABASE     �   CREATE DATABASE "Restaurant" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Restaurant";
                postgres    false                        2615    16545 
   Restaurant    SCHEMA        CREATE SCHEMA "Restaurant";
    DROP SCHEMA "Restaurant";
                postgres    false            �            1259    16563    dishes    TABLE     �   CREATE TABLE "Restaurant".dishes (
    id bigint NOT NULL,
    staff_personnel_id bigint,
    recipe character varying(32000),
    name character varying(60),
    type character varying(30),
    ingredients_id bigint
);
     DROP TABLE "Restaurant".dishes;
    
   Restaurant         heap    postgres    false    5            �            1259    16669    dishes_key_seq    SEQUENCE     �   ALTER TABLE "Restaurant".dishes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Restaurant".dishes_key_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
         
   Restaurant          postgres    false    5    216            �            1259    16580    ingredients    TABLE       CREATE TABLE "Restaurant".ingredients (
    id bigint NOT NULL,
    "expiration_date " date,
    product_type character varying(30),
    name character varying(60),
    calories_100g bigint,
    stock_quantity character varying(20),
    minimum character varying(20)
);
 %   DROP TABLE "Restaurant".ingredients;
    
   Restaurant         heap    postgres    false    5            �            1259    16687    ingredients_id_seq    SEQUENCE     �   ALTER TABLE "Restaurant".ingredients ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Restaurant".ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
         
   Restaurant          postgres    false    5    217            �            1259    16641    orders    TABLE     �   CREATE TABLE "Restaurant".orders (
    id bigint NOT NULL,
    date date,
    status character varying(20),
    payment_state character varying(20),
    table_id bigint
);
     DROP TABLE "Restaurant".orders;
    
   Restaurant         heap    postgres    false    5            �            1259    16670    orders_id_seq    SEQUENCE     �   ALTER TABLE "Restaurant".orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Restaurant".orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
         
   Restaurant          postgres    false    222    5            �            1259    16651    orders_precessings    TABLE     �   CREATE TABLE "Restaurant".orders_precessings (
    orders_id bigint NOT NULL,
    staff_personnel_id bigint,
    dishes_id bigint,
    dishes_amount bigint,
    notes character varying(100)
);
 ,   DROP TABLE "Restaurant".orders_precessings;
    
   Restaurant         heap    postgres    false    5            �            1259    16546 	   positions    TABLE     �   CREATE TABLE "Restaurant".positions (
    id bigint NOT NULL,
    salary bigint,
    working_rates numeric(2,0),
    name character varying(50)
);
 #   DROP TABLE "Restaurant".positions;
    
   Restaurant         heap    postgres    false    5            �            1259    16673    positions_id_seq    SEQUENCE     �   ALTER TABLE "Restaurant".positions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Restaurant".positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
         
   Restaurant          postgres    false    5    214            �            1259    16600    purchase    TABLE     �   CREATE TABLE "Restaurant".purchase (
    id bigint NOT NULL,
    date date,
    amount bigint,
    provider character varying(50),
    ingredients_id bigint,
    price bigint
);
 "   DROP TABLE "Restaurant".purchase;
    
   Restaurant         heap    postgres    false    5            �            1259    16686    purchase_id_seq    SEQUENCE     �   ALTER TABLE "Restaurant".purchase ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Restaurant".purchase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
         
   Restaurant          postgres    false    218    5            �            1259    16610    skills    TABLE     R   CREATE TABLE "Restaurant".skills (
    stuff_key bigint,
    dishes_key bigint
);
     DROP TABLE "Restaurant".skills;
    
   Restaurant         heap    postgres    false    5            �            1259    16553    staff    TABLE     �   CREATE TABLE "Restaurant".staff (
    full_name character varying(80),
    passport_id bigint,
    category character varying(40),
    personnel_id bigint NOT NULL,
    positions_id bigint
);
    DROP TABLE "Restaurant".staff;
    
   Restaurant         heap    postgres    false    5            �            1259    16672    staff_personnel_id_seq    SEQUENCE     �   ALTER TABLE "Restaurant".staff ALTER COLUMN personnel_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "Restaurant".staff_personnel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
         
   Restaurant          postgres    false    5    215            �            1259    16623    tables    TABLE     �   CREATE TABLE "Restaurant".tables (
    id bigint NOT NULL,
    employment_status character varying(12),
    booking_date date,
    people_amount bigint
);
     DROP TABLE "Restaurant".tables;
    
   Restaurant         heap    postgres    false    5            �            1259    16671    tables_id_seq    SEQUENCE     �   ALTER TABLE "Restaurant".tables ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Restaurant".tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
         
   Restaurant          postgres    false    220    5            �            1259    16626    work_schedule    TABLE     �   CREATE TABLE "Restaurant".work_schedule (
    table_id bigint,
    staff_personnel_id bigint,
    work_status character varying(20),
    shift character varying(20)
);
 '   DROP TABLE "Restaurant".work_schedule;
    
   Restaurant         heap    postgres    false    5            9          0    16563    dishes 
   TABLE DATA           b   COPY "Restaurant".dishes (id, staff_personnel_id, recipe, name, type, ingredients_id) FROM stdin;
 
   Restaurant          postgres    false    216   �G       :          0    16580    ingredients 
   TABLE DATA              COPY "Restaurant".ingredients (id, "expiration_date ", product_type, name, calories_100g, stock_quantity, minimum) FROM stdin;
 
   Restaurant          postgres    false    217   YH       ?          0    16641    orders 
   TABLE DATA           Q   COPY "Restaurant".orders (id, date, status, payment_state, table_id) FROM stdin;
 
   Restaurant          postgres    false    222   �H       @          0    16651    orders_precessings 
   TABLE DATA           r   COPY "Restaurant".orders_precessings (orders_id, staff_personnel_id, dishes_id, dishes_amount, notes) FROM stdin;
 
   Restaurant          postgres    false    223   VI       7          0    16546 	   positions 
   TABLE DATA           J   COPY "Restaurant".positions (id, salary, working_rates, name) FROM stdin;
 
   Restaurant          postgres    false    214   sI       ;          0    16600    purchase 
   TABLE DATA           [   COPY "Restaurant".purchase (id, date, amount, provider, ingredients_id, price) FROM stdin;
 
   Restaurant          postgres    false    218   �I       <          0    16610    skills 
   TABLE DATA           =   COPY "Restaurant".skills (stuff_key, dishes_key) FROM stdin;
 
   Restaurant          postgres    false    219   J       8          0    16553    staff 
   TABLE DATA           c   COPY "Restaurant".staff (full_name, passport_id, category, personnel_id, positions_id) FROM stdin;
 
   Restaurant          postgres    false    215   6J       =          0    16623    tables 
   TABLE DATA           Z   COPY "Restaurant".tables (id, employment_status, booking_date, people_amount) FROM stdin;
 
   Restaurant          postgres    false    220   �J       >          0    16626    work_schedule 
   TABLE DATA           _   COPY "Restaurant".work_schedule (table_id, staff_personnel_id, work_status, shift) FROM stdin;
 
   Restaurant          postgres    false    221   �J       N           0    0    dishes_key_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"Restaurant".dishes_key_seq', 5, true);
       
   Restaurant          postgres    false    224            O           0    0    ingredients_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"Restaurant".ingredients_id_seq', 3, true);
       
   Restaurant          postgres    false    230            P           0    0    orders_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Restaurant".orders_id_seq', 3, true);
       
   Restaurant          postgres    false    225            Q           0    0    positions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('"Restaurant".positions_id_seq', 3, true);
       
   Restaurant          postgres    false    228            R           0    0    purchase_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('"Restaurant".purchase_id_seq', 3, true);
       
   Restaurant          postgres    false    229            S           0    0    staff_personnel_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"Restaurant".staff_personnel_id_seq', 4, true);
       
   Restaurant          postgres    false    227            T           0    0    tables_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"Restaurant".tables_id_seq', 3, true);
       
   Restaurant          postgres    false    226            �           2606    16569    dishes dishes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY "Restaurant".dishes
    ADD CONSTRAINT dishes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY "Restaurant".dishes DROP CONSTRAINT dishes_pkey;
    
   Restaurant            postgres    false    216            �           2606    16584    ingredients ingredients_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Restaurant".ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY "Restaurant".ingredients DROP CONSTRAINT ingredients_pkey;
    
   Restaurant            postgres    false    217            �           2606    16645    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY "Restaurant".orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY "Restaurant".orders DROP CONSTRAINT orders_pkey;
    
   Restaurant            postgres    false    222            �           2606    16550    positions positions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY "Restaurant".positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY "Restaurant".positions DROP CONSTRAINT positions_pkey;
    
   Restaurant            postgres    false    214            �           2606    16604    purchase purchase_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY "Restaurant".purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY "Restaurant".purchase DROP CONSTRAINT purchase_pkey;
    
   Restaurant            postgres    false    218            �           2606    16557    staff stuff_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Restaurant".staff
    ADD CONSTRAINT stuff_pkey PRIMARY KEY (personnel_id);
 @   ALTER TABLE ONLY "Restaurant".staff DROP CONSTRAINT stuff_pkey;
    
   Restaurant            postgres    false    215            �           2606    16630    tables tables_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY "Restaurant".tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY "Restaurant".tables DROP CONSTRAINT tables_pkey;
    
   Restaurant            postgres    false    220            �           2606    16618    skills dishes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".skills
    ADD CONSTRAINT dishes_fkey FOREIGN KEY (dishes_key) REFERENCES "Restaurant".dishes(id);
 B   ALTER TABLE ONLY "Restaurant".skills DROP CONSTRAINT dishes_fkey;
    
   Restaurant          postgres    false    216    3220    219            �           2606    16664    orders_precessings dishes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".orders_precessings
    ADD CONSTRAINT dishes_fkey FOREIGN KEY (dishes_id) REFERENCES "Restaurant".dishes(id) NOT VALID;
 N   ALTER TABLE ONLY "Restaurant".orders_precessings DROP CONSTRAINT dishes_fkey;
    
   Restaurant          postgres    false    216    223    3220            �           2606    16590    dishes ingredients_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".dishes
    ADD CONSTRAINT ingredients_fkey FOREIGN KEY (ingredients_id) REFERENCES "Restaurant".ingredients(id) NOT VALID;
 G   ALTER TABLE ONLY "Restaurant".dishes DROP CONSTRAINT ingredients_fkey;
    
   Restaurant          postgres    false    216    217    3222            �           2606    16605    purchase ingredients_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".purchase
    ADD CONSTRAINT ingredients_fkey FOREIGN KEY (ingredients_id) REFERENCES "Restaurant".ingredients(id) NOT VALID;
 I   ALTER TABLE ONLY "Restaurant".purchase DROP CONSTRAINT ingredients_fkey;
    
   Restaurant          postgres    false    218    217    3222            �           2606    16654    orders_precessings orders_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".orders_precessings
    ADD CONSTRAINT orders_fkey FOREIGN KEY (orders_id) REFERENCES "Restaurant".orders(id) NOT VALID;
 N   ALTER TABLE ONLY "Restaurant".orders_precessings DROP CONSTRAINT orders_fkey;
    
   Restaurant          postgres    false    223    222    3228            �           2606    16585    staff positions_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".staff
    ADD CONSTRAINT positions_fkey FOREIGN KEY (positions_id) REFERENCES "Restaurant".positions(id) NOT VALID;
 D   ALTER TABLE ONLY "Restaurant".staff DROP CONSTRAINT positions_fkey;
    
   Restaurant          postgres    false    215    214    3216            �           2606    16659 *   orders_precessings staff_personnel_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".orders_precessings
    ADD CONSTRAINT staff_personnel_id_fkey FOREIGN KEY (staff_personnel_id) REFERENCES "Restaurant".staff(personnel_id) NOT VALID;
 Z   ALTER TABLE ONLY "Restaurant".orders_precessings DROP CONSTRAINT staff_personnel_id_fkey;
    
   Restaurant          postgres    false    215    223    3218            �           2606    16636 )   work_schedule staff_personnel_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".work_schedule
    ADD CONSTRAINT staff_personnel_number_fkey FOREIGN KEY (staff_personnel_id) REFERENCES "Restaurant".staff(personnel_id) NOT VALID;
 Y   ALTER TABLE ONLY "Restaurant".work_schedule DROP CONSTRAINT staff_personnel_number_fkey;
    
   Restaurant          postgres    false    221    215    3218            �           2606    16595    dishes stuff_personal_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".dishes
    ADD CONSTRAINT stuff_personal_id_fkey FOREIGN KEY (staff_personnel_id) REFERENCES "Restaurant".staff(personnel_id) NOT VALID;
 M   ALTER TABLE ONLY "Restaurant".dishes DROP CONSTRAINT stuff_personal_id_fkey;
    
   Restaurant          postgres    false    215    3218    216            �           2606    16613 "   skills stuff_personnel_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".skills
    ADD CONSTRAINT stuff_personnel_number_fkey FOREIGN KEY (stuff_key) REFERENCES "Restaurant".staff(personnel_id);
 R   ALTER TABLE ONLY "Restaurant".skills DROP CONSTRAINT stuff_personnel_number_fkey;
    
   Restaurant          postgres    false    219    215    3218            �           2606    16646    orders table_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".orders
    ADD CONSTRAINT table_id_fkey FOREIGN KEY (table_id) REFERENCES "Restaurant".tables(id);
 D   ALTER TABLE ONLY "Restaurant".orders DROP CONSTRAINT table_id_fkey;
    
   Restaurant          postgres    false    3226    220    222            �           2606    16631    work_schedule table_number_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Restaurant".work_schedule
    ADD CONSTRAINT table_number_fkey FOREIGN KEY (table_id) REFERENCES "Restaurant".tables(id) NOT VALID;
 O   ALTER TABLE ONLY "Restaurant".work_schedule DROP CONSTRAINT table_number_fkey;
    
   Restaurant          postgres    false    220    3226    221            9   �   x�]�A
�@C����(ة'q��ѕ� �J���v(k�9Cr#�� nI�G��b5�L
ڃg��bb�a�����M5�h�cǻ�6�7쇄x��:���N�Q5x��j�¦(��[��3��\��S��jlfo�a      :   �   x�5�A
�@�ur�^`df��x��A좸��]��S����~nd&P�d���@���,�7VdVy`������Fg!������Yy6���kg!�Z��t�䎄������6��r[1�	��D�      ?   [   x�%�1�  ��}�@�������j,���{#&��r��1U����s���5��&VN���`.°�ܳ\�,jj|n��	_C�      @      x������ � �      7   3   x�3�460�4�O�,I-�2�4r9�3RӸ�9�r��y��@�=... �
�      ;   S   x�3�4200�#N#N�Ԝ�|�?���4�#N�|TNbvfLH�	P�1H��.q��U��'gd���q��qqq n�[      <      x������ � �      8   b   x��LIM�Q���e�f`���Y��i�i��Y�����X��K�442615�NM��K�4�4�r�H-�N-Vp,*�(-) "N�̢�NNC�=... �2�      =   6   x�3�t+JM���4�2��/JI-JM�4200�#N#.cN���J�S�=... D�e      >      x������ � �     