PGDMP     7        
            {            db_bootcamp    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49435    db_bootcamp    DATABASE     ~   CREATE DATABASE db_bootcamp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE db_bootcamp;
                postgres    false            �            1259    51461 	   bootcamps    TABLE       CREATE TABLE public.bootcamps (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    cue integer NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.bootcamps;
       public         heap    postgres    false            �            1259    51460    bootcamps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bootcamps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bootcamps_id_seq;
       public          postgres    false    217                       0    0    bootcamps_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bootcamps_id_seq OWNED BY public.bootcamps.id;
          public          postgres    false    216            �            1259    51469    user_bootcamp    TABLE     �   CREATE TABLE public.user_bootcamp (
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    bootcamp_id integer NOT NULL
);
 !   DROP TABLE public.user_bootcamp;
       public         heap    postgres    false            �            1259    51452    users    TABLE     '  CREATE TABLE public.users (
    id integer NOT NULL,
    "firstName" character varying(50) NOT NULL,
    "lastName" character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    51451    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            o           2604    51464    bootcamps id    DEFAULT     l   ALTER TABLE ONLY public.bootcamps ALTER COLUMN id SET DEFAULT nextval('public.bootcamps_id_seq'::regclass);
 ;   ALTER TABLE public.bootcamps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            n           2604    51455    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    51461 	   bootcamps 
   TABLE DATA           Z   COPY public.bootcamps (id, title, cue, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �                 0    51469    user_bootcamp 
   TABLE DATA           W   COPY public.user_bootcamp ("createdAt", "updatedAt", user_id, bootcamp_id) FROM stdin;
    public          postgres    false    218   |                 0    51452    users 
   TABLE DATA           ]   COPY public.users (id, "firstName", "lastName", email, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   �                  0    0    bootcamps_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bootcamps_id_seq', 3, true);
          public          postgres    false    216                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    214            w           2606    51468    bootcamps bootcamps_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bootcamps
    ADD CONSTRAINT bootcamps_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bootcamps DROP CONSTRAINT bootcamps_pkey;
       public            postgres    false    217            y           2606    51473     user_bootcamp user_bootcamp_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT user_bootcamp_pkey PRIMARY KEY (user_id, bootcamp_id);
 J   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT user_bootcamp_pkey;
       public            postgres    false    218    218            q           2606    51490    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            s           2606    51488    users users_email_key1 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key1;
       public            postgres    false    215            u           2606    51457    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            z           2606    51479 ,   user_bootcamp user_bootcamp_bootcamp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT user_bootcamp_bootcamp_id_fkey FOREIGN KEY (bootcamp_id) REFERENCES public.bootcamps(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT user_bootcamp_bootcamp_id_fkey;
       public          postgres    false    3191    218    217            {           2606    51474 (   user_bootcamp user_bootcamp_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_bootcamp
    ADD CONSTRAINT user_bootcamp_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.user_bootcamp DROP CONSTRAINT user_bootcamp_user_id_fkey;
       public          postgres    false    215    3189    218               �  x�}��R�@�k�)T��ylpw\���&4���ka6�W��5�&e
��^-�p�����/i����p�K?K�8c؈D��=���Y]e/P F`{���F0����3�N&��ĺ!���,i�u��
e�T�rQ�,��U��m�*W�����?R�do�m�/�����E4�ӵ�<����[�Ɗ���o���#&T��#',��x &7��K{��Ȕ�I���kmd��kNz�u���p.n�����?���]���i��r������/�;�Vm-@#�9cN}�7V+�/p���:��J��u���:�ɈХ�)N��|�H�!҈)��ܒ�8jT#T{�>��/9��Y�F5 ��{�^>�۴�uY��&�We���9��V         `   x�u˹�  �O����̒��H���S�NH�RT��i�NUl�+Y���p�9z�tntN���܉����sM�a#���ّ���#}� � ��@v         �   x�}�;�@E�7�p���H���PI���dDf>{rn�!Jb"���ܛ�áн�p|=��Ա��x0�mC7�ABFG�v�2�fR�L"R�pѮ���Ca� ���غ�ݦA���E��0	�����!S�v��`A�(�O����\���r�:�J;����m^65������aWd����d�     