
SET LANGUAGE 'English'
SET DATEFORMAT ymd
SET ARITHABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET NUMERIC_ROUNDABORT, IMPLICIT_TRANSACTIONS, XACT_ABORT OFF
GO

--
-- Backing up database Tripbuddy
--
--
-- Create backup folder
--
-- IF OBJECT_ID('xp_create_subdir') IS NOT NULL
--  EXEC xp_create_subdir N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup'
--
-- Backup database to the file with the name: <database_name>_<yyyy>_<mm>_<dd>_<hh>_<mi>.bak
--
-- DECLARE @db_name SYSNAME
-- SET @db_name = N'Tripbuddy'

-- DECLARE @filepath NVARCHAR(4000)
-- SET @filepath =
-- /*
-- /*define base part*/ N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\' + @db_name + '_' +
-- /*append date*/ REPLACE(CONVERT(NVARCHAR(10), GETDATE(), 102), '.', '_') + '_' +
-- /*append time*/ REPLACE(CONVERT(NVARCHAR(5), GETDATE(), 108), ':', '_') + '.bak'

/*
DECLARE @SQL NVARCHAR(MAX)
SET @SQL = 
    N'BACKUP DATABASE ' + QUOTENAME(@db_name) + ' TO DISK = @filepath WITH INIT' + 
      CASE WHEN EXISTS(
                SELECT value
                FROM sys.configurations WITH (NOLOCK)
                WHERE name = 'backup compression default'
          )
        THEN ', COMPRESSION'
        ELSE ''
      END

EXEC sys.sp_executesql @SQL, N'@filepath NVARCHAR(4000)', @filepath = @filepath
GO
*/

USE Tripbuddy
GO

IF DB_NAME() <> N'Tripbuddy' SET NOEXEC ON
GO
--
-- Delete data from the table 'dbo.Solicitud_Destino'
--
TRUNCATE TABLE dbo.Solicitud_Destino
GO
--
-- Delete data from the table 'dbo.Solicitud_Categoria'
--
TRUNCATE TABLE dbo.Solicitud_Categoria
GO
--
-- Delete data from the table 'dbo.Solicitud_Actividad'
--
TRUNCATE TABLE dbo.Solicitud_Actividad
GO
--
-- Delete data from the table 'dbo.Mejor_Lugar'
--
TRUNCATE TABLE dbo.Mejor_Lugar
GO
--
-- Delete data from the table 'dbo.Comprado'
--
TRUNCATE TABLE dbo.Comprado
GO
--
-- Delete data from the table 'dbo.Detalle_Cotizacion'
--
DELETE dbo.Detalle_Cotizacion
GO
--
-- Delete data from the table 'dbo.Cotizacion'
--
DELETE dbo.Cotizacion
GO
--
-- Delete data from the table 'dbo.Solicitud'
--
DELETE dbo.Solicitud
GO
--
-- Delete data from the table 'dbo.Lugar'
--
DELETE dbo.Lugar
GO
--
-- Delete data from the table 'dbo.Usuario'
--
DELETE dbo.Usuario
GO
--
-- Delete data from the table 'dbo.sysdiagrams'
--
TRUNCATE TABLE dbo.sysdiagrams
GO
--
-- Delete data from the table 'dbo.Destino'
--
DELETE dbo.Destino
GO
--
-- Delete data from the table 'dbo.Categoria'
--
DELETE dbo.Categoria
GO
--
-- Delete data from the table 'dbo.Actividad'
--
DELETE dbo.Actividad
GO

--
-- Inserting data into table dbo.Actividad
--
SET IDENTITY_INSERT dbo.Actividad ON
GO
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (1, N'Hiking ', 432, N'EN PROGRESO', N'https://www.allereneme.mx/melean/ha/notion.htm#3')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (2, N'Participating in guided tours', 202, N'PENDIENTE', N'http://www.forines.au/to/inthe/artio/esbuterter.asp?id=779')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (3, N'Attending cultural events', 792, N'PENDIENTE', N'http://www.hiyou.biz/neonthe/tioedter/ion/hinentingare.php?t=41')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (4, N'Taking a cruise', 284, N'COMPLETADO', N'https://www.reteyoued.kr/tohatwa/reallwas/thiststhis.asp?id=84')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (5, N'Trying local cuisine', 390, N'PENDIENTE', N'http://hadtha.at/and/uldonare/enithera/thitheuldea.asp')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (6, N'Hiking ', 533, N'PENDIENTE', N'https://www.ndve.biz/hinhait/hatwitle/anhis.php')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (7, N'Taking a cruise', 678, N'COMPLETADO', N'https://www.erathethated.nz/had/nearan/toionhis/notwaletio.asp')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (8, N'Participating in guided tours', 464, N'PENDIENTE', N'https://www.tintouron.eg/veissho/hadhad.html#8775')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (9, N'Trying local cuisine', 63, N'PENDIENTE', N'https://www.tiwahathe.be/waorhin/tedre.asp')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (10, N'Participating in guided tours', 510, N'PENDIENTE', N'http://www.tionethiar.us/and/hiionan/seera/ionhisevetha.asp?id=289')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (11, N'Shopping for souvenirs', 259, N'EN PROGRESO', N'https://www.butan.br/wit/evehiand.asp')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (12, N'Exploring ', 4, N'PENDIENTE', N'https://teinbutve.es/tefor/ithisea/notomehe/withaomere.htm')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (13, N'Shopping for souvenirs', 298, N'PENDIENTE', N'http://eathbutnot.tr/andtioall/ea/at/entlearehe.htm#0036')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (14, N'Shopping for souvenirs', 0, N'EN PROGRESO', N'https://www.witeaarher.fr/tihis/le/eve/alltihisere.asp')
INSERT dbo.Actividad(id_actividad, nombre, orden, estado, imagenURL) VALUES (15, N'Taking photos', 943, N'PENDIENTE', N'https://teedthahat.at/omewitng/ithwastedoul.htm')
GO
SET IDENTITY_INSERT dbo.Actividad OFF
GO

--
-- Inserting data into table dbo.Categoria
--
SET IDENTITY_INSERT dbo.Categoria ON
GO
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (1, N'Business Travel', 477, N'COMPLETADO', N'http://www.witareinghin.kr/the/erher/tioisre/teereherher.htm#35')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (2, N'Heritage Tourism', 646, N'COMPLETADO', N'http://shoenthest.ua/omeitand/stngve/stith/tiheandeve.htm')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (3, N'Adventure Travel', 767, N'EN PROGRESO', N'https://letedthiwa.ge/atantio/ntshose/orthied.php?t=59&p=5039')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (4, N'Cultural Tourism', 37, N'PENDIENTE', N'https://hathioror.se/thehasho/omehatver/allineauld.htm')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (5, N'Cultural Tourism', 23, N'PENDIENTE', N'http://notbutteall.it/reisat/atal/onomeallted.asp')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (6, N'Pilgrimages', 835, N'PENDIENTE', N'https://www.arithissho.fi/enthiare/st/tioeaalleve.asp?id=122')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (7, N'Business Travel', 761, N'EN PROGRESO', N'https://waith.il/and/itenhad/enttio/aslealleve.htm')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (8, N'Business Travel', 261, N'PENDIENTE', N'http://www.anisesthe.ch/foritour/hiserehad/yououlnt/onbutnot.html#28997')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (9, N'Cruise Vacations', 916, N'PENDIENTE', N'http://wittetedted.org/nt/ere/isare/teortibut.php?t=52&p=78')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (10, N'Volunteer Travel', 938, N'EN PROGRESO', N'http://hatandisne.tr/anhen/uld/butareti/athisin.php')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (11, N'Ecotourism', 467, N'PENDIENTE', N'https://eraitheaare.at/edalto/tha/tedntea/witomeiteve.htm#54728')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (12, N'Family Vacations', 889, N'EN PROGRESO', N'http://www.tiarithfor.kr/enarhe/edngeveea.htm')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (13, N'Cultural Tourism', 567, N'PENDIENTE', N'http://www.andedat.es/hisou/anarnotnot.htm')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (14, N'Ecotourism', 623, N'EN PROGRESO', N'https://www.foronver.it/atouror/andwas.aspx?id=823')
INSERT dbo.Categoria(id_categoria, nombre, orden, estado, imagenURL) VALUES (15, N'Business Travel', 907, N'EN PROGRESO', N'http://teleeroul.dk/tiwitter/eraester/asening/rearitwit.htm')
GO
SET IDENTITY_INSERT dbo.Categoria OFF
GO

