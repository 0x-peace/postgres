--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO note_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO note_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO note_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO note_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO note_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO note_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO note_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO note_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO note_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO note_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO note_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO note_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO note_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO note_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO note_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO note_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO note_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO note_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO note_user;

--
-- Name: notes_category; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE notes_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE notes_category OWNER TO note_user;

--
-- Name: notes_category_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE notes_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_category_id_seq OWNER TO note_user;

--
-- Name: notes_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE notes_category_id_seq OWNED BY notes_category.id;


--
-- Name: notes_post; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE notes_post (
    id integer NOT NULL,
    author_id integer NOT NULL,
    text text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    slug character varying(30) NOT NULL,
    published boolean NOT NULL,
    category_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE notes_post OWNER TO note_user;

--
-- Name: notes_post_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE notes_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_post_id_seq OWNER TO note_user;

--
-- Name: notes_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE notes_post_id_seq OWNED BY notes_post.id;


--
-- Name: notes_post_tags; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE notes_post_tags (
    id integer NOT NULL,
    post_id integer NOT NULL,
    tags_id integer NOT NULL
);


ALTER TABLE notes_post_tags OWNER TO note_user;

--
-- Name: notes_post_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE notes_post_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_post_tags_id_seq OWNER TO note_user;

--
-- Name: notes_post_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE notes_post_tags_id_seq OWNED BY notes_post_tags.id;


--
-- Name: notes_tags; Type: TABLE; Schema: public; Owner: note_user
--

CREATE TABLE notes_tags (
    id integer NOT NULL,
    name character varying(10) NOT NULL
);


ALTER TABLE notes_tags OWNER TO note_user;

--
-- Name: notes_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: note_user
--

CREATE SEQUENCE notes_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_tags_id_seq OWNER TO note_user;

--
-- Name: notes_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: note_user
--

ALTER SEQUENCE notes_tags_id_seq OWNED BY notes_tags.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: notes_category id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_category ALTER COLUMN id SET DEFAULT nextval('notes_category_id_seq'::regclass);


--
-- Name: notes_post id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post ALTER COLUMN id SET DEFAULT nextval('notes_post_id_seq'::regclass);


--
-- Name: notes_post_tags id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post_tags ALTER COLUMN id SET DEFAULT nextval('notes_post_tags_id_seq'::regclass);


--
-- Name: notes_tags id; Type: DEFAULT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_tags ALTER COLUMN id SET DEFAULT nextval('notes_tags_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add Категория	7	add_category
20	Can change Категория	7	change_category
21	Can delete Категория	7	delete_category
22	Can add Пост	8	add_post
23	Can change Пост	8	change_post
24	Can delete Пост	8	delete_post
25	Can add tags	9	add_tags
26	Can change tags	9	change_tags
27	Can delete tags	9	delete_tags
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$nvXCN6Xv2CvE$Tq3FmDZzTKD/UKgPHjoBKVz5f2EA7lMAfsPQ0xvpT6Q=	2018-03-22 13:57:51.016435+00	t	peace			peacetoall123@gmail.com	t	t	2018-03-22 13:57:43.593323+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-03-22 13:58:34.512523+00	1	network	1	[{"added": {}}]	7	1
2	2018-03-22 13:58:48.02939+00	1	bond	1	[{"added": {}}]	9	1
3	2018-03-22 13:58:53.884642+00	2	route	1	[{"added": {}}]	9	1
4	2018-03-22 13:59:46.323567+00	1	Link aggregation	1	[{"added": {}}]	8	1
5	2018-03-22 14:00:41.397362+00	2	storage	1	[{"added": {}}]	7	1
6	2018-03-22 14:00:51.915054+00	3	cache	1	[{"added": {}}]	9	1
7	2018-03-22 14:00:57.525027+00	4	linux	1	[{"added": {}}]	9	1
8	2018-03-22 14:01:12.336891+00	2	bcache	1	[{"added": {}}]	8	1
9	2018-03-22 14:01:23.574292+00	2	bcache	2	[{"changed": {"fields": ["published"]}}]	8	1
10	2018-03-22 14:01:44.643742+00	5	openvz	1	[{"added": {}}]	9	1
11	2018-03-22 14:01:57.23864+00	3	Ploop	1	[{"added": {}}]	8	1
12	2018-03-22 14:02:30.489077+00	4	Проблемы с Iptables	1	[{"added": {}}]	8	1
13	2018-03-22 14:05:01.672413+00	3	Ploop	2	[{"changed": {"fields": ["text"]}}]	8	1
14	2018-03-22 14:05:16.0612+00	3	Ploop	2	[{"changed": {"fields": ["text"]}}]	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 14, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	notes	category
8	notes	post
9	notes	tags
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-03-22 06:52:14.305223+00
2	auth	0001_initial	2018-03-22 06:52:15.395398+00
3	admin	0001_initial	2018-03-22 06:52:15.708202+00
4	admin	0002_logentry_remove_auto_add	2018-03-22 06:52:15.745363+00
5	contenttypes	0002_remove_content_type_name	2018-03-22 06:52:15.850622+00
6	auth	0002_alter_permission_name_max_length	2018-03-22 06:52:15.896892+00
7	auth	0003_alter_user_email_max_length	2018-03-22 06:52:16.11231+00
8	auth	0004_alter_user_username_opts	2018-03-22 06:52:16.211938+00
9	auth	0005_alter_user_last_login_null	2018-03-22 06:52:16.461818+00
10	auth	0006_require_contenttypes_0002	2018-03-22 06:52:16.477604+00
11	auth	0007_alter_validators_add_error_messages	2018-03-22 06:52:16.51517+00
12	auth	0008_alter_user_username_max_length	2018-03-22 06:52:16.672589+00
13	auth	0009_alter_user_last_name_max_length	2018-03-22 06:52:16.788729+00
14	notes	0001_initial	2018-03-22 06:52:17.07903+00
15	notes	0002_auto_20171103_0943	2018-03-22 06:52:17.217437+00
16	notes	0003_auto_20171103_0945	2018-03-22 06:52:17.629467+00
17	notes	0004_auto_20171103_0954	2018-03-22 06:52:18.198233+00
18	notes	0005_auto_20171106_1057	2018-03-22 06:52:18.270908+00
19	notes	0006_auto_20171127_1817	2018-03-22 06:52:18.305933+00
20	notes	0007_tags	2018-03-22 06:52:18.625703+00
21	notes	0008_auto_20171205_1844	2018-03-22 06:52:18.939284+00
22	notes	0009_auto_20171209_1143	2018-03-22 06:52:19.076976+00
23	sessions	0001_initial	2018-03-22 06:52:19.270446+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
m4tpiv5t69q1x4aqe59vos599my1yr9p	MWMxYWFmNzQwNGYyZWU1OWYwYWY1OTZhNTA3Mzg3NjQ2MWI0ZWQ3Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNWMwOGM2MjFiN2QzZTA0ZTg4Y2MyZDU3MjNiNTg2YWIyYTY5MTAzIn0=	2018-04-05 13:57:51.042854+00
\.


--
-- Data for Name: notes_category; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY notes_category (id, name, description) FROM stdin;
1	network	<p>network</p>
2	storage	<p>disk storage</p>
\.


--
-- Name: notes_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('notes_category_id_seq', 2, true);


--
-- Data for Name: notes_post; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY notes_post (id, author_id, text, created, updated, slug, published, category_id, name) FROM stdin;
1	1	<p>Агрегирование каналов (англ. link aggregation) &mdash; технологии объединения нескольких параллельных каналов передачи данных в сетях Ethernet в один логический, позволяющие увеличить пропускную способность и повысить надёжность.<br />\r\n<br />\r\nLACP (англ. link aggregation control protocol) &mdash; открытый стандартный протокол агрегирования каналов, описанный в документах IEEE 802.3ad и IEEE 802.1aq.<br />\r\n&nbsp;</p>\r\n\r\n<h3>Режим работы bond в Linux</h3>\r\n\r\n<ol>\r\n\t<li>\r\n\t<h5>Round-robin. Кадры будут раскидываться попеременно на каждый интерфейс. Повышает скорость обмена данными почти в 2 раза, при выходе из строя одного канала начинается потеря кадров со всеми вытекающими</h5>\r\n\t</li>\r\n\t<li>\r\n\t<h5>Active-backup.&nbsp;Один из интерфейсов активен. Если активный интерфейс выходит из строя (link down и т.д.), другой интерфейс заменяет активный. Не требует дополнительной настройки коммутатора</h5>\r\n\t</li>\r\n\t<li>\r\n\t<h5>Balance-xor.&nbsp;Распределение нагрузки исходя из&nbsp;MAC адресов получателя и отправителя. Алгоритм отправки пакетов может быть разный. Применяется для балансировки нагрузки и повышения отказоустойчивости</h5>\r\n\t</li>\r\n\t<li>\r\n\t<h5>Broadcast.&nbsp;Все пакеты на все интерфейсы,&nbsp;но нужно правильно подключить и настроить коммутаторы</h5>\r\n\t</li>\r\n\t<li>\r\n\t<h5>802.3ad. Реализует стандарт объединения сетевых интерфейсов IEEE 802.3ad. Имеет множество особенностей, требует настройки коммутаторов</h5>\r\n\t</li>\r\n\t<li>\r\n\t<h5>Balance-rtb.&nbsp;Режим адаптивной балансировки передачи данных. Система распределяет отправку пакетов исходя из нагрузки на интерфейсы. Если один сетевой интерфейс выходит из строя, его MAC адрес берет второй канал и начинает работать за двоих. Требует настройки коммутатора.</h5>\r\n\t</li>\r\n\t<li>\r\n\t<h5>Balance-alb.&nbsp;Тоже самое что 6, только входящий трафик тоже распределяется между интерфейсами. Не требует настройки коммутатора, но интерфейсы должны уметь изменять MAC<br />\r\n\t&nbsp;</h5>\r\n\t</li>\r\n</ol>\r\n\r\n<h3>CentOS-7 настройка bond&nbsp;802.3ad l3_l4 + vmbr0</h3>\r\n\r\n<p>#/etc/modprobe.d/bond.conf</p>\r\n\r\n<pre>\r\n<code class="language-bash">alias bond0 bonding\r\noptions bond0 miimon=100 mode=4 lacp_rate=1</code></pre>\r\n\r\n<p>#&nbsp;/etc/sysconfig/network-scripts/ifcfg-eth0</p>\r\n\r\n<pre>\r\n<code class="language-bash">DEVICE=eth0\r\nNM_CONTROLLED=no\r\nBOOTPROTO=none\r\nNAME=eth0\r\nHWADDR="00:25:90:2e:08:a4"\r\nONBOOT=yes\r\nSLAVE=yes\r\nMASTER=bond0</code></pre>\r\n\r\n<p>#&nbsp;/etc/sysconfig/network-scripts/ifcfg-eth2</p>\r\n\r\n<pre>\r\n<code class="language-bash">DEVICE=eth2\r\nNM_CONTROLLED=no\r\nBOOTPROTO=none\r\nNAME=eth2\r\nHWADDR="00:25:90:2e:08:a6"\r\nONBOOT=yes\r\nSLAVE=yes\r\nMASTER=bond0</code></pre>\r\n\r\n<p>#/etc/sysconfig/network-scripts/ifcfg-bond0</p>\r\n\r\n<pre>\r\n<code class="language-bash">DEVICE=bond0\r\nNAME=bond0\r\nBRIDGE="vmbr0"\r\nONBOOT=yes\r\nUSERCTL=no\r\nBONDING_OPTS="mode=802.3ad xmit_has_policy=layers3+4 lacp_rate=1 miimon=100"</code></pre>\r\n\r\n<p>#/etc/sysconfig/network-scripts/ifcfg-vmbr0</p>\r\n\r\n<pre>\r\n<code class="language-bash">BOOTPROTO=static\r\nDEVICE=vmbr0\r\nIPADDR=185.22.65.15\r\nPREFIX=25\r\nGATEWAY=185.22.65.1\r\nDNS1=195.210.46.132\r\nDNS2=195.210.46.195\r\nONBOOT=yes\r\nSTP=no\r\nTYPE=Bridge\r\nDEFROUTE=yes\r\nIPV4_FAILURE_FATAL=no\r\nIPV6INIT=no</code></pre>	2018-03-22 13:59:43+00	2018-03-22 13:59:44+00	link-aggregation	t	1	Link aggregation
2	1	<p>BCache &mdash; это продвинутая система кэширования доступа к SATA/SAS дискам на дисках SSD на блочном уровне. Технология позволяет объеденить блок SAS-диска и блок SSD-диска. Cуществуют два режима кэширования.&nbsp;</p>\r\n\r\n<ul>\r\n\t<li>Writethrough - данные пишутся на основной диск и кэшируются на SSD только для последующего чтения</li>\r\n\t<li>Writeback - данные пишутся сначала на SSD, а далее синхронизируются с основным носителем</li>\r\n</ul>\r\n\r\n<p>Второй режим немного опаснее в плане потери данных и видимо предназначен для использования совместно с отказоустойчивой системой из SSD носителей.</p>\r\n\r\n<hr />\r\n<h3>Установка bcache:</h3>\r\n\r\n<p>Устанавливаем необходимые пакеты:</p>\r\n\r\n<pre>\r\n<code class="language-bash">yum install git dkms gcc make yum-utils lshw libblkid-devel -y\r\n</code></pre>\r\n\r\n<p>Клонируем репозиторий:</p>\r\n\r\n<pre>\r\n<code class="language-bash">cd /root/\r\ngit clone https://github.com/g2p/bcache-tools</code></pre>\r\n\r\n<p>Собираем из исходников</p>\r\n\r\n<pre>\r\n<code class="language-bash">make\r\nmake install</code></pre>\r\n\r\n<hr />\r\n<h3>Настройка:</h3>\r\n\r\n<p>Форматируем HDD (/dev/sda2) и SSD (/dev/sdb1):</p>\r\n\r\n<pre>\r\n<code class="language-bash">wipefs -a /dev/sda2\r\nwipefs -a /dev/sdb1</code></pre>\r\n\r\n<p>Параметры который должны быть одинаковы на обоих дисках - bucket и block size.<br />\r\nНапример, используя жесткий диск с 4k секторами и SSD с размером блока стирания 2 МБ команда создания будет выглядеть так:</p>\r\n\r\n<pre>\r\n<code class="language-bash">make-bcache --discard --wipe-bcache --block 4k --bucket 2M -B /dev/sda2 -C /dev/sdb1</code></pre>\r\n\r\n<p>После выполнения предыдущей команды в системе появится новое блочное устройство - /dev/bcache0, которое можно отформатировать в любвую файловую систему:</p>\r\n\r\n<pre>\r\n<code class="language-bash">mkfs.ext4 /dev/bcahe0 &amp;&amp; mount /dev/bcahe0 /vm/</code></pre>\r\n\r\n<p>Просмотр информации:</p>\r\n\r\n<pre>\r\n<code class="language-bash">bcache-super-show /dev/sda2 &amp;&amp; bcache-super-show /dev/sdb1</code></pre>\r\n\r\n<p>Включение режима writeback:</p>\r\n\r\n<pre>\r\n<code class="language-bash">echo writeback &gt; /sys/block/bcache0/cache_mode</code></pre>\r\n\r\n<hr />\r\n<h3>Операции с bcache:</h3>\r\n\r\n<p>Выключение bcache:</p>\r\n\r\n<pre>\r\n<code class="language-bash">echo $cset.uuid &gt; /sys/block/bcache0/bcache/detach\r\necho 1 &gt; /sys/fs/bcache/$cset_uuid/stop</code></pre>\r\n\r\n<p>Включение bcache:</p>\r\n\r\n<pre>\r\n<code class="language-bash">echo "backing device" &gt; /sys/fs/bcache/register\r\necho "cashing device" &gt; /sys/fs/bcache/register</code></pre>\r\n\r\n<p>Запуск bcache без SSD диска:</p>\r\n\r\n<pre>\r\n<code class="language-bash">losetup -o 8192 /dev/loop0 /dev/your_bcache_backing_dev</code></pre>\r\n\r\n<p>Замена SSD /dev/sda1</p>\r\n\r\n<pre>\r\n<code class="language-bash">make-bcache -C /dev/sda1 --wipe-bcache --block $block --bucket $bucket --cset-uuid $cset_uuid</code></pre>	2018-03-22 14:01:09+00	2018-03-22 14:01:11+00	bcache	t	2	bcache
4	1	<p>Обычно эта проблема возникает из-за того, что на физическом сервере PVC по умолчанию отключен модуль &ldquo;conntracks&rdquo;, в результате чего в стандартной установке iptables имеет незавершенное состояние.</p>\r\n\r\n<h3>Проблема выглят примерно так:</h3>\r\n\r\n<pre>\r\n<code class="language-bash">root@server/#iptables -t nat -L\r\n\r\nWARNING: Deprecated config file /etc/modprobe.conf, all config files belong into /etc/modprobe.d/.\r\nFATAL: Module ip_tables not found.\r\niptables v1.4.8: can't initialize iptables table `nat': Table does not exist (do you need to insmod?)\r\nPerhaps iptables or your kernel needs to be upgraded.</code></pre>\r\n\r\n<h3>Решение.</h3>\r\n\r\n<p>Вы можете выяснить это, проверив, совпадает ли получаемый вами вывод с приведенным ниже:</p>\r\n\r\n<pre>\r\n<code class="language-bash">grep conntrack /etc/modprobe.d/openvz.conf\r\noptions ip_conntrack ip_conntrack_disable_ve0=0</code></pre>\r\n\r\n<p>Приведите&nbsp;кофиг к виду:</p>\r\n\r\n<pre>\r\n<code class="language-bash">egrep '^IPTABLES_MODULES=' /etc/sysconfig/iptables-config\r\nIPTABLES_MODULES="iptable_filter iptable_mangle ipt_limit ipt_multiport ipt_tos ipt_TOS ipt_REJECT ipt_TCPMSS ipt_tcpmss ipt_ttl ipt_LOG ipt_length ip_conntrack ip_conntrack_ftp ip_conntrack_irc ipt_conntrack ipt_helper iptable_nat ip_nat_ftp ip_nat_irc ipt_REDIRECT ipt_state ip_conntrack_netbios_ns"</code></pre>\r\n\r\n<p>Перезапуск:</p>\r\n\r\n<pre>\r\n<code class="language-bash">/etc/init.d/iptables restart</code></pre>\r\n\r\n<p>Проверка:</p>\r\n\r\n<pre>\r\n<code class="language-bash">iptables -t nat -L</code></pre>\r\n\r\n<p>Добавить параметр к контейнеру:</p>\r\n\r\n<pre>\r\n<code class="language-bash">vzctl set $CTID --netfilter on --save</code></pre>	2018-03-22 14:02:28+00	2018-03-22 14:02:29+00	iptables-problems	t	1	Проблемы с Iptables
3	1	<p>ploop copy&nbsp;-- это механизм эффективного копирования образа ploop с использованием встроенного в ploop механизма слежения за записью (write tracker). Один процесс ploop copy вычитывает с диска блоки данных образа и пишет их в stdout (предваряя каждый блок маленьким заголовочком из метки, позиции блока на диске и его размером), то есть в &quot;трубу&quot;, а второй процесс читает их из stdin и скидывает на диск. Добавляем между ними ssh $DEST, и вуаля.</p>\r\n\r\n<p><br />\r\nploop check -dfc<br />\r\nploop check -dfcS -&nbsp;Image is clean but unable to fix the header on ro image<br />\r\n<br />\r\n~~~~&nbsp; 1. Развернуть бэкап и восстановить любую часть данных ~~~<br />\r\n<br />\r\n#монтируем образ ploop(image), в нашем случае это root.hdd</p>\r\n\r\n<pre>\r\n<code class="language-bash">ploop mount &lt;пусть до образа&gt; (/vz/private/101/root.hdd/root.hdd)</code></pre>\r\n\r\n<p><br />\r\n#Проверяем, если смотировалось, появиться 2 новых блочных устройств, первое устройство ввида - /dev/ploopX, где X это порядковый номер, никак не относящийся к $CTID VPS. Второе это как бы размеченая партиция ввида /dev/ploopXp1</p>\r\n\r\n<pre>\r\n<code class="language-bash">ploop list</code></pre>\r\n\r\n<p><br />\r\n#Монтируем блочное устройство /dev/ploopXp1 в папку /mnt</p>\r\n\r\n<pre>\r\n<code class="language-bash">mount /dev/ploopXp1 /mnt</code></pre>\r\n\r\n<p><br />\r\n~~~~ 2. Запоковать в нормальном виде файлы VPS для клиента ~~~~~<br />\r\n&nbsp;</p>\r\n\r\n<pre>\r\n<code class="language-bash">ID=$(uuidgen)</code></pre>\r\n\r\n<p>#Создаем снимок</p>\r\n\r\n<pre>\r\n<code class="language-bash">vzctl snapshot $CTID --id $ID --skip-suspend --skip-config</code></pre>\r\n\r\n<p>#Монтируем cнимок в папку /tmp, создаем бэкап, удаляем лишнее</p>\r\n\r\n<pre>\r\n<code class="language-bash">vzctl snapshot-mount $CTID --id $ID --target /mnt\r\ntar cf backup.tar.xz /mnt                \r\nvzctl snapshot-umount $CTID --id $ID\r\nvzctl snapshot-delete $CTID --id $ID</code></pre>\r\n\r\n<p>#&nbsp;Offiine resize<br />\r\nthis shrank down the size from almost 40 gig down to 5.3 gig</p>\r\n\r\n<pre>\r\n<code class="language-bash">vzctl stop 505\r\nvzctl set 505 --diskspace 40G --offline-resize --save\r\nvzctl start 505</code></pre>	2018-03-22 14:01:55+00	2018-03-22 14:01:56+00	ploop	t	2	Ploop
\.


--
-- Name: notes_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('notes_post_id_seq', 4, true);


--
-- Data for Name: notes_post_tags; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY notes_post_tags (id, post_id, tags_id) FROM stdin;
1	1	1
2	1	2
3	2	3
4	2	4
5	3	5
6	4	5
\.


--
-- Name: notes_post_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('notes_post_tags_id_seq', 6, true);


--
-- Data for Name: notes_tags; Type: TABLE DATA; Schema: public; Owner: note_user
--

COPY notes_tags (id, name) FROM stdin;
1	bond
2	route
3	cache
4	linux
5	openvz
\.


--
-- Name: notes_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: note_user
--

SELECT pg_catalog.setval('notes_tags_id_seq', 5, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: notes_category notes_category_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_category
    ADD CONSTRAINT notes_category_pkey PRIMARY KEY (id);


--
-- Name: notes_post notes_post_name_key; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post
    ADD CONSTRAINT notes_post_name_key UNIQUE (name);


--
-- Name: notes_post notes_post_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post
    ADD CONSTRAINT notes_post_pkey PRIMARY KEY (id);


--
-- Name: notes_post notes_post_slug_d44961d5_uniq; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post
    ADD CONSTRAINT notes_post_slug_d44961d5_uniq UNIQUE (slug);


--
-- Name: notes_post_tags notes_post_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post_tags
    ADD CONSTRAINT notes_post_tags_pkey PRIMARY KEY (id);


--
-- Name: notes_post_tags notes_post_tags_post_id_tags_id_052a09dd_uniq; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post_tags
    ADD CONSTRAINT notes_post_tags_post_id_tags_id_052a09dd_uniq UNIQUE (post_id, tags_id);


--
-- Name: notes_tags notes_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_tags
    ADD CONSTRAINT notes_tags_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: notes_post_author_id_553efea6; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX notes_post_author_id_553efea6 ON notes_post USING btree (author_id);


--
-- Name: notes_post_category_id_0a4f2fed; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX notes_post_category_id_0a4f2fed ON notes_post USING btree (category_id);


--
-- Name: notes_post_name_b3e5e251_like; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX notes_post_name_b3e5e251_like ON notes_post USING btree (name varchar_pattern_ops);


--
-- Name: notes_post_slug_d44961d5_like; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX notes_post_slug_d44961d5_like ON notes_post USING btree (slug varchar_pattern_ops);


--
-- Name: notes_post_tags_post_id_5f5add91; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX notes_post_tags_post_id_5f5add91 ON notes_post_tags USING btree (post_id);


--
-- Name: notes_post_tags_tags_id_792e3143; Type: INDEX; Schema: public; Owner: note_user
--

CREATE INDEX notes_post_tags_tags_id_792e3143 ON notes_post_tags USING btree (tags_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notes_post notes_post_author_id_553efea6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post
    ADD CONSTRAINT notes_post_author_id_553efea6_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notes_post notes_post_category_id_0a4f2fed_fk_notes_category_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post
    ADD CONSTRAINT notes_post_category_id_0a4f2fed_fk_notes_category_id FOREIGN KEY (category_id) REFERENCES notes_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notes_post_tags notes_post_tags_post_id_5f5add91_fk_notes_post_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post_tags
    ADD CONSTRAINT notes_post_tags_post_id_5f5add91_fk_notes_post_id FOREIGN KEY (post_id) REFERENCES notes_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: notes_post_tags notes_post_tags_tags_id_792e3143_fk_notes_tags_id; Type: FK CONSTRAINT; Schema: public; Owner: note_user
--

ALTER TABLE ONLY notes_post_tags
    ADD CONSTRAINT notes_post_tags_tags_id_792e3143_fk_notes_tags_id FOREIGN KEY (tags_id) REFERENCES notes_tags(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