--
-- Inserting data into table dbo.Destino
--
SET IDENTITY_INSERT dbo.Destino ON
GO
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (1, N'Nepal', N'Delayed', 694.680986, -220.385678, N'https://orngthin.hu/te/oneaas/ingedted/toorasoul.htm')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (2, N'Kenya', N'In Progress', -31.76899, 481.674735, N'http://www.ereouleratha.za/tiedwa/thehis/thiwasith/enshoarnd.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (3, N'Kuwait', N'Scheduled', -605.52915, 899.734841, N'http://enndndit.fi/terereto/enforentan.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (4, N'Paraguay', N'Processing', 460.01302, -168.048973, N'http://www.eave.es/it/stithhat.asp')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (5, N'Sierra Leone', N'Under Review', -954.572638, -367.48759, N'https://www.ereasand.it/asnewa/ithherrete.htm#732')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (6, N'Iceland', N'Under Review', 622.880889, 358.249465, N'http://heerveand.org/hieve/arallnt/anerainan.php?t=25&p=8383')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (7, N'Guatemala', N'Completed', 7.664168, -67.318869, N'http://www.verare.es/eretheith/aryouve/hindng/iseaoment.php?t=56')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (8, N'Mauritius', N'Processing', -204.182187, 386.078225, N'http://iserateit.us/inhadar/erane.htm#4')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (9, N'Pakistan', N'Processing', -943.976535, -27.322472, N'http://www.eraherouwit.be/thetiohen/nderahenfor.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (10, N'Moldova', N'In Progress', -38.796993, -3.614815, N'https://www.vetithabut.it/wasou/heeveve/uldhi/histwasing.php?t=35&p=93')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (11, N'Sri Lanka', N'Cancelled', -898.843357, 629.114034, N'http://www.hadshomeand.se/iontheti/esedhenoul.htm')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (12, N'Panama', N'Upcoming', 839.677118, 20.220582, N'https://inin.eg/forverwit/nottome/his/hadouinte.asp')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (13, N'Romania', N'Cancelled', 398.941324, -166.672154, N'http://www.ngallaling.net/thaerme/oulent/hisrewa/youere.htm')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (14, N'Ghana', N'Completed', 710.106966, 30.378299, N'https://arearheneve.ca/hatted/nenot.html')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (15, N'Israel', N'On Hold', 694.363617, 86.312479, N'http://www.meyou.hu/tedtoith/eaeathe/ent/foriseve.html')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (16, N'Yemen', N'Partially Completed', -675.236767, -873.132091, N'http://esleme.mx/shohatse/henent/youareed/andng.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (17, N'Spain', N'Processing', -103.709188, -589.788465, N'https://www.arstted.uk/enerent/buttione/hi/tedth.aspx?id=84')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (18, N'Ghana', N'Confirmed', 316.712168, 0.855956, N'https://www.enthandion.cy/oulandas/le/eveall/lehenntyou.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (19, N'Mauritius', N'Upcoming', 9.118513, 51.408643, N'https://tedoulng.lv/asarehe/ereomeve/vereoual.php?t=20')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (20, N'Italy', N'Processing', 991.884891, -253.310798, N'http://eatheteres.lu/toeveeve/era/ngsetha/tothilehen.php?t=35&p=793')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (21, N'Ireland', N'Completed', 403.759639, 56.15895, N'http://tersterahis.us/areand/heres/an/seathis.php?t=33&p=6829')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (22, N'United Kingdom', N'In Progress', -36.127639, 0.583479, N'http://araserees.eg/wa/hat/areuldth.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (23, N'Mauritania', N'Expired', -557.450055, -340.568793, N'https://erehen.cn/forerebut/hehadbut/esbut/aryou.asp')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (24, N'Iraq', N'Confirmed', -178.714535, 8.621788, N'http://butstthier.dk/theuldas/itleit.asp?id=30')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (25, N'Turkey', N'Refunded', 489.896126, -590.602258, N'https://totewitbut.au/uldeaion/allas.asp')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (26, N'Georgia', N'In Progress', 274.633445, 593.538227, N'https://thhinareere.cz/on/hattient/oranouryou.htm#6835')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (27, N'Colombia', N'Delayed', 2.315638, -9.012287, N'https://www.orsttiofor.au/ha/ngmeted/erave/ithnttedthe.asp')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (28, N'South Africa', N'Confirmed', -3.895907, 137.853347, N'http://verveareou.nz/ouritng/ngngti/hadrehe/esas.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (29, N'Estonia', N'Completed', 8.48516, -142.164939, N'http://www.erethalenot.gr/ithhennot/for/alhere/outerorto.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (30, N'Mexico', N'Confirmed', 414.501654, -203.322932, N'http://www.ingthor.il/neingyou/ouerahat/enituld/metewasas.asp?id=959')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (31, N'India', N'Confirmed', 714.998918, -425.008396, N'https://henforoulera.au/edtedome/esatit/youted/theonit.asp')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (32, N'Pakistan', N'Delayed', -8.125225, -188.713224, N'http://tetiwahe.at/waentha/orarthed.html#54')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (33, N'Uganda', N'In Progress', -452.473372, -184.423964, N'https://thititiin.mx/ourtiter/aruld/eaallon/ioneveoulve.htm')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (34, N'Namibia', N'Refunded', -613.274965, 86.351487, N'https://www.toststted.at/not/tiis/ed/entourwasti.php?t=30')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (35, N'Austria', N'Delayed', 981.930521, 828.221822, N'http://tonduldas.us/sho/hinter/asteteuld.aspx?id=18')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (36, N'Peru', N'Confirmed', -331.551097, 307.815266, N'https://www.areen.lu/arto/hentoar.aspx')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (37, N'Ghana', N'Completed', -367.165961, 311.738023, N'https://www.eraneonand.de/tiedted/tianar/ionwa/eveityoune.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (38, N'Sweden', N'Refunded', 294.147968, 281.835439, N'https://inhaduldera.cz/hadve/ing/enttile/ndingngour.php?t=14&p=937')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (39, N'South Africa', N'In Progress', -13.511994, -552.551996, N'http://www.uldanne.cn/hatoed/anourhisre.asp?id=256')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (40, N'Austria', N'Upcoming', 35.138499, 730.554134, N'http://uldalented.nl/isithere/thenera/reston/ouryouuld.aspx')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (41, N'Chile', N'On Hold', 976.379987, -325.052186, N'http://veentevefor.lu/atingto/onhi/edhaed/uldteromeve.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (42, N'Philippines', N'Scheduled', -751.841996, -200.304969, N'http://streisith.it/enwasal/me/ntoufor/notmearenot.php?t=36&p=5244')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (43, N'Lithuania', N'Awaiting Confirmatio', -898.927546, -710.746365, N'https://inbuterar.hu/or/esng/arin/forall.asp')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (44, N'United Kingdom', N'In Progress', 69.446182, -296.892229, N'https://www.teinnot.za/was/or/oulatan/hisentithto.php?t=63&p=58')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (45, N'Nepal', N'Awaiting Confirmatio', -5.544837, 211.511381, N'https://erealthahi.il/entvehis/ne/arehian.html')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (46, N'Brazil', N'Expired', -749.678115, -136.965107, N'https://foroure.dk/eses/ted/inguldall/henand.php?t=13')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (47, N'Gambia', N'Refunded', 0.806038, -205.933739, N'http://www.ereforhin.be/wa/evendit/areallhi/nttedisen.php')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (48, N'Argentina', N'Awaiting Confirmatio', 306.992941, 964.571304, N'https://hathiha.uk/hadouryou/notwaswit/henisour/hisyoutersho.asp?id=490')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (49, N'Indonesia', N'In Progress', -213.547945, 6.464765, N'http://www.arngshoare.eg/theter/buter/hinentera/oueveasand.html')
INSERT dbo.Destino(id_destino, nombre, estado, latitud, longitud, imagenURL) VALUES (50, N'Ghana', N'Awaiting Confirmatio', -775.103344, -534.774377, N'http://www.ioneveit.lv/hi/heevetoour.php')
GO
SET IDENTITY_INSERT dbo.Destino OFF
GO

--
-- Inserting data into table dbo.sysdiagrams
--
SET IDENTITY_INSERT dbo.sysdiagrams ON
GO
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (1, N'Cedrick4', 47, -2, 0x9174C7ECE012E10390C8C6BA093A9F7EA35F0132AD523AEF2AAB2E79B4A9ECF1FD3E08AEA508DE399B3CE3548911A25647003D)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (2, N'Gene2017', 9, 11, 0xDC95EF097900ADDC8D046726600F083720354DF715BB0F2ECB1664F47E18D3F407E109BED9B2497538CA1E9E4D87E418057D85F5F8113000982BD5EC5C7BB33A9D2EC804E87F3C9ADE00037E5B3AF533BCC8792DED08024DDA507493653D6763CA70)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (3, N'Anette1999', 18, -1815528764, 0xD29B9803C7DB5E3E3A6BB8F3E57B4B133A85071B9D53A3539F100901C1AA6E3DD0F1286072890257AA0D704C91992962359D5C69CF2B6F2501410500CB79FDB129A33DEF06BC21735F025A06028CACC2DB2BFC11067E9BE456DCBC785A07BE008FCA5D1C493D7044BA78F53B7C510E453CFBA4BB57284D920207633DE41280070D3F5144595A77FE505C2B335A0A59680742CE087DD6B6B276B700B8F9AFA22503730530F578FFE7)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (4, N'Elvin1966', 4, -321, 0xA70CE11218B465410003CF061930F9219725F80A0204C71C8C3B2FB523DEEF495A3410650254ECA1F8211AFF0C07CA3A15B5391F48760590350807B0FAE77C5A072C30339F1F793E21FE0D316BB09A66D4D2041232614C9CF8067065010092161201A6D713BA0236D1F31DB1028A042A49B6BEDC42B6C2BA7F596E4A1FC0E3093536F7A1C94F2EC481C71974C875AE0DF7A311B5BA025D2366A9441D3553908379000397F249A95A)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (5, N'Ramiro665', 28, 7391, 0x86E7B46B1A4FEC2A1ABFA806C7A49A95865000C3321D490BD8550279EB2AC72A0DC04F8317E487A103163449EF67AEE65A8F57EB05E3E5065B57BA50042E8D53584085CDEEF6A290D45D16EA5D22D4430825D2649102B72616579B71DD911A070EB83A31407E9209D80FBC9F9751559F531ACC38CC3D090609D48CF285C51032FE964301906A86C0230552E526ED01A2BAF82C069AF9E9F4272806298D51460704FC92A3A562081B46515B7E78297005419643F021348576D9EF13F6)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (6, N'Stackhouse414', 50, -1639697925, 0x033301E34310C3B5CA90071F8E451D4BEA9DF91AF43302A1EE61EB33D88BF2D4B98D43C44F2893B8B9D77FFDFF26F7D1F7EAAB35A5A9E504376AAE02BF208B36CC512E39DFE1FE0293714D3BCD7D8ECA06FBA5A3BE881B8C7F70B8AB2A03ABD3D346A47A15FF569F2E404CB1599C4A58A215B06601F95FFDC25CC6ED7E)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (7, N'Karl576', 45, -919240077, 0xEA6D06DE41034303F5990A2FD04346DCCA11FE50D95D07150738A149C455)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (8, N'Abreu2005', 48, NULL, NULL)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (9, N'Adan824', 46, -611875310, 0xAECE03C80908EDF05BE8DFD1853FD1031A799A1CBA1159C8B75CCAE8C028140FBEDD6C89490866C70793642341074A5E1112861C2229978923D20760E20ECDAF52AE005833032A8BC4123B6C51C35FC672373D30C9B7FF9C0819004559B2836E87229F66BC234D01ED3F0538958589705929CA4CB948D637F64C111365FEFB342B097247D4906937666AB87F0F2CEC8F8157981F8016B580B283433D0000C39F02668AB833315EF93F33580302)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (10, N'Ninfa234', 23, -2028328735, 0x2AA3E4030954BB)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (11, N'Mitch5', 13, -600046589, 0xF4FAA7B86902202A16C9DCCE1C2AD00AC98EF651396487EE3DBAADB9E4D298FCAA5525A86FB532D70140DC21E0018214236DB7410363508F1682DC24E24942AFAA09DBD3029F9AE32D29DF758F06E9D40FB9AA5E8A55D9DC22BA0737E41AB31D7F483E45207784614F64BD09D0D18E5F7140C6EC69C95A496102D0843CBC4B28285CE7D32A8A)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (12, N'Morton271', 19, -1997574768, 0xEE323DF4)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (13, N'Javier2019', 42, -822389560, 0xEF2418AD77F45E7DCB1C5C02B6F510C17C6C9423526932C47C89076E0C48AE4005D4F05C7B852614EB28D136A6B1DC431506EFC80C480A01EC46129BBC9881521D2D9DDFE6049C36D19CE99C8756CF819B4F9606)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (14, N'Akers5', 14, -1925940026, 0x91)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (15, N'Kenyatta157', 20, -921181510, 0x4E0E423B5478B1F17A01FD4C034853A1936F)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (16, N'Kandace864', 49, NULL, NULL)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (17, N'Terry2017', 15, 9, 0x86AA28DD2B4456A325E1E48788E3C810F5B7800DBB18503534B5E4)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (18, N'Adan3', 37, -75, 0x233B3FE3FB414C503D83493BA23A0104C4B407073695CE2628C023E209B8404C01825E9593E9C52C304A0FF645C9465225BF99020D8EA778FBDB04561C40AEBC542E38DDD8D5B9E793360ADA29470155CA84FB4B1699AD97)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (19, N'Adelina557', 43, -43, 0x6D0FF9DA02097E57BFB86B3BD82BE2809C014058578EED0004AF447C963500006BD1310507541CEF04A10E8FCA7F6D4225047922C51C8C012C117295C36EA346010620E0CA8803D4B1F2247D849ABDABB89B31C0D9E12106631DE314E78A08A4C3CA3ECE4A54355D4611C13FB1368B55B6CE8AB47CEF011A01519BA402592F05B407392A83FC6EEF9F9B933B9D91010BD6BEF0E4E702E01AF15B203737FD0D44E21CB82D06693358FA408311579B47)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (20, N'Eleonora1954', 21, 3, 0x734C964C44DAE4B82339C83114298D7B5DD0808C5825)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (21, N'Gann1988', 29, -1445627802, 0xEBD8E20D09544CE10672C82D676868B4B3A1ECB5074713018803051957FC3DFB3854C3BE5CC3E9E6D1BF37D1B1325B05A417BC37B65953E2EB699B144B26EA47D62607810E623A05B8D4C7E31151F7ED0373EC0C41C5F0E35E38E6242572E8DCF182B13328CF82D90913C45FF9CC2B0C082FCCD4942F655AD6890331E35602803B819C7286C24FE1538FFF2A048B072A3E9B1B22DA42356E06B127228EA6D0AC01044A5CC249B95704D202E6E84CB2558E169D3E)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (22, N'Ahmed6', 38, -748099677, 0x9A97DD9DFE754F5347846A1699987DD989D1C434B600BD257051028E291C684B9EAC5B71FC080F39320FAFE0009433363EC1B3459CE54714772B4B444DAD02C832DEB65DEACBF5FAA0100B1DF84EF1CA8388B99C9FA8A661A7)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (23, N'Cyndy1971', 10, -362, 0xAFC766008050506AE20D351BC4B2C40DA77DFAA26B9CC85C7202)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (24, N'Lozano2009', 16, -2120023699, 0x2A2FD1EA004773D0)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (25, N'Markus455', 5, -1657487011, 0x754906A71E5027C7F944CD6E01EA6AFA8A5CCE08505F0E2B13A58B3F08F3927C34942E16912E9811)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (26, N'Ackerman154', 11, -1260984109, 0x084F8708E21AE3F2F762B51F8123300923E191EE770E06ABE9690E99B1218DF86A93046272F19C24FAEA11B74D034E322681B26E3A8E6930FF6C2D4283BA35001A2704DD5BC5558BE14A1513FD99A8CA51C83D51D44718001A348A09654AA5CD7667009A1A74C8CCDE22151842591CEC0C07FF)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (27, N'Abrams1981', 24, -2582, 0x99383D561E01C6B0F9565523237B56B4EA4D4436F7C64F76464AB0D2752906681703242ACE73B72EE3E507F240CD0105B5600954A1077485A80C2DEC1F79033A0687A92BB5B6E4FEE2DD40C70C82A68CEC02D0E214C93DFE1FE4E8E719AB086ECB50006490050E059755E45DCFBDCAE22C0026A781208C12BCF53E1AE5DC1B030419ECEC78B918E70B7D2C8EBBF6700592850318CCA25222E8FE20FA14A42D48B103A2C9236CEB0803)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (28, N'Ashley1', 30, -994, 0xAC50C1009B8620A2053F8614263AE105408F5389BA05550806BE99C0D36380EFF601867F1806EB0974AEBD9428B409611C6365088ADEFD73E15AFF9927FBA0E40DBECF9BA2BD6B799A0D4FA5767F57363F9C306CCA80)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (29, N'Amos1953', 25, -474, 0x18204FC55B03236275E88553FBA1656008C44F0A7AD1A7E9AA29BBA2421E9AFEF6080FF737453B3FFE276F0C04DA256AC7850F315013071DDF95ADA7A909EFC53EE1D481812297108C000432E8562F53DB84C11BD806AA91C04A)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (30, N'Shapiro1991', 22, -961371436, 0x20053EDED3A82104EB045F139427FC3F0E092C0132F8813507B04040A1065C66FAB205621D20644E84C330E3660A764C4BE2A64670E853AC832FBD072C902E0694AE58F11FA90774DB1F404DBC9684BE250533482A3F838C39F6D10367E168BBA460BC115D7F0504B1014BD08C38A46D3D74122C06D289FD10FA4C6E6CB3B6178CC78E1AD344620671F35BE30DA5F1E64E07A507367EE027F419)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (31, N'Newcomb2029', 44, 39, 0x8E0F035606042103)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (32, N'Fletcher1967', 6, -1241709978, 0xB96D0358FAF1023D0D88AB29AD1A8659310827DA40277EB351DB0890E8E58CCCB2B1FA0431255C21D57F7C3D012E040A52794F4FD050)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (33, N'Harry585', 31, -39, 0xBA7E7C6445E6026207D765638195C7FF1630AF24347177260CDE828BE69B1B6508B8B7F3640074090162D80C12ABDBA078AD41D6224E78F509425545085DBA93760E23B28D774A9C48E8865063CE1C6ED40108045C9F0644018BE7401391025CC0D200B46E680E92631131204B1105E2122955E08CECAA6AC447A2F60FA84F7804350407B97CBF6106369D175775E93B4880D905941C09C95206B25053540E5142AB8D8C40CCC843393CC69C40DF8801F39B1407519193F714D2E547)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (34, N'Antony2000', 39, -81311842, 0x8025)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (35, N'Eleni5', 26, -37, 0x18805006A9AEFB01775A0F0257F607753445B2304A81213AD8145E8F12199007ECB44B5F9DAE5919202F3F2B0728CDD572077154280DC93753A54795B917113B)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (36, N'Putnam5', 32, 9757, 0xC24D674BFED05B50BDF0D03A66117F85D33A22C7593D45630457B7302C1E7FED0C449308822AD8D39F5575CACABD809E2DCEEE69896CCA6904448101685E01C1F32E5B699CE7083B3DA3C914992771A84DF140FDCEBEC3C75869414A5C2E58219FC5FC2F47354B48B4F727483D82008661BA78DE81E1FD)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (37, N'Jonah1957', 17, -138997495, 0xB750138FF61847F205FE18E2BAEDAF00E03282005803FD006CE3667736E05D79EC2A051A17377F000538110CF20D0B94)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (38, N'Jamar86', 12, -1555888556, 0xE5788F65612A03352300714DEA37653DE13E533CFC60DA9279C3BAFB25541502C128B209D3A55B0328AE850F4DBE2D65CBB144C8A0B93324AC241D5C72C6A41122965CD6E1833540C701D937ACF85B956DBC0963BBA31601F121970CAB34BA5B22885071B4D6119500784CC206C642071159DF1D580C47DE502FD350829C208512E2D5CCA5445C8BDC77AD18D9B1D06DD07E08F9FE961376001E425B581D2A149E549F21451D98DEC878240315110D3D7BC2B22FBF3F443F78EEF25F172EF6212CC468B0440702D3)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (39, N'Wilhelm466', 1, NULL, NULL)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (40, N'Elna988', 34, -411787092, 0x54FE89811C4B913FC0D5016EDD77A69313056AFA823A5D211E05E39C610C5BEE7FD73C61294314A8B608067505E9ABC5A6115CCA4057E16C270502CF4706650A6E06B807919D0AFD2C73F6A3FD9AA1B009A72BB756904944B9041F9B62F8085E53FCC9496F93A3D3461415DA3C18FF425EB916468C41F305C8480ADDA2AC15AE7B0677754975F48F2D97146C046448C8C7785F2C7D070C3F7F1B1FC8D501008CBC)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (41, N'Benson1998', 40, -758, 0x0982F7314F85F14F005841D459A5C8092EA9390CD5C2EA1C0105A4CB3A6C775F2E15CCE44847030C0507C6198EBF53FC62EC3B5B9B745794F1801D9FACA894550137389FB142006F5B53E91BCF01E665FE460206756CD6B9C8AE6A7E3EFE5D29457C20F55B7BA4DCF6180FA444850E7ADD003EAFE1040256C152B1B474C23804FD4E783CBE1B5A065F17638BD896140CD894230C097A3EBC01C63BEBFA82E3269304A298)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (42, N'Rosy26', 27, -235, 0xEE7E04E090B329EFEC97E6006ABB3A09D006D7A8E0097C2E407DD42D9608444A2306E41C090206CD20251816094C524DEA836CEF7A675B8F0A455F04FC8F00090B2E61011884490382D82227561C8EFB706105985A8702F2D60A90395867EA14E213A5419A9E066FA0562402F5BC2A4363FD9AD80082E92CAFBE634F30CB3107035FB9A359818638FB04E74D218500126E836231709034D28F0954090213AF7E1D0A1D0635313BDC5CDE014F438D05F731D1473A264020AF316D08DDBE156FDB5F67F5D3C7)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (43, N'Robinette1977', 33, NULL, NULL)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (44, N'Benjamin2007', 7, -4484, 0x907B0C198108798EE1471BE76D8D0E551BD757B248A8CC3D3BCF5308BE89C963B4809DF520C04A064AA323CD0040DADD5655E10EFFCB4D2E5A508F38760D4E1239B5422BB6DC3F5E61E8B9105223CBCD1400FEB6FCDB089494449FE75C30449F92A9A203417322A1BDED39)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (45, N'Shane479', 35, 5249, 0x0F523C248FC635F2CA7019DB0B022304058D98E12150D946C7B839ED51E9E1F5327313F41BD1C292DB1039FD4930418B33A429281E1B78E704F953076F0837330090232E81314C1D592801C36DF1099468E4E70A493714513B6307146895500554832B092B7F201177640B7D1554394FF94E0E256C54DB28427C077F17D2563F3E23C4756C99E4007EE9DF663EAD086E0B240C6B1F73D59E)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (46, N'Tobias2011', 41, -1100879107, 0x2EC9ECDE0763D1BDFB11797001680638B0E1CF364009E56813ABBD1248C249A632253ADAA3F11B06578248BE5D38A123980B976AB83E0559E188A63703C9BF08258AC8D7623FD38478BE3B3F0181A57C2C2830CFD263078F27C7EFA7E75E3EC5AC3E720AE407ED74D457D078B6CE533E6D06023D09554814226097DEE2D704A44F3D)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (47, N'Hildred55', 36, -366823580, 0x587DF9B191E30A87AAB6F472EF00008D93BC609EA1CE6D49782FC8EE06D6F2BEE6B0A627CC168B4C049AE8C329EA872308A96A88C6F80A089A5EF365D0A1FD50031FCDCC071AB62D96EE8F68761303CE268109108FF46C6D8FE235EB8AA7E1047C19A09F81D8D500D0FB30B04161AD68040DFE94BE414AF73F1FB1C73EB1168B4B7504097F67525B3E52BEC76103090C)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (48, N'Manuel634', 2, NULL, NULL)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (49, N'Dugan1994', 8, 5, 0x62CCCD15B9F416FCE7438170A8DEC8D92D470454BDEE8D0D645C0806)
INSERT dbo.sysdiagrams(diagram_id, name, principal_id, version, definition) VALUES (50, N'Ridley1952', 3, -1603137736, 0x456863092DE3BE680414C695CC22027024DD08FE8E057C41C1D30F1F3702406906B748515B52DE92C152DB7022FE07C0A430D45E063CF76B02DD1F08)
GO
SET IDENTITY_INSERT dbo.sysdiagrams OFF
GO

--
-- Inserting data into table dbo.Usuario
--
SET IDENTITY_INSERT dbo.Usuario ON
GO
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (1, N'ModestoAlonso2@example.com', N'Modesto Alonso', N'Riggins', '2012-05-02', N'Male', N'South Africa', N'+971 0 062 9771', NULL, N'@Dunlap_Gisele', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (2, N'bsgo6470@example.com', N'Becky Boggs', N'Hutchins', '1971-01-16', NULL, N'Mexico', N'+33 3 24 48 82 38', NULL, N'@Pease_Brunilda', NULL, NULL)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (3, N'AdolfoJ.Farmer147@nowhere.com', N'Yolonda Antonio', N'Ziegler', '1970-03-07', N'Female', N'Thailand', N'+49 (8302) 760536', NULL, N'@HurtClaude', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (4, N'Abrams877@example.com', N'Ciara Cordell', N'Carlisle', '2011-12-10', N'Male', N'Chile', N'+49 (2710) 996451', N'+49 8829 764013', NULL, 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (5, N'Beverly122@example.com', N'Joni Dick', N'Dunaway', '1998-12-18', N'Male', N'Cuba', N'+55 91 4749-7484', NULL, N'@Andrade_Alica', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (6, N'wzceqgq9968@example.com', N'Leland Wyatt', N'Lozano', '1983-12-01', N'Male', N'Croatia', N'+44 164 644 1294', N'+55 98 2526-4971', NULL, 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (7, N'ManualNichols672@example.com', N'Irmgard Foster', N'Tatum', '1970-03-30', N'Female', N'Ghana', N'+420 721 038 997', N'+44 1655 05 7391', N'@AldridgeGrady', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (8, N'McafeeW456@nowhere.com', N'Adalberto Calkins', N'Granados', '2020-08-17', N'Female', N'Moldova', N'+49 8546 143792', N'+49 7995 143762', NULL, 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (9, N'chycpfxa678@nowhere.com', N'Adolph Baxter', N'Dunbar', '1970-02-02', N'Female', N'Singapore', N'+380 54 757-333-6', NULL, NULL, NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (10, N'Elli.Brothers8@example.com', N'Letisha Thomson', N'Nieto', '1976-07-29', N'Female', N'Cuba', N'+44 3526 45 3256', NULL, N'@Stpierre_Alden', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (11, N'ytdyzps5948@example.com', N'Andree Kramer', N'Barry', '1988-02-17', N'Male', N'Brazil', N'+49-9619-982594', N'+44 036 434 9747', N'@Burkholder_Kaye', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (12, N'Annamaria_Markham@example.com', N'Lizzie Bush', N'Carlos', '2017-10-03', N'Male', N'Australia', N'+44 9569 151288', N'+49 (6721) 911219', N'@Read_Neely', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (13, N'Cristy.Gandy@example.com', N'Mario Connelly', N'Hutchinson', '1970-02-21', N'Male', N'Korea', N'+49-9410-680198', N'+971 6 973 3115', N'@Laird_Melani', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (14, N'Satterfield@example.com', N'Ward Schwarz', N'Bartels', '1970-02-05', N'Female', N'Nicaragua', N'+44 656 697 2211', N'+52 79 7734 7102', NULL, 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (15, N'Norman_Myles87@nowhere.com', N'Sabina Abrams', N'Carlson', '1970-01-10', N'Female', N'Turkey', N'+44 7542 23 6247', N'+44 1033 39 7746', N'@HenkeCeline', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (16, N'ShavonneLanham5@example.com', N'Charmaine Allen', N'Granger', '2021-07-21', N'Female', N'Argentina', N'+420 699 319 281', NULL, N'@Salley_Adalberto', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (17, N'Locke@example.com', N'Bradford Pendleton', N'Lucas', '1976-07-08', N'Male', N'Tunisia', N'+44 7413 862818', N'+55 91 6828-1514', N'@Hoyle_Sunni', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (18, N'JeniferRedd@example.com', N'Clement Campos', N'Riggs', '2002-09-18', NULL, N'Belize', N'+380 18 522-847-1', N'+55 32 6010-9362', N'@Grace_Carlo', 0, NULL)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (19, N'Therese.ZRhodes@example.com', N'Bambi Cook', N'Hutchison', '1970-01-20', N'Female', N'Paraguay', N'+33 5 72 42 24 00', N'+49 (0070) 852904', N'@Wakefield_Adolfo', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (20, N'ParraB99@example.com', N'Adelaida Segura', N'Nieves', '2019-08-15', N'Male', N'South Africa', N'+420 677 867 429', N'+33 3 84 31 15 01', N'@CrouseSherell', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (21, N'Forbes266@nowhere.com', N'Jamey Mohr', N'Luce', '1970-01-01', N'Male', N'Bangladesh', N'+44 2770 647075', N'+49 (1283) 398645', N'@LeavittSamara', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (22, N'Baumann@example.com', N'Georgine Tatum', N'Hutson', '1970-03-04', N'Male', N'Namibia', N'+1 726-902-2993', N'+44 6472 428395', NULL, 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (23, N'CatherinaVazquez@example.com', N'Georgianna Abel', N'Rigsby', '2016-06-30', NULL, N'Philippines', N'+55 46 3455-1238', N'+380 71 299-205-1', N'@Winfield_Maryjane', 0, NULL)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (24, N'FlorencioAkers924@example.com', N'Abe Ledbetter', N'Barth', '2019-11-13', N'Male', N'Ghana', N'+971 4 026 2610', N'+44 850 005 6935', N'@WinslowAbe', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (25, N'Acker@example.com', N'Gracie Adkins', N'Niles', '2023-11-20', N'Female', N'Poland', N'+44 3632 988760', NULL, N'@Carlisle_Bertha', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (26, N'Spear@nowhere.com', N'Nick Aldridge', N'Duncan', '1981-09-02', N'Male', N'Zimbabwe', N'+380 43 547-240-9', N'+33 8 08 26 10 39', N'@GallegosNeville', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (27, N'MabelGibbs@example.com', N'Nan Robison', N'Zielinski', '1970-01-02', N'Female', N'Samoa', N'+49 (9337) 403869', N'+380 56 942-966-5', N'@Everhart_Randa', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (28, N'Branson@example.com', N'Brenna Stack', N'Riley', '1980-03-14', N'Male', N'Georgia', N'+420 776 526 508', N'+420 273 987 253', N'@Cecil_Carmelita', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (29, N'Peacock@example.com', N'Charlena Younger', N'Noble', '2003-11-06', N'Male', N'Australia', N'+49 (5501) 753584', N'+49-9590-673845', N'@BurneyMadonna', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (30, N'ciufy8@example.com', N'Abbie Giordano', N'Rinaldi', '1999-10-31', N'Male', N'Nigeria', N'+49 9656 417504', N'+44 2149 915375', N'@Sewell_Emory', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (31, N'zahpljsx_cyluinyb@example.com', N'Herbert Duke', N'Grant', '1994-07-31', NULL, N'Japan', N'+52 69 3463 6204', N'+32 9 225 85 39', N'@BurleyBrande', 1, NULL)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (32, N'Archibald@example.com', N'Chadwick Hawley', N'Carlton', '2010-03-10', N'Male', N'Pakistan', N'+55 52 8481-6195', N'+44 5323 46 2683', N'@BarbosaBobbi', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (33, N'uysdqpg563@example.com', N'Ada Hollingsworth', N'Dunham', '1970-10-11', N'Female', N'Iraq', N'+52 07 8190 2811', N'+380 81 456-864-7', N'@NormanEllis', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (34, N'Rowan29@nowhere.com', N'Thad Pickens', N'Bartholomew', '1977-06-04', N'Male', N'Switzerland', NULL, NULL, NULL, NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (35, N'ArturoFaber@nowhere.com', N'Xiao Harbin', N'Grantham', '2003-10-19', N'Male', N'Yemen', N'+52 63 5629 6413', N'+55 09 1186-7103', N'@Autry_Nicolas', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (36, N'Adena.Ackerman@example.com', N'Abbie Adams', N'Lucero', '1999-04-29', N'Male', N'Mongolia', N'+33 2 54 85 14 44', N'+971 7 684 7222', N'@Clevenger_Agnus', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (37, N'AidaMancini@example.com', N'Alec Christiansen', N'Carman', '2007-05-13', NULL, N'Lithuania', N'+52 29 9313 2411', N'+44 070 430 4131', N'@Hudgins_Sana', 0, NULL)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (38, N'qwsfky6@nowhere.com', N'Gussie Counts', N'Tavares', '2015-03-18', N'Female', N'Yemen', N'+33 0 77 85 89 16', NULL, N'@Mack_Chastity', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (39, N'HermanKnudson@nowhere.com', N'Octavio Hudson', N'Zimmer', '1970-10-23', NULL, N'South Africa', N'+971 0 466 2565', N'+55 54 2887-4681', N'@AdairPablo', 1, NULL)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (40, N'umvaxn9@nowhere.com', N'Jean Hogg', N'Dunlap', '2007-03-25', N'Male', N'Sierra Leone', N'+380 16 800-171-7', N'+55 70 9964-4929', N'@Larue_Abel', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (41, N'Priest@example.com', N'Marquis Comstock', N'Nobles', '1980-10-16', N'Male', N'Norway', N'+49-6269-204861', N'+32 3 320 34 07', NULL, 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (42, N'CandiceX.Dickens6@example.com', N'Temple Swan', N'Taylor', '1983-10-07', N'Male', N'Nicaragua', N'+49 3021 434382', NULL, N'@Cannon_Malcom', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (43, N'utzntvis7047@nowhere.com', N'Keturah Hatcher', N'Rinehart', '1984-01-19', NULL, N'India', N'+420 303 371 712', N'+49-6421-993638', N'@Kang_Adah', 0, NULL)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (44, N'IrwinSWright943@nowhere.com', N'Tricia Galvin', N'Noel', '2015-06-12', N'Male', N'Indonesia', N'+33 7 09 29 36 56', N'+52 24 8630 6904', N'@SorrellOda', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (45, N'Beckman@example.com', N'Martin Land', N'Rios', '1983-10-16', N'Female', N'Zimbabwe', N'+971 8 516 3170', N'+420 553 779 295', N'@Alderman_Natisha', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (46, N'LydaRoderick667@example.com', N'Nicolle Estes', N'Graves', '2012-03-22', N'Female', N'Jordan', NULL, N'+49-5381-262576', N'@AguileraJerry', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (47, N'Clayton.Brink346@example.com', N'Tommy Beaty', N'Dunn', '1996-06-27', N'Male', N'Afghanistan', N'+49 9119 790146', N'+49 (5425) 624656', N'@Mclaurin_Gwyn', 1, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (48, N'Palumbo@nowhere.com', N'Donny Aguiar', N'Nolan', '1970-03-09', N'Male', N'United States', N'+49-9626-237837', N'+32 5 948 05 49', N'@Springer_Isabel', 0, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (49, N'Melancon@example.com', N'Andrea Knight', N'Zimmerman', '2007-11-18', N'Male', N'Luxembourg', N'+1 600-904-6148', NULL, N'@HarperCatrina', NULL, 0)
INSERT dbo.Usuario(id_usuario, email, nombres, apellidos, fecha_nacimiento, genero, pais, telefono, contacto_emergencia, redsocial_usuario, usuario_activo, usuario_administrador) VALUES (50, N'Brad.UHarder416@example.com', N'Rolando Abraham', N'Hutto', '1995-06-09', N'Male', N'Bulgaria', N'+1 771-176-2924', N'+49-5849-581080', N'@Barba_Louetta', 0, 0)
GO
SET IDENTITY_INSERT dbo.Usuario OFF
GO

--
-- Inserting data into table dbo.Lugar
--
SET IDENTITY_INSERT dbo.Lugar ON
GO
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (1, N'Vasa Museum, Sweden', 'Ancient amphitheater, a marvel of historical significance', N'Burton92', -0.9999999999, -0.9999999999, 45, 2, 4)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (2, N'Suomenlinna, Finland', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Andrade718', -0.9999999999, -0.9999999999, 15, 14, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (3, N'Western Wall, Israel', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Stacy1964', -0.9999999999, -0.9999999999, 34, 5, 1)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (4, N'Brandenburg Gate, Germany', 'Ancient amphitheater, a marvel of historical significance', N'Amaya5', -0.9999999999, -0.9999999999, 1, 2, 2)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (5, N'Eiffel Tower, Paris', 'Ancient amphitheater, a marvel of historical significance', N'Ziegler1974', -0.9999999999, -0.9999999999, 28, 6, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (6, N'Old Port, Canada', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Abbie966', -0.9999999999, -0.9999999999, 25, 7, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (7, N'El Capitolio, Cuba', 'Iconic iron lattice structure offering panoramic views', N'Ardis759', -0.9999999999, -0.9999999999, 49, 14, 9)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (8, N'Colosseum, Italy', 'Symbol of freedom and democracy, situated in a harbor', N'Alita8', -0.9999999999, -0.9999999999, 32, 12, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (9, N'Machu Picchu, Peru', 'Ancient amphitheater, a marvel of historical significance', N'Dung261', -0.9999999999, -0.9999999999, 35, 8, 5)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (10, N'Lalbagh Botanical Garden, India', 'Architectural masterpiece, a hub for performing arts', N'Aleta1974', -0.9999999999, -0.9999999999, 23, 12, 7)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (11, N'Wawel Castle, Poland', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Adan1', -0.9999999999, -0.9999999999, 27, 15, 4)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (12, N'CN Tower, Canada', 'Iconic iron lattice structure offering panoramic views', N'Haggard354', -0.9999999999, -0.9999999999, 14, 2, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (13, N'Edinburgh Castle, Scotland', 'Symbol of freedom and democracy, situated in a harbor', N'Abby9', -0.9999999999, -0.9999999999, 31, 4, 9)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (14, N'Guinness Storehouse, Ireland', 'Architectural masterpiece, a hub for performing arts', N'Loper2', -0.9999999999, -0.9999999999, 48, 1, 13)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (15, N'Cerro San Cristóbal, Chile', 'Ancient amphitheater, a marvel of historical significance', N'Amos775', -0.9999999999, -0.9999999999, 10, 8, 4)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (16, N'Humayun''s Tomb, India', 'Iconic iron lattice structure offering panoramic views', N'Chism1993', -0.9999999999, -0.9999999999, 6, 5, 7)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (17, N'Gyeongbokgung Palace, South Korea', 'Ancient amphitheater, a marvel of historical significance', N'Mikki1989', -0.9999999999, -0.9999999999, 22, 6, 8)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (18, N'Old Quebec, Canada', 'Ancient amphitheater, a marvel of historical significance', N'Hollingsworth1960', -0.9999999999, -0.9999999999, 14, 7, 10)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (19, N'Humayun''s Tomb, India', 'Iconic iron lattice structure offering panoramic views', N'Lauryn1995', -0.9999999999, -0.9999999999, 26, 1, 14)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (20, N'Petronas Towers, Malaysia', 'Architectural masterpiece, a hub for performing arts', N'Heller96', -0.9999999999, -0.9999999999, 13, 1, 14)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (21, N'La Sagrada Familia, Spain', 'Architectural masterpiece, a hub for performing arts', N'Andre1968', -0.9999999999, -0.9999999999, 43, 3, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (22, N'Intramuros, Philippines', 'Ancient amphitheater, a marvel of historical significance', N'Alissa336', -0.9999999999, -0.9999999999, 16, 12, 9)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (23, N'Christ the Redeemer, Brazil', 'Ancient amphitheater, a marvel of historical significance', N'Tajuana4', -0.9999999999, -0.9999999999, 29, 7, 10)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (24, N'Vigeland Sculpture Park, Norway', 'Renowned clock tower, integral to a cultural landmark', N'Odessa2019', -0.9999999999, -0.9999999999, 26, 8, 11)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (25, N'Jardin Majorelle, Morocco', 'Renowned clock tower, integral to a cultural landmark', N'Elbert135', -0.9999999999, -0.9999999999, 32, 11, 8)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (26, N'Blue Lagoon, Iceland', 'Ancient amphitheater, a marvel of historical significance', N'Myrtis1999', -0.9999999999, -0.9999999999, 12, 15, 15)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (27, N'Petronas Towers, Malaysia', 'Symbol of freedom and democracy, situated in a harbor', N'Forest2020', -0.9999999999, -0.9999999999, 44, 4, 4)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (28, N'Colosseum, Italy', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Upshaw738', -0.9999999999, -0.9999999999, 7, 7, 10)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (29, N'Bock Casemates, Luxembourg', 'Architectural masterpiece, a hub for performing arts', N'Galen39', -0.9999999999, -0.9999999999, 46, 5, 1)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (30, N'Nyhavn, Denmark', 'Iconic iron lattice structure offering panoramic views', N'Adolph94', -0.9999999999, -0.9999999999, 16, 12, 11)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (31, N'Grand Palace, Thailand', 'Ancient amphitheater, a marvel of historical significance', N'Ramiro594', -0.9999999999, -0.9999999999, 17, 2, 10)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (32, N'La Sagrada Familia, Spain', 'Symbol of freedom and democracy, situated in a harbor', N'Jeanetta1992', -0.9999999999, -0.9999999999, 42, 7, 9)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (33, N'Buda Castle, Hungary', 'Iconic iron lattice structure offering panoramic views', N'Abel1975', -0.9999999999, -0.9999999999, 40, 9, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (34, N'La Sagrada Familia, Spain', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Sterling28', -0.9999999999, -0.9999999999, 37, 9, 15)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (35, N'Eiffel Tower, Paris', 'Iconic iron lattice structure offering panoramic views', N'Kylie2018', -0.9999999999, -0.9999999999, 27, 2, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (36, N'Sydney Opera House, Australia', 'Symbol of freedom and democracy, situated in a harbor', N'Matilda2028', -0.9999999999, -0.9999999999, 13, 8, 9)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (37, N'Old Quebec, Canada', 'Ancient amphitheater, a marvel of historical significance', N'Evers523', -0.9999999999, -0.9999999999, 45, 11, 2)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (38, N'Lake Zurich, Switzerland', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Jameson168', -0.9999999999, -0.9999999999, 45, 7, 15)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (39, N'La Boca Neighborhood, Argentina', 'Ancient amphitheater, a marvel of historical significance', N'Saylor813', -0.9999999999, -0.9999999999, 39, 12, 11)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (40, N'Promenade des Anglais, France', 'Ancient amphitheater, a marvel of historical significance', N'Marquis2014', -0.9999999999, -0.9999999999, 13, 9, 3)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (41, N'Nyhavn, Denmark', 'Japan''s tallest peak, a revered symbol and UNESCO site', N'Adan189', -0.9999999999, -0.9999999999, 50, 15, 11)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (42, N'Hoan Kiem Lake, Vietnam', 'Iconic iron lattice structure offering panoramic views', N'Stillwell825', -0.9999999999, -0.9999999999, 34, 15, 4)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (43, N'Bob Marley Museum, Jamaica', 'Iconic iron lattice structure offering panoramic views', N'Odette2005', -0.9999999999, -0.9999999999, 16, 1, 7)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (44, N'Vigeland Sculpture Park, Norway', 'Ancient amphitheater, a marvel of historical significance', N'Riggins2021', -0.9999999999, -0.9999999999, 22, 10, 13)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (45, N'Jeronimos Monastery, Portugal', 'Architectural masterpiece, a hub for performing arts', N'Tamatha139', -0.9999999999, -0.9999999999, 9, 8, 14)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (46, N'Bob Marley Museum, Jamaica', 'Iconic iron lattice structure offering panoramic views', N'Rena2018', -0.9999999999, -0.9999999999, 19, 2, 10)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (47, N'Waiheke Island, New Zealand', 'Iconic iron lattice structure offering panoramic views', N'Margarette849', -0.9999999999, -0.9999999999, 14, 14, 8)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (48, N'Narikala Fortress, Georgia', 'Ancient amphitheater, a marvel of historical significance', N'Adaline1972', -0.9999999999, -0.9999999999, 5, 15, 12)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (49, N'Mindil Beach, Australia', 'Symbol of freedom and democracy, situated in a harbor', N'Abraham5', -0.9999999999, -0.9999999999, 37, 3, 8)
INSERT dbo.Lugar(id_lugar, nombre, descripcion, field_name, latitud, logintud, destino, categoria, actividad) VALUES (50, N'Piazza San Marco, Italy', 'Iconic iron lattice structure offering panoramic views', N'Turpin89', -0.9999999999, -0.9999999999, 38, 10, 3)
GO
SET IDENTITY_INSERT dbo.Lugar OFF
GO

--
-- Inserting data into table dbo.Solicitud
--
SET IDENTITY_INSERT dbo.Solicitud ON
GO
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (1, 16, 40, 1, 1, '2017-03-15', '1970-02-10', 3, 9, 2, N'Ystrad Meurig', 17667.1768, 0, N'Upcoming', N'3ER74M1CAK768273359G56637HL3H8X')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (2, 21, 624, 2, 2, '1970-01-02', '1978-03-10', 1, 2, 6, N'Holmfirth', 1.655, 4, N'On Hold', N'WHMW61BO689633N6A7YSU09O')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (3, 20, 762, 3, 3, '1978-12-13', '1977-01-12', 3, 7, 2, N'Brough', 3268.9075, 5, N'Pending Approval', N'2N722G1IW4S31')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (4, 14, 6, 4, 4, '1979-03-25', '1970-01-07', 10, 7, 7, N'Stoke-sub-Hamdon', 27877.2927, 4, N'Completed', N'S')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (5, 2, 13, 5, 5, '2016-06-19', '1978-06-28', 7, 3, 2, N'Halesowen', 37908.731, 3, N'Expired', NULL)
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (6, 23, 62, 6, 6, '1971-03-30', '1970-03-04', 3, 3, 7, N'North Ferriby', 453.5287, 4, N'On Hold', N'I264V17NLLN510G2JN46GF')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (7, 6, 302, 7, 7, '1985-05-09', '1973-11-02', 4, 8, 10, N'Sale', 5607.1853, 5, N'Scheduled', NULL)
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (8, 38, 898, 8, 8, '1979-07-12', '2007-06-02', 6, 6, 10, N'Wednesbury', 1064.1423, 4, N'Partially Completed', N'2P2ED2143KZ950M')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (9, 7, 74, 9, 9, '2020-02-19', '1970-03-16', 1, 3, 9, N'Balfron', 23624.6772, 3, N'Scheduled', N'8N3VK44')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (10, 20, 695, 10, 10, '2022-07-28', '1982-09-25', 2, 10, 8, N'Broughton-in-Furness', 42084.6681, 2, N'Processing', N'WX2H8Q2J6')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (11, 1, 208, 11, 11, '1970-01-03', '2004-09-07', 7, 9, 3, N'Balham', 2.8418, 1, N'Upcoming', N'7MT5AJ8TFD41QA0DQ1197')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (12, 17, 230, 12, 12, '1980-03-04', '1986-02-05', 1, 8, 0, N'Dudley', 19962.9588, 0, N'Cancelled', N'38K56P3L4H5PZ3X1F92C6628W7FATQ2')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (13, 30, 118, 13, 13, '2018-07-29', '1981-10-13', 2, 7, 8, N'Halesworth', 7038.1817, 1, N'Pending Approval', N'3')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (14, 28, 858, 14, 14, '1985-10-14', '1980-09-07', 2, 1, 7, N'Broxbourne', 14298.7439, 0, N'Awaiting Confirmatio', N'78X08BX9Y568533')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (15, 15, 686, 15, 15, '1978-08-06', '1970-09-16', 9, 5, 8, N'Dukinfield', 10251.059, 5, N'Expired', N'LN855343WGAMW6')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (16, 40, 668, 1, 1, '1994-01-14', '1970-12-28', 6, 6, 4, N'Ballachulish', 11705.7517, 1, N'Completed', N'B3WF7BM1GMT01F2B400X02UOL38HWMW81UN3QWQ')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (17, 12, 722, 2, 2, '2011-02-09', '1970-01-09', 3, 4, 9, N'Halifax', 4290.8254, 4, N'Pending Approval', N'X2NR8O2T2D6374790FJBC8X3')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (18, 48, 544, 3, 3, '1982-01-23', '2022-09-08', 10, 6, 1, N'Leyburn', 44613.3837, 0, N'Upcoming', NULL)
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (19, 2, 748, 4, 4, '1970-01-11', '1971-12-26', 9, 6, 9, N'North Finchley', 10.079, 5, N'Awaiting Confirmatio', N'VM7YW60OZTG5EI7H2ID')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (20, 2, 436, 5, 5, '1990-02-28', '1971-09-08', 7, 5, 4, N'Dulas', 42055.1641, 5, N'Upcoming', N'2X03FDFLW250L74L8B47MP12G3DF5AHAA')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (21, 28, 592, 6, 6, '2013-02-13', '2003-11-27', 5, 0, 0, N'Salford', 27677.5375, 4, N'Pending Approval', N'I24UWW6DVK53D7LIU56S9255881ZX8BP9HZ44EI7L745G56UL6VG3G5TAU543DYH43K8466H6KTIIM924P20216XPAND6U07440M9X2F14L36A9SEQQWUJEPIMQHT6H20OP1911U601EGPR22L68940X')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (22, 8, 939, 7, 7, '1970-01-06', '1986-07-18', 4, 2, 8, N'North Kensington', 5.1333, 2, N'Completed', N'4N29RV6V5SGUB7D07')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (23, 6, 129, 8, 8, '1972-09-14', '1970-02-22', 3, 2, 0, N'Salisbury', 987.6279, 4, N'Confirmed', N'2CTEO0')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (24, 27, 953, 9, 9, '2007-05-16', '1985-08-25', 8, 10, 10, N'Stoke Newington', 45205.0868, 1, N'Confirmed', N'63')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (25, 41, 198, 10, 10, '1971-12-06', '1982-11-12', 3, 7, 1, N'North Shields', 704.7118, 5, N'Awaiting Confirmatio', N'WU2K193148228A80W33DTCS74ERTT8N02L3EQB5')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (26, 36, 382, 11, 11, '2013-09-01', '1988-06-11', 3, 3, 5, N'Broxburn', 38923.1826, 4, N'Scheduled', N'J8S32V8L02')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (27, 18, 524, 12, 12, '1971-08-09', '2000-12-04', 5, 8, 2, N'Halkirk', 585.4663, 3, N'In Progress', N'A0TX01K4F7I6C8B8V0CK62A38P0S49444T968RAI628UC65073V570')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (28, 7, 50, 13, 13, '1998-09-01', '2020-01-29', 10, 2, 1, N'Ballater', 37259.9566, 2, N'Awaiting Confirmatio', N'7SP80QOEA5X66OZ6N3060JQ78BY1R5O1VO5SBC4L0ORQ70X4J70BY9IF9H5OO57Z5C0I204KIWDJ9I10B5CWFO7967SCX1WVSE32CN56594QFY98230456G808')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (29, 28, 6, 14, 14, '2002-03-27', '2010-12-10', 8, 4, 9, N'Welling', 23414.1296, 0, N'Partially Completed', N'J')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (30, 41, 129, 15, 15, '1993-09-27', '1970-01-07', 10, 2, 10, N'Dulverton', 45105.6143, 1, N'Expired', N'M')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (31, 4, 730, 1, 1, '2009-04-14', '2000-08-27', 9, 4, 9, N'Bruton', 12955.1549, 5, N'Completed', N'23RS33O3')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (32, 21, 207, 2, 2, '1992-07-09', '1997-02-21', 4, 0, 4, N'Halstead', 37758.955, 0, N'Upcoming', N'V21V035594QMXG6QWO4AEI80M745E6231XL7WTMB65NSDD9G4Q965E01A1L3I1I1T8KDZ77LDSO30871PHM')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (33, 6, 642, 3, 3, '1997-06-10', '2005-03-19', 6, 5, 8, N'Stone', 9469.4265, 4, N'Refunded', N'4HU7697JBGRWRDD9WK364M17T2BJFILBL3I62RL868GZA0CBI22B6A')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (34, 31, 396, 4, 4, '1981-01-24', '2023-01-22', 8, 1, 8, N'Wellingborough', 37144.977, 0, N'Processing', N'9XEO0337756P02V865')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (35, 10, 984, 5, 5, '1970-03-22', '2009-06-13', 3, 1, 7, N'Stonehaven', 80.4605, 2, N'Processing', N'86WH4X5I9S8')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (36, 14, 381, 6, 6, '2013-09-03', '1970-01-04', 1, 8, 9, N'Wellington', 47346.067, 5, N'Scheduled', N'DE88TQ6')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (37, 16, 3, 7, 7, '1988-01-19', '1986-09-12', 8, 8, 8, N'Holmrook', 16945.1653, 0, N'Expired', N'86R0P1WOQ2OND8LZW9C858G5N6IGG13760Z210W41CEX5PL084HP7Z4WK1REL9K5QLP2A484TF3')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (38, 7, 531, 8, 8, '1970-01-06', '1972-02-21', 7, 8, 2, N'Stonehouse', 5.6589, 0, N'Cancelled', N'FA062O0O7QI6735I527XJ1J')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (39, 9, 449, 9, 9, '1970-01-10', '1988-03-16', 3, 0, 0, N'Wells', 9.9845, 4, N'Cancelled', N'6886ZEQICU5B55W9RXY0OL18N')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (40, 30, 645, 10, 10, '2008-01-10', '2008-03-17', 8, 7, 6, N'Saltash', 14364.5287, 5, N'On Hold', N'B86J0JD2OAZ3NA77277C414XWKSEJVTQG801N6GPBXG0B98')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (41, 49, 603, 11, 11, '2021-11-21', '2023-01-23', 10, 4, 3, N'North Tawton', 11469.0867, 0, N'Cancelled', N'259W332I1P8AQ4V1J')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (42, 27, 340, 12, 12, '1974-06-27', '2005-07-02', 5, 9, 1, N'Ballieston', 4739.4023, 5, N'Under Review', NULL)
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (43, 10, 442, 13, 13, '1984-11-23', '2013-07-17', 7, 8, 10, N'Dulwich', 31494.8567, 3, N'In Progress', N'0X109')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (44, 30, 878, 14, 14, '1973-01-24', '1989-12-01', 3, 3, 10, N'Saltburn', 21951.98, 4, N'Scheduled', N'X')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (45, 50, 800, 15, 15, '1978-07-12', '1972-08-20', 7, 1, 4, N'North Walsham', 3114.5162, 2, N'Pending Approval', N'9D237IG410FZT2H1GLQEZ96MH5G7F94P5RVNBZ63848CLM')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (46, 9, 928, 1, 1, '2008-02-15', '2021-01-28', 4, 9, 5, N'Bryher', 49148.7762, 2, N'Awaiting Confirmatio', N'766F5M33R6WFH8S46Q6H6ME3NHD53C1')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (47, 45, 96, 2, 2, '1995-11-25', '1979-03-17', 9, 6, 8, N'Stornoway', 14177.2462, 1, N'Awaiting Confirmatio', NULL)
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (48, 47, 463, 3, 3, '2011-09-18', '1972-08-08', 7, 9, 7, N'Leyland', 15214.1322, 4, N'Cancelled', N'2C419PFHNQBSR18UZ4H980668I')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (49, 45, 515, 4, 4, '2008-12-01', '1971-05-14', 8, 0, 10, N'Haltwhistle', 11505.0974, 5, N'Pending Approval', N'6BF55R2Z5384')
INSERT dbo.Solicitud(id_solicitud, usuario_id, destino_id, categoria_id, actividad_id, fecha_inicio, fecha_fin, numero_ninos, numero_adolescentes, numero_adultos, hospedaje, presupuesto, estrellas, estado, comentarios) VALUES (50, 9, 820, 5, 5, '2023-06-16', '1992-06-09', 1, 5, 7, N'Wells next the Sea', 13644.8877, 3, N'In Progress', NULL)
GO
SET IDENTITY_INSERT dbo.Solicitud OFF
GO

--
-- Inserting data into table dbo.Cotizacion
--
SET IDENTITY_INSERT dbo.Cotizacion ON
GO
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (1, 33, N'Additional Services', N'Kayak', 49535.1059, N'EUR', N'Refunded', N'Mauritania', '1973-10-26', '1996-05-12', '1970-01-02')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (2, 37, N'Payment Terms', N'Hopper', 16917.3404, N'SHP', N'Completed', N'Poland', '1970-03-23', '1970-08-25', '2015-02-04')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (3, 41, N'Insurance Options', N'Hotels.com', 17450.8884, N'KYD', N'Scheduled', N'Zambia', '1995-01-16', '1977-03-23', '1986-05-16')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (4, 39, N'Destination Options', N'Orbitz', 45000.1914, N'SDG', N'Upcoming', N'Albania', '1996-08-03', '1984-11-19', '1986-06-18')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (5, 38, N'Total Cost Estimate', N'Orbitz', 41216.4188, N'YER', N'Delayed', N'Kenya', '1975-10-30', '1986-07-03', '1970-01-04')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (6, 33, N'Total Cost Estimate', N'Skyscanner', 35099.2828, N'AZN', N'Refunded', N'Myanmar', '1974-03-14', '1980-10-03', '2008-04-20')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (7, 4, N'Accommodation Preferences', N'Orbitz', 20034.732, N'BRL', N'Expired', N'Sierra Leone', '1986-07-18', '2009-11-12', '1972-09-10')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (8, 15, N'Total Cost Estimate', N'Airbnb', 197.7658, N'UYU', N'Delayed', N'Kuwait', '1970-01-04', '1970-07-17', '1979-02-28')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (9, 42, N'Meal Plans', N'Kayak', 26522.0135, N'UYU', N'Expired', N'Slovakia', '1996-02-18', '1971-07-28', '1972-04-26')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (10, 41, N'Flight Class Options', N'Hostelworld', 16400.9225, N'DZD', N'Completed', N'Belgium', '1970-01-01', '1989-11-08', '1973-07-15')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (11, 31, N'Accommodation Preferences', N'Viator', 31297.0768, N'SZL', N'Scheduled', N'Samoa', '2022-02-04', '2010-03-04', '1971-08-12')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (12, 23, N'Destination Options', N'Expedia', 7309.1067, N'SBD', N'In Progress', N'Belgium', '1970-01-06', '2017-07-21', '1988-08-05')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (13, 6, N'Total Cost Estimate', N'HomeAway', 44546.6042, N'COP', N'Delayed', N'Lithuania', '2002-06-27', '1987-07-28', '1970-02-27')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (14, 29, N'Activities or Tours Included', N'CheapTickets', 2676.8669, N'SZL', N'Refunded', N'Uruguay', '2019-09-29', '1979-04-28', '1984-06-03')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (15, 22, N'Customization Options', N'TripAdvisor', 20051.7128, N'CRC', N'Completed', N'Argentina', '2023-04-19', '2005-07-17', '2008-12-23')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (16, 17, N'Accommodation Preferences', N'Priceline', 45382.018, N'CHF', N'Pending Approval', N'New Zealand', '1970-01-04', '2015-06-19', '1972-03-03')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (17, 49, N'Destination Options', N'TripAdvisor', 19308.4757, N'MKD', N'Delayed', N'Mexico', '2022-02-11', '1998-03-28', '1993-07-31')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (18, 16, N'Travel Dates', N'Hostelworld', 43302.8724, N'LKR', N'Partially Completed', N'Italy', '1970-02-02', '1999-01-14', '1990-05-27')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (19, 25, N'Total Cost Estimate', N'Priceline', 28557.3567, N'VND', N'Partially Completed', N'Philippines', '1985-05-23', '1987-08-31', '1984-06-15')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (20, 47, N'Destination Options', N'Expedia', 4217.2942, N'USD', N'Confirmed', N'Sweden', '2000-01-29', '1981-07-19', '1971-01-08')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (21, 1, N'Validity Period', N'Couchsurfing', 31508.801, N'SZL', N'Pending Approval', N'Iceland', '1970-02-07', '2014-08-22', '1972-09-19')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (22, 7, N'Number of Travelers', N'Hopper', 9.5087, N'SEK', N'Partially Completed', N'Austria', '1980-07-03', '1970-01-10', '1990-12-17')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (23, 32, N'Travel Dates', N'Google Flights', 5034.7361, N'NGN', N'Scheduled', N'Belize', '2010-12-04', '2003-01-17', '1996-08-22')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (24, 21, N'Flight Class Options', N'Booking.com', 35602.6202, N'BDT', N'Completed', N'United States', '2016-07-26', '1978-02-23', '1970-01-08')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (25, 45, N'Validity Period', N'STA Travel', 13243.7386, N'CHF', N'Awaiting Confirmation', N'Bangladesh', '1984-03-16', '1974-04-17', '1989-04-20')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (26, 30, N'Flight Class Options', N'Hotels.com', 7296.094, N'GBP', N'Under Review', N'Botswana', '1970-01-10', '1989-12-23', '2013-03-11')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (27, 49, N'Customization Options', N'Momondo', 5977.1703, N'MZN', N'Expired', N'Uganda', '1987-06-24', '2014-03-12', '1980-04-15')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (28, 31, N'Activities or Tours Included', N'Travelzoo', 15599.373, N'KWD', N'Partially Completed', N'Vietnam', '1970-02-21', '1977-08-14', '1989-11-09')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (29, 32, N'Transportation Preferences', N'HomeAway', 42547.4691, N'ZMW', N'Awaiting Confirmation', N'Mongolia', '2018-08-04', '2002-05-10', '1995-07-04')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (30, 37, N'Total Cost Estimate', N'Skyscanner', 140.3807, N'THB', N'Under Review', N'Bangladesh', '2012-05-13', '1970-05-21', '2007-04-09')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (31, 32, N'Validity Period', N'TripAdvisor', 43517.3402, N'DKK', N'Upcoming', N'Estonia', '1975-09-11', '1976-03-16', '1970-01-01')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (32, 19, N'Number of Travelers', N'Skyscanner', 9254.7349, N'KHR', N'Under Review', N'Iraq', '1991-07-13', '2023-09-28', '1970-04-10')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (33, 38, N'Accommodation Preferences', N'Agoda', 6256.9694, N'CNY', N'Confirmed', N'Canada', '1984-08-17', '2014-09-16', '2017-06-17')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (34, 31, N'Flight Class Options', N'STA Travel', 24721.1475, N'ERN', N'Awaiting Confirmation', N'South Africa', '1970-01-03', '1994-08-08', '1970-02-09')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (35, 25, N'Number of Travelers', N'Priceline', 12970.7418, N'ERN', N'Scheduled', N'Canada', '2021-12-30', '1988-10-12', '2021-04-06')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (36, 42, N'Number of Travelers', N'Travelzoo', 33256.3782, N'BRL', N'Scheduled', N'Iceland', '1988-03-28', '1974-10-02', '1971-02-01')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (37, 4, N'Flight Class Options', N'HomeAway', 25239.3857, N'EUR', N'Delayed', N'Israel', '1971-11-15', '1990-05-14', '2008-12-02')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (38, 37, N'Number of Travelers', N'Google Flights', 21670.2041, N'FKP', N'Delayed', N'Indonesia', '1989-08-09', '2014-02-04', '2019-06-30')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (39, 24, N'Transportation Preferences', N'Skyscanner', 7734.3742, N'GBP', N'Refunded', N'Brazil', '2022-08-25', '1988-05-11', '1996-10-01')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (40, 43, N'Discounts or Promotions Applied', N'Hopper', 3.1797, N'NPR', N'Delayed', N'Belize', '2014-04-12', '1970-01-04', '1970-01-10')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (41, 44, N'Number of Travelers', N'Orbitz', 4289.806, N'LRD', N'Refunded', N'Japan', '1970-01-06', '2018-04-17', '1986-03-24')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (42, 44, N'Meal Plans', N'Airbnb', 40181.8518, N'PKR', N'Processing', N'Nigeria', '2023-08-27', '2009-12-11', '1992-03-02')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (43, 25, N'Destination Options', N'CheapTickets', 14342.5476, N'AUD', N'Confirmed', N'Finland', '1971-05-11', '1998-12-23', '2004-07-23')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (44, 50, N'Meal Plans', N'Travelocity', 941.2593, N'ANG', N'Expired', N'Mongolia', '1970-01-14', '1972-07-30', '1970-03-22')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (45, 50, N'Destination Options', N'Hotels.com', 2754.6488, N'CVE', N'Partially Completed', N'Bangladesh', '1986-03-03', '1995-08-27', '2012-01-24')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (46, 30, N'Destination Options', N'Travelocity', 3.951, N'WST', N'In Progress', N'India', '1981-06-08', '1970-01-04', '1970-04-14')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (47, 8, N'Travel Dates', N'STA Travel', 43088.4727, N'TWD', N'Awaiting Confirmation', N'Ireland', '2001-09-07', '2011-09-18', '1970-10-28')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (48, 37, N'Discounts or Promotions Applied', N'Travelzoo', 16886.133, N'EUR', N'Expired', N'Belize', '2022-05-18', '1990-06-09', '1970-01-07')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (49, 29, N'Destination Options', N'Hotels.com', 47781.477, N'KWD', N'Delayed', N'Lithuania', '1973-02-01', '2004-10-13', '1994-03-22')
INSERT dbo.Cotizacion(id_cotizacion, solicitud_id, descripcion, agencia, precio, moneda, estado, destinos_cotizados, fecha_creacion, fecha_modificacion, fecha_visualizacion) VALUES (50, 24, N'Meal Plans', N'Travelocity', 20846.6636, N'DZD', N'Delayed', N'Afghanistan', '2019-04-15', '2001-04-12', '2004-04-20')
GO
SET IDENTITY_INSERT dbo.Cotizacion OFF
GO

--
-- Inserting data into table dbo.Detalle_Cotizacion
--
SET IDENTITY_INSERT dbo.Detalle_Cotizacion ON
GO
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (1, 18, N'Mexico', 2, '1970-02-24', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (2, 32, N'Philippines', 23, '1991-03-07', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (3, 37, N'Gambia', 40, '1977-01-31', -0.9999999999, 0)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (4, 21, N'New Zealand', 45, '2015-12-18', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (5, 3, N'Netherlands', 1, '2007-07-12', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (6, 17, N'Singapore', 2, '2019-02-07', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (7, 43, N'Estonia', 10, '2005-08-05', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (8, 7, N'Bangladesh', 0, '1970-01-08', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (9, 11, N'Cyprus', 34, '2003-07-23', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (10, 12, N'Brazil', 48, '1989-05-12', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (11, 21, N'Nigeria', 6, '1971-09-08', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (12, 18, N'Myanmar', 14, '2005-10-30', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (13, 45, N'Luxembourg', 12, '1992-03-26', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (14, 9, N'Lebanon', 49, '1995-03-22', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (15, 39, N'Zambia', 3, '1971-06-23', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (16, 50, N'Spain', 43, '1970-01-02', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (17, 42, N'New Zealand', 36, '1971-10-11', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (18, 22, N'Ireland', 28, '2022-10-04', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (19, 41, N'Kuwait', 47, '1970-12-28', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (20, 27, N'Turkey', 31, '2002-01-17', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (21, 17, N'Indonesia', 9, '1999-04-18', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (22, 14, N'Belize', 25, '1977-06-05', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (23, 16, N'Jordan', 18, '1970-01-10', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (24, 14, N'Singapore', 11, '1976-08-21', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (25, 24, N'Morocco', 27, '2013-11-26', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (26, 24, N'Lebanon', 22, '1980-02-17', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (27, 11, N'Malaysia', 50, '1982-10-27', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (28, 46, N'Nigeria', 42, '2001-05-28', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (29, 1, N'Bahrain', 18, '1992-06-03', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (30, 31, N'Fiji', 3, '2004-09-09', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (31, 33, N'United Kingdom', 25, '1970-01-24', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (32, 12, N'Argentina', 25, '1970-04-04', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (33, 9, N'Fiji', 32, '1970-01-04', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (34, 20, N'Zambia', 2, '1971-10-31', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (35, 30, N'Georgia', 44, '1997-04-11', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (36, 8, N'Poland', 23, '1970-09-19', 0, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (37, 16, N'Bangladesh', 6, '1986-04-21', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (38, 24, N'Luxembourg', 18, '1970-01-02', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (39, 7, N'Botswana', 8, '1980-04-24', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (40, 26, N'Luxembourg', 30, '1970-01-13', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (41, 18, N'Myanmar', 50, '2023-01-18', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (42, 38, N'Slovenia', 32, '1995-11-23', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (43, 33, N'Indonesia', 7, '2010-11-12', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (44, 24, N'Saudi Arabia', 33, '1971-07-25', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (45, 36, N'Saudi Arabia', 34, '1977-08-17', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (46, 19, N'Israel', 27, '2008-12-19', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (47, 41, N'Uganda', 5, '1977-08-08', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (48, 20, N'Afghanistan', 15, '1970-01-03', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (49, 18, N'Portugal', 6, '1971-11-13', -0.9999999999, -0.9999999999)
INSERT dbo.Detalle_Cotizacion(id_detalle_cotizacion, cotizacion_id, destino, num_dias, fecha_visita, latitud, longitud) VALUES (50, 23, N'Belgium', 20, '2015-08-04', -0.9999999999, -0.9999999999)
GO
SET IDENTITY_INSERT dbo.Detalle_Cotizacion OFF
GO

--
-- Inserting data into table dbo.Comprado
--
SET IDENTITY_INSERT dbo.Comprado ON
GO
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (1, 7, 22, N'42', N'Tour Package Purchase', N'Booking Reference/ID', N'Under Review')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (2, 28, 1, N'20', N'Airport Lounge Access Purchase', N'Cancellation Policy', N'Cancelled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (3, 27, 27, N'61', N'Hotel Reservation', N'Receipt/Invoice Number', N'Cancelled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (4, 45, 22, N'45', N'Activity or Attraction Tickets Purchase', N'Additional Services', N'Delayed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (5, 1, 39, N'45', N'Hotel Reservation', N'Confirmation Email/SMS', N'Refunded')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (6, 28, 30, N'49', N'Travel Insurance Purchase', N'Booking Reference/ID', N'Processing')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (7, 21, 46, N'24', N'Train Ticket Purchase', N'Payment Method', N'Upcoming')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (8, 23, 38, N'28', N'Flight Booking', N'Payment Method', N'On Hold')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (9, 42, 17, N'46', N'Visa or Travel Document Application', N'Location/Address if applicable', N'Processing')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (10, 11, 46, N'20', N'Hotel Reservation', N'Location/Address if applicable', N'Expired')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (11, 4, 48, N'27', N'Travel Insurance Purchase', N'Location/Address if applicable', N'Confirmed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (12, 37, 16, N'63', N'Activity or Attraction Tickets Purchase', N' Loyalty Points/Programs Used', N'Expired')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (13, 8, 3, N'47', N'Flight Booking', N'Date of Purchase', N'Partially Completed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (14, 21, 10, N'26', N'Flight Booking', N'Insurance Details', N'Under Review')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (15, 42, 43, N'56', N'Guided Tour Reservation', N'Traveler Information', N'Under Review')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (16, 3, 47, N'63', N'Airport Transfer Booking', N'Confirmation Email/SMS', N'Upcoming')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (17, 5, 23, N'29', N'Visa or Travel Document Application', N'Cancellation Policy', N'Cancelled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (18, 24, 8, N'32', N'Car Rental Reservation', N'Additional Services', N'Refunded')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (19, 33, 32, N'32', N'Airport Lounge Access Purchase', N'Date of Purchase', N'Under Review')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (20, 33, 45, N'48', N'Cruise Cabin Booking', N'Total Cost', N'Cancelled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (21, 4, 1, N'65', N'Restaurant Reservations', N' Loyalty Points/Programs Used', N'Completed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (22, 32, 36, N'36', N'Flight Booking', N'Date of Purchase', N'Expired')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (23, 22, 8, N'63', N'Restaurant Reservations', N'Traveler Information', N'Pending Approval')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (24, 23, 12, N'59', N'Visa or Travel Document Application', N'Insurance Details', N'Refunded')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (25, 47, 24, N'45', N'Train Ticket Purchase', N'Location/Address if applicable', N'In Progress')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (26, 13, 27, N'53', N'Flight Booking', N'Insurance Details', N'Partially Completed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (27, 41, 34, N'37', N'Travel Gear or Equipment Purchase', N'Vendor/Provider', N'In Progress')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (28, 40, 15, N'23', N'Visa or Travel Document Application', N'Confirmation Email/SMS', N'Completed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (29, 37, 12, N'40', N'Tour Package Purchase', N'Total Cost', N'Expired')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (30, 47, 21, N'45', N'Travel Insurance Purchase', N'Vendor/Provider', N'Awaiting Confirmation')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (31, 13, 2, N'58', N'Tour Package Purchase', N'Total Cost', N'Scheduled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (32, 46, 44, N'58', N'Guided Tour Reservation', N'Payment Method', N'Delayed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (33, 19, 17, N'65', N'Restaurant Reservations', N'Insurance Details', N'In Progress')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (34, 28, 9, N'20', N'Restaurant Reservations', N'Additional Services', N'Cancelled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (35, 19, 7, N'40', N'Train Ticket Purchase', N' Loyalty Points/Programs Used', N'Processing')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (36, 19, 34, N'28', N'Flight Booking', N'Insurance Details', N'Awaiting Confirmation')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (37, 4, 44, N'52', N'Guided Tour Reservation', N'Confirmation Email/SMS', N'Pending Approval')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (38, 20, 40, N'56', N'Airport Transfer Booking', N'Confirmation Email/SMS', N'Processing')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (39, 43, 6, N'57', N'Airport Transfer Booking', N'Travel Dates', N'In Progress')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (40, 1, 34, N'30', N'Car Rental Reservation', N'Additional Services', N'Expired')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (41, 20, 25, N'23', N'Travel Insurance Purchase', N'Insurance Details', N'Upcoming')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (42, 17, 14, N'23', N'Airport Transfer Booking', N'Additional Services', N'Confirmed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (43, 12, 9, N'61', N'Flight Booking', N'Confirmation Email/SMS', N'Confirmed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (44, 15, 50, N'62', N'Airport Transfer Booking', N'Date of Purchase', N'On Hold')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (45, 4, 3, N'20', N'Activity or Attraction Tickets Purchase', N'Travel Dates', N'Awaiting Confirmation')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (46, 47, 35, N'22', N'Language Course Enrollment', N' Loyalty Points/Programs Used', N'Delayed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (47, 8, 47, N'56', N'Visa or Travel Document Application', N'Special Requests/Notes', N'Completed')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (48, 48, 47, N'29', N'Activity or Attraction Tickets Purchase', N'Location/Address if applicable', N'Scheduled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (49, 2, 8, N'36', N'Travel Insurance Purchase', N'Booking Reference/ID', N'Scheduled')
INSERT dbo.Comprado(id_comprado, id_solicitid, id_cotizacion, dias, descripcion, detalle, estado) VALUES (50, 17, 25, N'32', N'Visa or Travel Document Application', N'Vendor/Provider', N'Scheduled')
GO
SET IDENTITY_INSERT dbo.Comprado OFF
GO

--
-- Inserting data into table dbo.Mejor_Lugar
--
SET IDENTITY_INSERT dbo.Mejor_Lugar ON
GO
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (1, 5, 27, 334, 0, 'Renowned clock tower, integral to a cultural landmark', 'U58', 'Armidale', '1987-07-14', '07:16:33.9930000', '03:04:39.4910000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (2, 16, 39, 691, 0, 'Japan''s tallest peak, a revered symbol and UNESCO site', '14Y10MUHY0X78B9PXR9J938P28T3GPUX50H0M82RZULCR0XY9W', 'Casino', '1971-11-23', '08:29:08.6700000', '10:14:24.8560000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (3, 14, 6, 745, 1, 'Renowned clock tower, integral to a cultural landmark', 'WRZ1B0WQ0JM48L', 'Broome', '2004-08-15', '04:01:56.7370000', '06:39:28.3220000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (4, 18, 9, 51, 1, 'Architectural masterpiece, a hub for performing arts', 'J5LJSQN', 'Traralgon', '1984-11-24', '18:32:15.5610000', '01:13:42.0120000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (5, 31, 36, 924, 0, 'Iconic iron lattice structure offering panoramic views', '5CH8YSL', 'Horsham', '1990-04-23', '17:33:07.2840000', '01:37:44.1340000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (6, 20, 32, 550, 0, 'Renowned clock tower, integral to a cultural landmark', 'EZXS30B6H0CQ774OD87WV95835I2091JZ138897', 'Bacchus Marsh', '2015-01-08', '10:04:15.0080000', '23:44:34.8200000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (7, 23, 26, 873, 1, 'Architectural masterpiece, a hub for performing arts', 'O9685DMZEC64124D530LUEE985CFR45EPL0DN1LZE3218T47667K4B9D', 'Forbes', '2014-09-22', '17:00:47.6780000', '10:19:17.4060000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (8, 39, 40, 257, 0, 'Renowned clock tower, integral to a cultural landmark', '1', 'Mudgee', '1970-01-09', '22:06:41.8360000', '00:56:55.5160000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (9, 28, NULL, 111, 0, 'Renowned clock tower, integral to a cultural landmark', '03WGK57YHI5R97Q', 'Sale', '2007-07-31', '04:39:16.2360000', '15:33:24.4230000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (10, 17, 5, 910, 1, 'Symbol of freedom and democracy, situated in a harbor', '51REAV0Z8770W4VNT4GDGN5QZON328Z8QVGTEK07S9HM64', 'Central Coast', '1976-08-07', '03:35:41.9590000', '23:37:53.1970000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (11, 13, 18, 722, 0, 'Iconic iron lattice structure offering panoramic views', 'XQ3ATBFT4189442Q0', 'Ulverstone', '1972-01-30', '02:25:08.3850000', '01:42:19.4770000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (12, 47, 35, 227, 0, 'Ancient amphitheater, a marvel of historical significance', 'N79P7T7DGDQX61', 'Sawtell', '1980-09-03', '09:35:40.7960000', '11:51:49.6730000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (13, 46, 21, 975, 1, 'Japan''s tallest peak, a revered symbol and UNESCO site', 'FJJ76AR5AK0Y5526M4HV5N4C55', 'Maitland', '1973-09-23', '13:39:15.0430000', '11:54:29.9730000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (14, 35, 3, 572, 1, 'Iconic iron lattice structure offering panoramic views', 'PX1UF4NM9O5WJRO3V2W5W22K09YJZ14Y0O2Z6A690I3Z5552L', 'Port Lincoln', '2015-08-15', '17:15:04.4390000', '02:59:19.8660000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (15, 36, 4, 727, 0, 'Ancient amphitheater, a marvel of historical significance', '246O03NR73K', 'Gawler', '1971-07-27', '16:46:58.4750000', '17:23:46.8400000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (16, NULL, 44, 172, 1, 'Ancient amphitheater, a marvel of historical significance', '0KN0N19DCG1WY851KW61QJ', 'Murray Bridge', '2022-08-24', '01:00:41.0090000', '07:49:38.5020000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (17, 36, 36, 824, 0, 'Renowned clock tower, integral to a cultural landmark', 'EWM24R9', 'Kalgoorlie', '1973-04-23', '09:11:50.0660000', '18:04:31.0780000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (18, 32, 42, 244, 1, 'Renowned clock tower, integral to a cultural landmark', 'K8307DDVMCRGI2', 'Cessnock', '1982-05-18', '11:05:11.6870000', '18:06:07.8060000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (19, 43, 39, 130, 1, 'Ancient amphitheater, a marvel of historical significance', '7', 'Victor Harbor', '2005-09-21', '22:13:51.7270000', '07:17:22.4700000')
INSERT dbo.Mejor_Lugar(id_mejores_lugares, detalle_cotizacion, lugar, orden, principal, descripcion, cosas_por_hacer, viajes_secundarios, fecha_visita, hora_inicio, hora_fin) VALUES (20, 11, 29, 321, 1, 'Symbol of freedom and democracy, situated in a harbor', '4D177NH40LIOUQK09H0XP44D', 'Geelong', '1991-07-15', '21:27:59.3580000', '17:24:08.6330000')
GO
SET IDENTITY_INSERT dbo.Mejor_Lugar OFF
GO

--
-- Inserting data into table dbo.Solicitud_Actividad
--
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (5, 2)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (9, 9)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (4, 3)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (4, 4)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (14, 13)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (8, 5)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (17, 15)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (6, 3)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (4, 1)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (9, 8)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (13, 13)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (5, 4)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (14, 12)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (14, 14)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (6, 5)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (7, 4)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (15, 15)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (9, 7)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (15, 13)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (7, 6)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (15, 14)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (10, 8)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (10, 10)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (2, 1)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (5, 5)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (11, 11)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (10, 9)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (16, 15)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (11, 10)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (8, 7)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (16, 14)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (6, 6)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (3, 1)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (11, 9)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (12, 11)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (4, 2)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (3, 2)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (12, 12)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (1, 1)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (6, 4)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (12, 10)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (13, 12)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (5, 3)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (7, 7)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (7, 5)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (13, 11)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (8, 6)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (2, 2)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (8, 8)
INSERT dbo.Solicitud_Actividad(solicitud_id, actividad_id) VALUES (3, 3)
GO

--
-- Inserting data into table dbo.Solicitud_Categoria
--
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (5, 2)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (9, 9)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (4, 3)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (4, 4)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (14, 13)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (8, 5)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (17, 15)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (6, 3)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (4, 1)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (9, 8)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (13, 13)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (5, 4)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (14, 12)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (14, 14)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (6, 5)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (7, 4)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (15, 15)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (9, 7)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (15, 13)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (7, 6)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (15, 14)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (10, 8)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (10, 10)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (2, 1)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (5, 5)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (11, 11)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (10, 9)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (16, 15)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (11, 10)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (8, 7)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (16, 14)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (6, 6)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (3, 1)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (11, 9)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (12, 11)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (4, 2)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (3, 2)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (12, 12)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (1, 1)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (6, 4)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (12, 10)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (13, 12)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (5, 3)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (7, 7)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (7, 5)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (13, 11)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (8, 6)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (2, 2)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (8, 8)
INSERT dbo.Solicitud_Categoria(solicitud_id, categoria_id) VALUES (3, 3)
GO

--
-- Inserting data into table dbo.Solicitud_Destino
--
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (47, 47)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (9, 9)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (18, 18)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (4, 4)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (28, 28)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (50, 50)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (45, 45)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (48, 48)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (46, 46)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (23, 23)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (13, 13)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (19, 19)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (42, 42)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (14, 14)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (20, 20)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (49, 49)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (15, 15)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (37, 37)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (43, 43)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (21, 21)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (29, 29)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (38, 38)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (10, 10)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (16, 16)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (5, 5)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (11, 11)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (24, 24)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (30, 30)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (25, 25)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (22, 22)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (44, 44)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (6, 6)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (31, 31)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (39, 39)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (26, 26)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (32, 32)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (17, 17)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (12, 12)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (1, 1)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (34, 34)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (40, 40)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (27, 27)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (33, 33)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (7, 7)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (35, 35)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (41, 41)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (36, 36)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (2, 2)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (8, 8)
INSERT dbo.Solicitud_Destino(solicitud_id, destino_id) VALUES (3, 3)
GO

--
-- Set NOEXEC to off
--

SET NOEXEC OFF
GO
