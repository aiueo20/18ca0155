/** テーブルがひとつでも存在している場合、削除する **/

DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT count(table_name)  INTO v_cnt
  FROM user_tables
  WHERE table_name IN ('POKEMON_EVOLUTION','POKEMON_EGGGROUP','POKEMON_PROPERTY','POKEMON_TYPE','POKEMON_ZUKANN'
                        ,'EGGGROUP','B_PROPERTY','B_TYPE','POKEMON_GROUP');

  IF v_cnt > 0 THEN
    EXECUTE IMMEDIATE 'DROP TABLE pokemon_evolution purge';
    EXECUTE IMMEDIATE 'DROP TABLE pokemon_eggGroup purge';
    EXECUTE IMMEDIATE 'DROP TABLE pokemon_property purge';
    EXECUTE IMMEDIATE 'DROP TABLE pokemon_type purge';
    EXECUTE IMMEDIATE 'DROP TABLE pokemon_zukann purge';
    EXECUTE IMMEDIATE 'DROP TABLE EggGroup purge';
    EXECUTE IMMEDIATE 'DROP TABLE b_property purge';
    EXECUTE IMMEDIATE 'DROP TABLE b_type purge';
    EXECUTE IMMEDIATE 'DROP TABLE pokemon_group purge';

    EXECUTE IMMEDIATE 'DROP SYNONYM zuk';
    EXECUTE IMMEDIATE 'DROP SYNONYM bt';
    EXECUTE IMMEDIATE 'DROP SYNONYM PokeT';
    EXECUTE IMMEDIATE 'DROP SYNONYM BProp';
    EXECUTE IMMEDIATE 'DROP SYNONYM PProp';
    EXECUTE IMMEDIATE 'DROP SYNONYM EggG';
    EXECUTE IMMEDIATE 'DROP SYNONYM PEggG';
    EXECUTE IMMEDIATE 'DROP SYNONYM PokeG';
    EXECUTE IMMEDIATE 'DROP SYNONYM PEvo';

    EXECUTE IMMEDIATE 'DROP VIEW zukann';
  END IF;
END;
/



--テーブル作成

--ポケモン分類
CREATE TABLE pokemon_group (
 group_no   NUMBER(4)    CONSTRAINT pk_pokeg_no   PRIMARY KEY,
 group_name VARCHAR2(30) CONSTRAINT uq_pokeG_name UNIQUE
);


--タイプ
CREATE TABLE b_type(
 type_no    NUMBER(2)    CONSTRAINT pk_btype_no   PRIMARY KEY,
 type_name  VARCHAR2(20) CONSTRAINT uq_btype_name UNIQUE
);


--特性
CREATE TABLE b_property(
 property_no   NUMBER(3)     CONSTRAINT pk_bprop_no   PRIMARY KEY,
 property_name VARCHAR2(30)  CONSTRAINT uq_bprop_name UNIQUE
);


--たまごグループ
CREATE TABLE EggGroup(
 eggGroup_no   NUMBER(2)    CONSTRAINT pk_eggG_no   PRIMARY KEY,
 eggGroup_name VARCHAR2(30) CONSTRAINT uq_eggG_name UNIQUE
);


--ポケモン図鑑
CREATE TABLE pokemon_zukann(
 zukann_no     NUMBER(6)     CONSTRAINT pk_zukanNO PRIMARY KEY,
 pokemon_name  VARCHAR2(20)  CONSTRAINT uq_pname   UNIQUE,
 evolution_seq NUMBER(1)     CONSTRAINT ck_zukann_evoseq  CHECK(evolution_seq IN (0,1,2)),
 height        NUMBER(3,1),
 weight        NUMBER(4,1),
 group_no      NUMBER(4)     CONSTRAINT fk_zukan_pokegroup REFERENCES pokemon_group(group_no),
 exp_type      NUMBER(8),
 habitat       VARCHAR2(100)
);


--ポケモンタイプ
CREATE TABLE pokemon_type(
 P_type_no NUMBER(6)  CONSTRAINT pk_ptype_no     PRIMARY KEY,
 zukann_no NUMBER(6)  CONSTRAINT fk_ptype_zukann REFERENCES pokemon_zukann(zukann_no) ON DELETE SET NULL,
 type_no   NUMBER(2)  CONSTRAINT fk_ptype_btype  REFERENCES b_type(type_no) ON DELETE SET NULL
);


--ポケモン特性
CREATE TABLE pokemon_property(
 p_property_no NUMBER(6) CONSTRAINT pk_pokeprop        PRIMARY KEY,
 zukann_no     NUMBER(6) CONSTRAINT fk_pokeprop_zukann REFERENCES pokemon_zukann(zukann_no) ON DELETE SET NULL,
 property_no   NUMBER(3) CONSTRAINT fk_pokeprop_prop   REFERENCES b_property(property_no) ON DELETE SET NULL
);


--ポケモンたまごグループ
CREATE TABLE pokemon_eggGroup(
 p_eggGroup_no NUMBER(6) CONSTRAINT pk_poke_eggGroup     PRIMARY KEY,
 zukann_no     NUMBER(6) CONSTRAINT fk_pokeEggG_zukann   REFERENCES pokemon_zukann(zukann_no) ON DELETE SET NULL,
 EggGroup_no   NUMBER(2) CONSTRAINT fk_pokeEggG_EggGroup REFERENCES eggGroup(EggGroup_no) ON DELETE SET NULL
);


--ポケモン進化
CREATE TABLE pokemon_evolution(
 zukann_no     NUMBER(6) CONSTRAINT pk_evo_no PRIMARY KEY,
 before_zukann_no NUMBER(6) CONSTRAINT fk_before_zukann REFERENCES pokemon_zukann(zukann_no) ON DELETE SET NULL,
 after_zukann_no  NUMBER(6) CONSTRAINT fk_after_zukann  REFERENCES pokemon_zukann(zukann_no) ON DELETE SET NULL,
 condition        VARCHAR2(35)
);


--索引作成
CREATE INDEX idx_Habitat ON Pokemon_zukann(habitat);

--シノニム作成
CREATE SYNONYM zuk FOR pokemon_zukann;
CREATE SYNONYM bt FOR B_Type;
CREATE SYNONYM PokeT FOR pokemon_Type;
CREATE SYNONYM BProp FOR B_Property;
CREATE SYNONYM PProp FOR pokemon_Property;
CREATE SYNONYM EggG FOR EggGroup;
CREATE SYNONYM PEggG FOR pokemon_EggGroup;
CREATE SYNONYM PokeG FOR pokemon_Group;
CREATE SYNONYM PEvo FOR pokemon_Evolution;



--ビュー作成
CREATE VIEW zukann AS
SELECT z.zukann_no AS zno, pokemon_name AS pname, 
       evolution_seq AS evo_seq, height, weight,
       type_name AS tname,
       group_name AS gname,
       egggroup_name AS eggname,
       exp_type, habitat
FROM zuk z JOIN pokemon_group pg
           ON z.group_no = pg.group_no
JOIN pokemon_type pt
           ON z.zukann_no = pt.zukann_no
JOIN b_type bt
           ON pt.type_no = bt.type_no
JOIN pokemon_egggroup pe
           ON z.zukann_no = pe.zukann_no
JOIN egggroup eg
           ON pe.egggroup_no = eg.egggroup_no;


--データ挿入


--ポケモン分類データ

INSERT INTO pokemon_group VALUES(1,	'2まいがいポケモン');
INSERT INTO pokemon_group VALUES(2,	'あしかポケモン');
INSERT INTO pokemon_group VALUES(3,	'あばれうしポケモン');
INSERT INTO pokemon_group VALUES(4,	'あひるポケモン');
INSERT INTO pokemon_group VALUES(5,	'あわはきポケモン');
INSERT INTO pokemon_group VALUES(6,	'いでんしポケモン');
INSERT INTO pokemon_group VALUES(7,	'いねむりポケモン');
INSERT INTO pokemon_group VALUES(8,	'いもむしポケモン');
INSERT INTO pokemon_group VALUES(9,	'いわへびポケモン');
INSERT INTO pokemon_group VALUES(10,	'うずまきポケモン');
INSERT INTO pokemon_group VALUES(11,	'おたまポケモン');
INSERT INTO pokemon_group VALUES(12,	'おやこポケモン');
INSERT INTO pokemon_group VALUES(13,	'かいりきポケモン');
INSERT INTO pokemon_group VALUES(14,	'かえんポケモン');
INSERT INTO pokemon_group VALUES(15,	'ガスじょうポケモン');
INSERT INTO pokemon_group VALUES(16,	'かせきポケモン');
INSERT INTO pokemon_group VALUES(17,	'かまきりポケモン');
INSERT INTO pokemon_group VALUES(18,	'かみなりポケモン');
INSERT INTO pokemon_group VALUES(19,	'かめのこポケモン');
INSERT INTO pokemon_group VALUES(20,	'かめポケモン');
INSERT INTO pokemon_group VALUES(21,	'かるがもポケモン');
INSERT INTO pokemon_group VALUES(22,	'がんせきポケモン');
INSERT INTO pokemon_group VALUES(23,	'キックポケモン');
INSERT INTO pokemon_group VALUES(24,	'きつねポケモン');
INSERT INTO pokemon_group VALUES(25,	'きのこポケモン');
INSERT INTO pokemon_group VALUES(26,	'きょうあくポケモン');
INSERT INTO pokemon_group VALUES(27,	'きんぎょポケモン');
INSERT INTO pokemon_group VALUES(28,	'くちばしポケモン');
INSERT INTO pokemon_group VALUES(29,	'くらげポケモン');
INSERT INTO pokemon_group VALUES(30,	'くわがたポケモン');
INSERT INTO pokemon_group VALUES(31,	'けむしポケモン');
INSERT INTO pokemon_group VALUES(32,	'こいぬポケモン');
INSERT INTO pokemon_group VALUES(33,	'こうもりポケモン');
INSERT INTO pokemon_group VALUES(34,	'こうらポケモン');
INSERT INTO pokemon_group VALUES(35,	'こどくポケモン');
INSERT INTO pokemon_group VALUES(36,	'ことりポケモン');
INSERT INTO pokemon_group VALUES(37,	'コブラポケモン');
INSERT INTO pokemon_group VALUES(38,	'こんちゅうポケモン');
INSERT INTO pokemon_group VALUES(39,	'さいみんポケモン');
INSERT INTO pokemon_group VALUES(40,	'さかなポケモン');
INSERT INTO pokemon_group VALUES(41,	'ざっそうポケモン');
INSERT INTO pokemon_group VALUES(42,	'さなぎポケモン');
INSERT INTO pokemon_group VALUES(43,	'さわがにポケモン');
INSERT INTO pokemon_group VALUES(44,	'シージーポケモン');
INSERT INTO pokemon_group VALUES(45,	'じしゃくポケモン');
INSERT INTO pokemon_group VALUES(46,	'シャドーポケモン');
INSERT INTO pokemon_group VALUES(47,	'シャムネコポケモン');
INSERT INTO pokemon_group VALUES(48,	'しんかポケモン');
INSERT INTO pokemon_group VALUES(49,	'しんしゅポケモン');
INSERT INTO pokemon_group VALUES(50,	'たねポケモン');
INSERT INTO pokemon_group VALUES(51,	'たまごポケモン');
INSERT INTO pokemon_group VALUES(52,	'ちょうちょポケモン');
INSERT INTO pokemon_group VALUES(53,	'ツルじょうポケモン');
INSERT INTO pokemon_group VALUES(54,	'でんげきポケモン');
INSERT INTO pokemon_group VALUES(55,	'でんせつポケモン');
INSERT INTO pokemon_group VALUES(56,	'とかげポケモン');
INSERT INTO pokemon_group VALUES(57,	'どくガスポケモン');
INSERT INTO pokemon_group VALUES(58,	'どくがポケモン');
INSERT INTO pokemon_group VALUES(59,	'どくばちポケモン');
INSERT INTO pokemon_group VALUES(60,	'どくばりポケモン');
INSERT INTO pokemon_group VALUES(61,	'とげとげポケモン');
INSERT INTO pokemon_group VALUES(62,	'ドラゴンポケモン');
INSERT INTO pokemon_group VALUES(63,	'とりポケモン');
INSERT INTO pokemon_group VALUES(64,	'ドリルポケモン');
INSERT INTO pokemon_group VALUES(65,	'なぞのポケモン');
INSERT INTO pokemon_group VALUES(66,	'なめまわしポケモン');
INSERT INTO pokemon_group VALUES(67,	'ねずみポケモン');
INSERT INTO pokemon_group VALUES(68,	'ねんりきポケモン');
INSERT INTO pokemon_group VALUES(69,	'のりものポケモン');
INSERT INTO pokemon_group VALUES(70,	'ハエとりポケモン');
INSERT INTO pokemon_group VALUES(71,	'ばけねこポケモン');
INSERT INTO pokemon_group VALUES(72,	'はさみポケモン');
INSERT INTO pokemon_group VALUES(73,	'バリアーポケモン');
INSERT INTO pokemon_group VALUES(74,	'パンチポケモン');
INSERT INTO pokemon_group VALUES(75,	'ひとがたポケモン');
INSERT INTO pokemon_group VALUES(76,	'ひのうまポケモン');
INSERT INTO pokemon_group VALUES(77,	'ひふきポケモン');
INSERT INTO pokemon_group VALUES(78,	'ふうせんポケモン');
INSERT INTO pokemon_group VALUES(79,	'ふたごどりポケモン');
INSERT INTO pokemon_group VALUES(80,	'ぶたざるポケモン');
INSERT INTO pokemon_group VALUES(81,	'フラワーポケモン');
INSERT INTO pokemon_group VALUES(82,	'ヘドロポケモン');
INSERT INTO pokemon_group VALUES(83,	'へびポケモン');
INSERT INTO pokemon_group VALUES(84,	'へんしんポケモン');
INSERT INTO pokemon_group VALUES(85,	'ボールポケモン');
INSERT INTO pokemon_group VALUES(86,	'ほしがたポケモン');
INSERT INTO pokemon_group VALUES(87,	'ほねずきポケモン');
INSERT INTO pokemon_group VALUES(88,	'ほのおポケモン');
INSERT INTO pokemon_group VALUES(89,	'まぬけポケモン');
INSERT INTO pokemon_group VALUES(90,	'みつごどりポケモン');
INSERT INTO pokemon_group VALUES(91,	'メガトンポケモン');
INSERT INTO pokemon_group VALUES(92,	'もぐらポケモン');
INSERT INTO pokemon_group VALUES(93,	'やしのみポケモン');
INSERT INTO pokemon_group VALUES(94,	'やどかりポケモン');
INSERT INTO pokemon_group VALUES(95,	'ようせいポケモン');
INSERT INTO pokemon_group VALUES(96,	'れいとうポケモン');

COMMIT;



--タイプデータ
INSERT INTO b_type VALUES(1,	'いわ');
INSERT INTO b_type VALUES(2,	'エスパー');
INSERT INTO b_type VALUES(3,	'かくとう');
INSERT INTO b_type VALUES(4,	'くさ');
INSERT INTO b_type VALUES(5,	'ゴースト');
INSERT INTO b_type VALUES(6,	'こおり');
INSERT INTO b_type VALUES(7,	'じめん');
INSERT INTO b_type VALUES(8,	'でんき');
INSERT INTO b_type VALUES(9,	'どく');
INSERT INTO b_type VALUES(10,	'ドラゴン');
INSERT INTO b_type VALUES(11,	'ノーマル');
INSERT INTO b_type VALUES(12,	'はがね');
INSERT INTO b_type VALUES(13,	'ひこう');
INSERT INTO b_type VALUES(14,	'ほのお');
INSERT INTO b_type VALUES(15,	'みず');
INSERT INTO b_type VALUES(16,	'むし');


COMMIT;



--特性データ


INSERT INTO b_property VALUES(1,	'あくしゅう');
INSERT INTO b_property VALUES(2,	'あついしぼう');
INSERT INTO b_property VALUES(3,	'ありじごく');
INSERT INTO b_property VALUES(4,	'いかく');
INSERT INTO b_property VALUES(5,	'いしあたま');
INSERT INTO b_property VALUES(6,	'かいりきバサミ');
INSERT INTO b_property VALUES(7,	'カブトアーマー');
INSERT INTO b_property VALUES(8,	'がんじょう');
INSERT INTO b_property VALUES(9,	'クリアボディ');
INSERT INTO b_property VALUES(10,	'げきりゅう');
INSERT INTO b_property VALUES(11,	'こんじょう');
INSERT INTO b_property VALUES(12,	'シェルアーマー');
INSERT INTO b_property VALUES(13,	'しぜんかいふく');
INSERT INTO b_property VALUES(14,	'しめりけ');
INSERT INTO b_property VALUES(15,	'じゅうなん');
INSERT INTO b_property VALUES(16,	'じりょく');
INSERT INTO b_property VALUES(17,	'シンクロ');
INSERT INTO b_property VALUES(18,	'しんりょく');
INSERT INTO b_property VALUES(19,	'すいすい');
INSERT INTO b_property VALUES(20,	'すながくれ');
INSERT INTO b_property VALUES(21,	'するどいめ');
INSERT INTO b_property VALUES(22,	'せいしんりょく');
INSERT INTO b_property VALUES(23,	'せいでんき');
INSERT INTO b_property VALUES(24,	'だっぴ');
INSERT INTO b_property VALUES(25,	'ちくでん');
INSERT INTO b_property VALUES(26,	'ちょすい');
INSERT INTO b_property VALUES(27,	'てんのめぐみ');
INSERT INTO b_property VALUES(28,	'どくのトゲ');
INSERT INTO b_property VALUES(29,	'トレース');
INSERT INTO b_property VALUES(30,	'どんかん');
INSERT INTO b_property VALUES(31,	'にげあし');
INSERT INTO b_property VALUES(32,	'ねんちゃく');
INSERT INTO b_property VALUES(33,	'ノーてんき');
INSERT INTO b_property VALUES(34,	'はっこう');
INSERT INTO b_property VALUES(35,	'はやおき');
INSERT INTO b_property VALUES(36,	'ひらいしん');
INSERT INTO b_property VALUES(37,	'ふくがん');
INSERT INTO b_property VALUES(38,	'ふみん');
INSERT INTO b_property VALUES(39,	'ふゆう');
INSERT INTO b_property VALUES(40,	'プレッシャー');
INSERT INTO b_property VALUES(41,	'ヘドロえき');
INSERT INTO b_property VALUES(42,	'ぼうおん');
INSERT INTO b_property VALUES(43,	'ほうし');
INSERT INTO b_property VALUES(44,	'ほのおのからだ');
INSERT INTO b_property VALUES(45,	'マイペース');
INSERT INTO b_property VALUES(46,	'みずのベール');
INSERT INTO b_property VALUES(47,	'むしのしらせ');
INSERT INTO b_property VALUES(48,	'メロメロボディ');
INSERT INTO b_property VALUES(49,	'めんえき');
INSERT INTO b_property VALUES(50,	'もうか');
INSERT INTO b_property VALUES(51,	'ものひろい');
INSERT INTO b_property VALUES(52,	'もらいび');
INSERT INTO b_property VALUES(53,	'やるき');
INSERT INTO b_property VALUES(54,	'ようりょくそ');
INSERT INTO b_property VALUES(55,	'りんぷん');


COMMIT;



--たまごグループデータ

INSERT INTO eggGroup VALUES(1,	'かいじゅう');
INSERT INTO eggGroup VALUES(2,	'こうぶつ');
INSERT INTO eggGroup VALUES(3,	'しょくぶつ');
INSERT INTO eggGroup VALUES(4,	'すいちゅう1');
INSERT INTO eggGroup VALUES(5,	'すいちゅう2');
INSERT INTO eggGroup VALUES(6,	'すいちゅう3');
INSERT INTO eggGroup VALUES(7,	'せいべつふめい');
INSERT INTO eggGroup VALUES(8,	'ひこう');
INSERT INTO eggGroup VALUES(9,	'ひとがた');
INSERT INTO eggGroup VALUES(10,	'ふていけい');
INSERT INTO eggGroup VALUES(11,	'みはっけん');
INSERT INTO eggGroup VALUES(12,	'むし');
INSERT INTO eggGroup VALUES(13,	'メタモン');
INSERT INTO eggGroup VALUES(14,	'ようせい');
INSERT INTO eggGroup VALUES(15,	'りくじょう');
INSERT INTO eggGroup VALUES(16,	'ドラゴン');

COMMIT;



--ポケモン図鑑データ

INSERT INTO pokemon_zukann VALUES(1,	'フシギダネ',	0,	0.7,	6.9,	50,	1059860,	'オーキドけんきゅうじょ');
INSERT INTO pokemon_zukann VALUES(2,	'フシギソウ',	1,	1.0,	13.0,	50,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(3,	'フシギバナ',	2,	2.0,	100.0,	50,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(4,	'ヒトカゲ',		0,	0.6,	8.5,	56,	1059860,	'オーキドけんきゅうじょ');
INSERT INTO pokemon_zukann VALUES(5,	'リザード',		1,	1.1,	19.0,	14,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(6,	'リザードン',	2,	1.7,	90.5,	14,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(7,	'ゼニガメ',		0,	0.5,	9.0,	19,	1059860,	'オーキドけんきゅうじょ');
INSERT INTO pokemon_zukann VALUES(8,	'カメール',		1,	1.0,	22.5,	20,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(9,	'カメックス',	2,	1.6,	85.5,	34,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(10,	'キャタピー',	0,	0.3,	2.9,	8,	1000000,	'トキワのもり');
INSERT INTO pokemon_zukann VALUES(11,	'トランセル',	1,	0.7,	9.9,	42,	1000000,	'トキワのもり、しるしのはやし');
INSERT INTO pokemon_zukann VALUES(12,	'バタフリー',	2,	1.1,	32.0,	52,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(13,	'ビードル',		0,	0.3,	3.2,	31,	1000000,	'トキワのもり');
INSERT INTO pokemon_zukann VALUES(14,	'コクーン',		1,	0.6,	10.0,	42,	1000000,	'トキワのもり、しるしのはやし');
INSERT INTO pokemon_zukann VALUES(15,	'スピアー',		2,	1.0,	29.5,	59,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(16,	'ポッポ',		0,	0.3,	1.8,	36,	1059860,	'1ばんどうろ');
INSERT INTO pokemon_zukann VALUES(17,	'ピジョン',		1,	1.1,	30.0,	63,	1059860,	'きずなばし（3のしま）');
INSERT INTO pokemon_zukann VALUES(18,	'ピジョット',	2,	1.5,	39.5,	63,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(19,	'コラッタ',		0,	0.3,	3.5,	67,	1000000,	'1ばんどうろ');
INSERT INTO pokemon_zukann VALUES(20,	'ラッタ',		1,	0.7,	18.5,	67,	1000000,	'17ばんどうろ、ポケモンやしき');
INSERT INTO pokemon_zukann VALUES(21,	'オニスズメ',	0,	0.3,	2.0,	36,	1000000,	'3ばんどうろ');
INSERT INTO pokemon_zukann VALUES(22,	'オニドリル',	1,	1.2,	38.0,	28,	1000000,	'18ばんどうろ');
INSERT INTO pokemon_zukann VALUES(23,	'アーボ',		0,	2.0,	6.9,	83,	1000000,	'11ばんどうろ（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(24,	'アーボック',	1,	3.5,	65.0,	37,	1000000,	'23ばんどうろ（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(25,	'ピカチュウ',	0,	0.4,	6.0,	67,	1000000,	'むじんはつでんしょ、トキワのもり');
INSERT INTO pokemon_zukann VALUES(26,	'ライチュウ',	1,	0.8,	30.0,	67,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(27,	'サンド',		0,	0.6,	12.0,	67,	1000000,	'11ばんどうろ（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(28,	'サンドパン',	1,	1.0,	29.5,	67,	1000000,	'23ばんどうろ（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(29,	'ニドラン♀',	0,	0.4,	7.0,	60,	1059860,	'3ばんどうろ、サファリパーク');
INSERT INTO pokemon_zukann VALUES(30,	'ニドリーナ',	1,	0.8,	20.0,	60,	1059860,	'サファリパーク');
INSERT INTO pokemon_zukann VALUES(31,	'ニドクイン',	2,	1.3,	60.0,	64,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(32,	'ニドラン♂',	0,	0.5,	9.0,	60,	1059860,	'3ばんどうろ、サファリパーク');
INSERT INTO pokemon_zukann VALUES(33,	'ニドリーノ',	1,	0.9,	19.5,	60,	1059860,	'サファリパーク');
INSERT INTO pokemon_zukann VALUES(34,	'ニドキング',	2,	1.4,	62.0,	64,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(35,	'ピッピ',		0,	0.6,	7.5,	95,	800000,		'オツキミヤマ、スロットの景品');
INSERT INTO pokemon_zukann VALUES(36,	'ピクシー',		1,	1.3,	40.0,	95,	800000,		NULL);
INSERT INTO pokemon_zukann VALUES(37,	'ロコン',		0,	0.6,	9.9,	24,	1000000,	'ポケモンやしき（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(38,	'キュウコン',	1,	1.1,	19.9,	24,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(39,	'プリン',		0,	0.5,	5.5,	78,	800000,		'3ばんどうろ');
INSERT INTO pokemon_zukann VALUES(40,	'プクリン',		1,	1.0,	12.0,	78,	800000,		NULL);
INSERT INTO pokemon_zukann VALUES(41,	'ズバット',		0,	0.8,	7.5,	33,	1000000,	'おつきみやま');
INSERT INTO pokemon_zukann VALUES(42,	'ゴルバット',	1,	1.6,	55.0,	33,	1000000,	'ハナダのどうくつ');
INSERT INTO pokemon_zukann VALUES(43,	'ナゾノクサ',	0,	0.5,	5.4,	41,	NULL,		'12ばんどうろ（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(44,	'クサイハナ',	1,	0.8,	8.6,	41,	1059860,	'きわのみさき（2のしま、ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(45,	'ラフレシア',	2,	1.2,	18.6,	81,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(46,	'パラス',		0,	0.3,	5.4,	25,	1000000,	'おつきみやま');
INSERT INTO pokemon_zukann VALUES(47,	'パラセクト',	1,	1.0,	29.5,	25,	1000000,	'ハナダのどうくつ、サファリパーク');
INSERT INTO pokemon_zukann VALUES(48,	'コンパン',		0,	1.0,	30.0,	38,	1000000,	'12ばんどうろ、サファリパーク');
INSERT INTO pokemon_zukann VALUES(49,	'モルフォン',	1,	1.5,	12.5,	58,	1000000,	'サファリパーク');
INSERT INTO pokemon_zukann VALUES(50,	'ディグダ',		0,	0.2,	0.8,	92,	1000000,	'ディグダのあな');
INSERT INTO pokemon_zukann VALUES(51,	'ダグトリオ',	1,	0.7,	33.3,	92,	1000000,	'ディグダのあな');
INSERT INTO pokemon_zukann VALUES(52,	'ニャース',		0,	0.4,	4.2,	71,	1000000,	'5ばんどうろ');
INSERT INTO pokemon_zukann VALUES(53,	'ペルシアン',	1,	1.0,	32.0,	47,	1000000,	'7のしま');
INSERT INTO pokemon_zukann VALUES(54,	'コダック',		0,	0.8,	19.6,	4,	1000000,	'サファリパーク（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(55,	'ゴルダック',	1,	1.7,	76.6,	4,	1000000,	'ハナダのどうくつ（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(56,	'マンキー',		0,	0.5,	28.0,	80,	1000000,	'22ばんどうろ');
INSERT INTO pokemon_zukann VALUES(57,	'オコリザル',	1,	1.0,	32.0,	80,	1000000,	'ハナダのどうくつ');
INSERT INTO pokemon_zukann VALUES(58,	'ガーディ',		0,	0.7,	19.0,	32,	1250000,	'7ばんどうろ、ポケモンやしき（FLのみ）');
INSERT INTO pokemon_zukann VALUES(59,	'ウインディ',	1,	1.9,	155.0,	55,	1250000,	NULL);
INSERT INTO pokemon_zukann VALUES(60,	'ニョロモ',		0,	0.6,	12.4,	11,	1059860,	'6ばんどうろ');
INSERT INTO pokemon_zukann VALUES(61,	'ニョロゾ',		1,	1.0,	20.0,	11,	1059860,	'6ばんどうろ');
INSERT INTO pokemon_zukann VALUES(62,	'ニョロボン',	2,	1.3,	54.0,	11,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(63,	'ケーシィ',		0,	0.9,	19.5,	68,	1059860,	'24ばんどうろ、スロットの景品');
INSERT INTO pokemon_zukann VALUES(64,	'ユンゲラー',	1,	1.3,	56.5,	68,	1059860,	'ハナダのどうくつ');
INSERT INTO pokemon_zukann VALUES(65,	'フーディン',	2,	1.5,	48.0,	68,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(66,	'ワンリキー',	0,	0.8,	19.5,	13,	1059860,	'いわやまトンネル、ともしびやま');
INSERT INTO pokemon_zukann VALUES(67,	'ゴーリキー',	1,	1.5,	70.5,	13,	1059860,	'ハナダのどうくつ、ともしびやま');
INSERT INTO pokemon_zukann VALUES(68,	'カイリキー',	2,	1.6,	130.0,	13,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(69,	'マダツボミ',	0,	0.7,	4.0,	81,	1000000,	'12ばんどうろ（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(70,	'ウツドン',		1,	1.0,	6.4,	70,	1000000,	'きのみのもり（3のしま）');
INSERT INTO pokemon_zukann VALUES(71,	'ウツボット',	2,	1.7,	15.5,	70,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(72,	'メノクラゲ',	0,	0.9,	45.5,	29,	1250000,	'グレンじま');
INSERT INTO pokemon_zukann VALUES(73,	'ドククラゲ',	1,	1.6,	55.0,	29,	1250000,	'7のしま');
INSERT INTO pokemon_zukann VALUES(74,	'イシツブテ',	0,	0.4,	20.0,	22,	1059860,	'オツキミやま、いわやまトンネル');
INSERT INTO pokemon_zukann VALUES(75,	'ゴローン',		1,	1.0,	105.0,	22,	1059860,	'ハナダのどうくつ、しっぽうけいこく');
INSERT INTO pokemon_zukann VALUES(76,	'ゴローニャ',	2,	1.4,	300.0,	91,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(77,	'ポニータ',		0,	1.0,	30.0,	76,	1000000,	'ともしびやま');
INSERT INTO pokemon_zukann VALUES(78,	'ギャロップ',	1,	1.7,	95.0,	76,	1000000,	'ともしびやま');
INSERT INTO pokemon_zukann VALUES(79,	'ヤドン',		0,	1.2,	36.0,	89,	1000000,	'サファリパーク（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(80,	'ヤドラン',		1,	1.6,	78.5,	94,	1000000,	'ハナダのどうくつ（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(81,	'コイル',		0,	0.3,	6.0,	45,	1000000,	'むじんはつでんしょ');
INSERT INTO pokemon_zukann VALUES(82,	'レアコイル',	1,	1.0,	60.0,	45,	1000000,	'ハナダのどうくつ、むじんはつでんしょ');
INSERT INTO pokemon_zukann VALUES(83,	'カモネギ',		0,	0.8,	15.0,	21,	1000000,	'クチバシティにいる女の子と交換');
INSERT INTO pokemon_zukann VALUES(84,	'ドードー',		0,	1.4,	39.2,	79,	1000000,	'16ばんどうろ、サファリゾーン');
INSERT INTO pokemon_zukann VALUES(85,	'ドードリオ',	1,	1.8,	85.2,	90,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(86,	'パウワウ',		0,	1.1,	90.0,	2,	1000000,	'ふたごじま');
INSERT INTO pokemon_zukann VALUES(87,	'ジュゴン',		1,	1.7,	120.0,	2,	1000000,	'ふたごじま');
INSERT INTO pokemon_zukann VALUES(88,	'ベトベター',	0,	0.9,	30.0,	82,	1000000,	'ポケモンやしき');
INSERT INTO pokemon_zukann VALUES(89,	'ベトベトン',	1,	1.2,	30.0,	82,	1000000,	'ポケモンやしき（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(90,	'シェルダー',	0,	0.3,	4.0,	1,	1250000,	'クチバシティ（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(91,	'パルシェン',	1,	1.5,	132.5,	1,	1250000,	NULL);
INSERT INTO pokemon_zukann VALUES(92,	'ゴース',		0,	1.3,	0.1,	15,	1059860,	'ポケモンタワー');
INSERT INTO pokemon_zukann VALUES(93,	'ゴースト',		1,	1.6,	0.1,	15,	1059860,	'ポケモンタワー');
INSERT INTO pokemon_zukann VALUES(94,	'ゲンガー',		2,	1.5,	40.5,	46,	1059860,	NULL);
INSERT INTO pokemon_zukann VALUES(95,	'イワーク',		0,	8.8,	210.0,	9,	1000000,	'チャンピオンロード、いわやまトンネル');
INSERT INTO pokemon_zukann VALUES(96,	'スリープ',		1,	1.0,	32.4,	39,	1000000,	'11ばんどうろ、きのみのもり');
INSERT INTO pokemon_zukann VALUES(97,	'スリーパー',	2,	1.6,	75.6,	39,	1000000,	'きのみのもり');
INSERT INTO pokemon_zukann VALUES(98,	'クラブ',		0,	0.4,	6.5,	43,	1000000,	'マサラタウンなど');
INSERT INTO pokemon_zukann VALUES(99,	'キングラー',	1,	1.3,	60.0,	72,	1000000,	'マサラタウン');
INSERT INTO pokemon_zukann VALUES(100,	'ビリリダマ',	0,	0.5,	10.4,	85,	1000000,	'10ばんどうろ');
INSERT INTO pokemon_zukann VALUES(101,	'マルマイン',	1,	1.2,	66.6,	85,	1000000,	'ハナダのどうくつ');
INSERT INTO pokemon_zukann VALUES(102,	'タマタマ',		0,	0.4,	2.5,	51,	1250000,	'サファリゾーン');
INSERT INTO pokemon_zukann VALUES(103,	'ナッシー',		1,	2.0,	120.0,	93,	1250000,	NULL);
INSERT INTO pokemon_zukann VALUES(104,	'カラカラ',		0,	0.4,	6.5,	35,	1250000,	'しっぽうけいこく（7のしま）、ポケモンタワー');
INSERT INTO pokemon_zukann VALUES(105,	'ガラガラ',		1,	1.0,	45.0,	87,	1250000,	'しっぽうけいこく（7のしま）');
INSERT INTO pokemon_zukann VALUES(106,	'サワムラー',	0,	1.5,	49.8,	23,	1000000,	'かくとうどうじょう（ヤマブキシティ）');
INSERT INTO pokemon_zukann VALUES(107,	'エビワラー',	0,	1.4,	50.2,	74,	1000000,	'かくとうどうじょう（ヤマブキシティ）');
INSERT INTO pokemon_zukann VALUES(108,	'ベロリンガ',	0,	1.2,	65.5,	66,	1000000,	'18ばんどうろで交換');
INSERT INTO pokemon_zukann VALUES(109,	'ドガース',		0,	0.6,	1.0,	57,	1000000,	'ポケモンやしき');
INSERT INTO pokemon_zukann VALUES(110,	'マタドガス',	1,	1.2,	9.5,	57,	1000000,	'ポケモンやしき（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(111,	'サイホーン',	0,	1.0,	115.0,	61,	1250000,	'サファリゾーン');
INSERT INTO pokemon_zukann VALUES(112,	'サイドン',		1,	1.9,	120.0,	64,	1250000,	NULL);
INSERT INTO pokemon_zukann VALUES(113,	'ラッキー',		0,	1.1,	34.6,	51,	800000,		'サファリゾーン');
INSERT INTO pokemon_zukann VALUES(114,	'モンジャラ',	0,	1.0,	35.0,	53,	1000000,	'21ばんどうろ');
INSERT INTO pokemon_zukann VALUES(115,	'ガルーラ',		0,	2.2,	80.0,	12,	1000000,	'サファリゾーン');
INSERT INTO pokemon_zukann VALUES(116,	'タッツー',		0,	0.4,	8.0,	62,	1000000,	'グレンじま、ふたごじまなど');
INSERT INTO pokemon_zukann VALUES(117,	'シードラ',		1,	1.2,	25.0,	62,	1000000,	'グレンじま');
INSERT INTO pokemon_zukann VALUES(118,	'トサキント',	0,	0.6,	15.0,	27,	1000000,	'サファリゾーン');
INSERT INTO pokemon_zukann VALUES(119,	'アズマオウ',	1,	1.3,	39.0,	27,	1000000,	'サファリゾーン');
INSERT INTO pokemon_zukann VALUES(120,	'ヒトデマン',	0,	0.8,	34.5,	86,	1250000,	'グレンじま（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(121,	'スターミー',	1,	1.1,	80.0,	65,	1250000,	NULL);
INSERT INTO pokemon_zukann VALUES(122,	'バリヤード',	0,	1.3,	54.5,	73,	1000000,	'2ばんどうろにある民家の人と交換');
INSERT INTO pokemon_zukann VALUES(123,	'ストライク',	0,	1.5,	56.0,	17,	1000000,	'サファリゾーン、スロットの景品（FRのみ）');
INSERT INTO pokemon_zukann VALUES(124,	'ルージュラ',	0,	1.4,	40.6,	75,	1000000,	'ハナダシティの民家の人と交換');
INSERT INTO pokemon_zukann VALUES(125,	'エレブー',		0,	1.1,	30.0,	54,	1000000,	'むじんはつでんしょ（ファイアレッドのみ）');
INSERT INTO pokemon_zukann VALUES(126,	'ブーバー',		0,	1.3,	44.5,	77,	1000000,	'ともしびやま（リーフグリーンのみ）');
INSERT INTO pokemon_zukann VALUES(127,	'カイロス',		0,	1.5,	55.0,	30,	1250000,	'サファリゾーン、スロットの景品（LGのみ）');
INSERT INTO pokemon_zukann VALUES(128,	'ケンタロス',	0,	1.4,	88.4,	3,	1250000,	'サファリゾーン');
INSERT INTO pokemon_zukann VALUES(129,	'コイキング',	0,	0.9,	10.0,	40,	1250000,	'ボロのつりざおで確実に釣れる');
INSERT INTO pokemon_zukann VALUES(130,	'ギャラドス',	1,	6.5,	235.0,	26,	1250000,	'すごいつりざおで各地で釣れる');
INSERT INTO pokemon_zukann VALUES(131,	'ラプラス',		0,	2.5,	220.0,	69,	1250000,	'シルフカンパニー（ライバルと戦った部屋）');
INSERT INTO pokemon_zukann VALUES(132,	'メタモン',		0,	0.3,	4.0,	84,	1000000,	'14ばんどうろ、ポケモンやしき');
INSERT INTO pokemon_zukann VALUES(133,	'イーブイ',		0,	0.3,	6.5,	48,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(134,	'シャワーズ',	1,	1.0,	29.0,	5,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(135,	'サンダース',	2,	0.8,	24.5,	18,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(136,	'ブースター',	0,	0.9,	25.0,	88,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(137,	'ポリゴン',		0,	0.8,	36.5,	44,	1000000,	'スロットの景品');
INSERT INTO pokemon_zukann VALUES(138,	'オムナイト',	0,	0.4,	7.5,	10,	1000000,	'オツキミやま（化石）+グレンじま');
INSERT INTO pokemon_zukann VALUES(139,	'オムスター',	1,	1.0,	35.0,	10,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(140,	'カブト',		0,	0.5,	11.5,	34,	1000000,	'オツキミやま（化石）+グレンじま');
INSERT INTO pokemon_zukann VALUES(141,	'カブトプス',	1,	1.3,	40.5,	34,	1000000,	NULL);
INSERT INTO pokemon_zukann VALUES(142,	'プテラ',		0,	1.8,	59.0,	16,	1250000,	'ニビはくぶつかん（コハク）+グレンじま');
INSERT INTO pokemon_zukann VALUES(143,	'カビゴン',		0,	2.1,	460.0,	7,	1250000,	'12ばんどうろ、16ばんどうろ');
INSERT INTO pokemon_zukann VALUES(144,	'フリーザー',	0,	1.7,	55.4,	96,	1250000,	'ふたごじまB4F');
INSERT INTO pokemon_zukann VALUES(145,	'サンダー',		0,	1.6,	52.6,	54,	1250000,	'むじんはつでんしょ');
INSERT INTO pokemon_zukann VALUES(146,	'ファイヤー',	0,	2.0,	60.0,	14,	1250000,	'ともしびやまの山頂');
INSERT INTO pokemon_zukann VALUES(147,	'ミニリュウ',	0,	1.8,	3.3,	62,	1250000,	'サファリゾーン、スロットの景品');
INSERT INTO pokemon_zukann VALUES(148,	'ハクリュー',	1,	4.0,	16.5,	62,	1250000,	NULL);
INSERT INTO pokemon_zukann VALUES(149,	'カイリュー',	2,	2.2,	210.0,	62,	1250000,	NULL);
INSERT INTO pokemon_zukann VALUES(150,	'ミュウツー',	0,	2.0,	122.0,	6,	1250000,	'ハナダのどうくつB1F');
INSERT INTO pokemon_zukann VALUES(151,	'ミュウ',		0,	0.4,	4.0,	49,	1250000,	NULL);

INSERT INTO pokemon_zukann(ZUKANN_NO,POKEMON_NAME) VALUES(199,	'ヤドキング');
INSERT INTO pokemon_zukann(ZUKANN_NO,POKEMON_NAME) VALUES(208,	'ハガネール');
INSERT INTO pokemon_zukann(ZUKANN_NO,POKEMON_NAME) VALUES(242,	'ハピナス');

COMMIT;



--ポケモンタイプデータ
INSERT INTO pokemon_type VALUES(	1	,	1	,	4	);
INSERT INTO pokemon_type VALUES(	2	,	1	,	9	);
INSERT INTO pokemon_type VALUES(	3	,	2	,	4	);
INSERT INTO pokemon_type VALUES(	4	,	2	,	9	);
INSERT INTO pokemon_type VALUES(	5	,	3	,	4	);
INSERT INTO pokemon_type VALUES(	6	,	3	,	9	);
INSERT INTO pokemon_type VALUES(	7	,	4	,	14	);
INSERT INTO pokemon_type VALUES(	8	,	5	,	14	);
INSERT INTO pokemon_type VALUES(	9	,	6	,	14	);
INSERT INTO pokemon_type VALUES(	10	,	6	,	13	);
INSERT INTO pokemon_type VALUES(	11	,	7	,	15	);
INSERT INTO pokemon_type VALUES(	12	,	8	,	15	);
INSERT INTO pokemon_type VALUES(	13	,	9	,	15	);
INSERT INTO pokemon_type VALUES(	14	,	10	,	16	);
INSERT INTO pokemon_type VALUES(	15	,	11	,	16	);
INSERT INTO pokemon_type VALUES(	16	,	12	,	16	);
INSERT INTO pokemon_type VALUES(	17	,	12	,	13	);
INSERT INTO pokemon_type VALUES(	18	,	13	,	16	);
INSERT INTO pokemon_type VALUES(	19	,	13	,	9	);
INSERT INTO pokemon_type VALUES(	20	,	14	,	16	);
INSERT INTO pokemon_type VALUES(	21	,	14	,	9	);
INSERT INTO pokemon_type VALUES(	22	,	15	,	16	);
INSERT INTO pokemon_type VALUES(	23	,	15	,	9	);
INSERT INTO pokemon_type VALUES(	24	,	16	,	11	);
INSERT INTO pokemon_type VALUES(	25	,	16	,	13	);
INSERT INTO pokemon_type VALUES(	26	,	17	,	11	);
INSERT INTO pokemon_type VALUES(	27	,	17	,	13	);
INSERT INTO pokemon_type VALUES(	28	,	18	,	11	);
INSERT INTO pokemon_type VALUES(	29	,	18	,	13	);
INSERT INTO pokemon_type VALUES(	30	,	19	,	11	);
INSERT INTO pokemon_type VALUES(	31	,	20	,	11	);
INSERT INTO pokemon_type VALUES(	32	,	21	,	11	);
INSERT INTO pokemon_type VALUES(	33	,	21	,	13	);
INSERT INTO pokemon_type VALUES(	34	,	22	,	11	);
INSERT INTO pokemon_type VALUES(	35	,	22	,	13	);
INSERT INTO pokemon_type VALUES(	36	,	23	,	9	);
INSERT INTO pokemon_type VALUES(	37	,	24	,	9	);
INSERT INTO pokemon_type VALUES(	38	,	25	,	8	);
INSERT INTO pokemon_type VALUES(	39	,	26	,	8	);
INSERT INTO pokemon_type VALUES(	40	,	27	,	7	);
INSERT INTO pokemon_type VALUES(	41	,	28	,	7	);
INSERT INTO pokemon_type VALUES(	42	,	29	,	9	);
INSERT INTO pokemon_type VALUES(	43	,	30	,	9	);
INSERT INTO pokemon_type VALUES(	44	,	31	,	9	);
INSERT INTO pokemon_type VALUES(	45	,	31	,	7	);
INSERT INTO pokemon_type VALUES(	46	,	32	,	9	);
INSERT INTO pokemon_type VALUES(	47	,	33	,	9	);
INSERT INTO pokemon_type VALUES(	48	,	34	,	9	);
INSERT INTO pokemon_type VALUES(	49	,	34	,	7	);
INSERT INTO pokemon_type VALUES(	50	,	35	,	11	);
INSERT INTO pokemon_type VALUES(	51	,	36	,	11	);
INSERT INTO pokemon_type VALUES(	52	,	37	,	14	);
INSERT INTO pokemon_type VALUES(	53	,	38	,	14	);
INSERT INTO pokemon_type VALUES(	54	,	39	,	11	);
INSERT INTO pokemon_type VALUES(	55	,	40	,	11	);
INSERT INTO pokemon_type VALUES(	56	,	41	,	9	);
INSERT INTO pokemon_type VALUES(	57	,	41	,	13	);
INSERT INTO pokemon_type VALUES(	58	,	42	,	9	);
INSERT INTO pokemon_type VALUES(	59	,	42	,	13	);
INSERT INTO pokemon_type VALUES(	60	,	43	,	4	);
INSERT INTO pokemon_type VALUES(	61	,	43	,	9	);
INSERT INTO pokemon_type VALUES(	62	,	44	,	4	);
INSERT INTO pokemon_type VALUES(	63	,	44	,	9	);
INSERT INTO pokemon_type VALUES(	64	,	45	,	4	);
INSERT INTO pokemon_type VALUES(	65	,	45	,	9	);
INSERT INTO pokemon_type VALUES(	66	,	46	,	16	);
INSERT INTO pokemon_type VALUES(	67	,	46	,	4	);
INSERT INTO pokemon_type VALUES(	68	,	47	,	16	);
INSERT INTO pokemon_type VALUES(	69	,	47	,	4	);
INSERT INTO pokemon_type VALUES(	70	,	48	,	16	);
INSERT INTO pokemon_type VALUES(	71	,	48	,	9	);
INSERT INTO pokemon_type VALUES(	72	,	49	,	16	);
INSERT INTO pokemon_type VALUES(	73	,	49	,	9	);
INSERT INTO pokemon_type VALUES(	74	,	50	,	7	);
INSERT INTO pokemon_type VALUES(	75	,	51	,	7	);
INSERT INTO pokemon_type VALUES(	76	,	52	,	11	);
INSERT INTO pokemon_type VALUES(	77	,	53	,	11	);
INSERT INTO pokemon_type VALUES(	78	,	54	,	15	);
INSERT INTO pokemon_type VALUES(	79	,	55	,	15	);
INSERT INTO pokemon_type VALUES(	80	,	56	,	3	);
INSERT INTO pokemon_type VALUES(	81	,	57	,	3	);
INSERT INTO pokemon_type VALUES(	82	,	58	,	14	);
INSERT INTO pokemon_type VALUES(	83	,	59	,	14	);
INSERT INTO pokemon_type VALUES(	84	,	60	,	15	);
INSERT INTO pokemon_type VALUES(	85	,	61	,	15	);
INSERT INTO pokemon_type VALUES(	86	,	62	,	15	);
INSERT INTO pokemon_type VALUES(	87	,	62	,	3	);
INSERT INTO pokemon_type VALUES(	88	,	63	,	2	);
INSERT INTO pokemon_type VALUES(	89	,	64	,	2	);
INSERT INTO pokemon_type VALUES(	90	,	65	,	2	);
INSERT INTO pokemon_type VALUES(	91	,	66	,	3	);
INSERT INTO pokemon_type VALUES(	92	,	67	,	3	);
INSERT INTO pokemon_type VALUES(	93	,	68	,	3	);
INSERT INTO pokemon_type VALUES(	94	,	69	,	4	);
INSERT INTO pokemon_type VALUES(	95	,	69	,	9	);
INSERT INTO pokemon_type VALUES(	96	,	70	,	4	);
INSERT INTO pokemon_type VALUES(	97	,	70	,	9	);
INSERT INTO pokemon_type VALUES(	98	,	71	,	4	);
INSERT INTO pokemon_type VALUES(	99	,	71	,	9	);
INSERT INTO pokemon_type VALUES(	100	,	72	,	15	);
INSERT INTO pokemon_type VALUES(	101	,	72	,	9	);
INSERT INTO pokemon_type VALUES(	102	,	73	,	15	);
INSERT INTO pokemon_type VALUES(	103	,	73	,	9	);
INSERT INTO pokemon_type VALUES(	104	,	74	,	1	);
INSERT INTO pokemon_type VALUES(	105	,	74	,	7	);
INSERT INTO pokemon_type VALUES(	106	,	75	,	1	);
INSERT INTO pokemon_type VALUES(	107	,	75	,	7	);
INSERT INTO pokemon_type VALUES(	108	,	76	,	1	);
INSERT INTO pokemon_type VALUES(	109	,	76	,	7	);
INSERT INTO pokemon_type VALUES(	110	,	77	,	14	);
INSERT INTO pokemon_type VALUES(	111	,	78	,	14	);
INSERT INTO pokemon_type VALUES(	112	,	79	,	15	);
INSERT INTO pokemon_type VALUES(	113	,	79	,	2	);
INSERT INTO pokemon_type VALUES(	114	,	80	,	15	);
INSERT INTO pokemon_type VALUES(	115	,	80	,	2	);
INSERT INTO pokemon_type VALUES(	116	,	81	,	8	);
INSERT INTO pokemon_type VALUES(	117	,	81	,	12	);
INSERT INTO pokemon_type VALUES(	118	,	82	,	8	);
INSERT INTO pokemon_type VALUES(	119	,	82	,	12	);
INSERT INTO pokemon_type VALUES(	120	,	83	,	11	);
INSERT INTO pokemon_type VALUES(	121	,	83	,	13	);
INSERT INTO pokemon_type VALUES(	122	,	84	,	11	);
INSERT INTO pokemon_type VALUES(	123	,	84	,	13	);
INSERT INTO pokemon_type VALUES(	124	,	85	,	11	);
INSERT INTO pokemon_type VALUES(	125	,	85	,	13	);
INSERT INTO pokemon_type VALUES(	126	,	86	,	15	);
INSERT INTO pokemon_type VALUES(	127	,	87	,	15	);
INSERT INTO pokemon_type VALUES(	128	,	87	,	6	);
INSERT INTO pokemon_type VALUES(	129	,	88	,	9	);
INSERT INTO pokemon_type VALUES(	130	,	89	,	9	);
INSERT INTO pokemon_type VALUES(	131	,	90	,	15	);
INSERT INTO pokemon_type VALUES(	132	,	91	,	15	);
INSERT INTO pokemon_type VALUES(	133	,	91	,	6	);
INSERT INTO pokemon_type VALUES(	134	,	92	,	5	);
INSERT INTO pokemon_type VALUES(	135	,	92	,	9	);
INSERT INTO pokemon_type VALUES(	136	,	93	,	5	);
INSERT INTO pokemon_type VALUES(	137	,	93	,	9	);
INSERT INTO pokemon_type VALUES(	138	,	94	,	5	);
INSERT INTO pokemon_type VALUES(	139	,	94	,	9	);
INSERT INTO pokemon_type VALUES(	140	,	95	,	1	);
INSERT INTO pokemon_type VALUES(	141	,	95	,	7	);
INSERT INTO pokemon_type VALUES(	142	,	96	,	2	);
INSERT INTO pokemon_type VALUES(	143	,	97	,	2	);
INSERT INTO pokemon_type VALUES(	144	,	98	,	15	);
INSERT INTO pokemon_type VALUES(	145	,	99	,	15	);
INSERT INTO pokemon_type VALUES(	146	,	100	,	8	);
INSERT INTO pokemon_type VALUES(	147	,	101	,	8	);
INSERT INTO pokemon_type VALUES(	148	,	102	,	4	);
INSERT INTO pokemon_type VALUES(	149	,	102	,	2	);
INSERT INTO pokemon_type VALUES(	150	,	103	,	4	);
INSERT INTO pokemon_type VALUES(	151	,	103	,	2	);
INSERT INTO pokemon_type VALUES(	152	,	104	,	7	);
INSERT INTO pokemon_type VALUES(	153	,	105	,	7	);
INSERT INTO pokemon_type VALUES(	154	,	106	,	3	);
INSERT INTO pokemon_type VALUES(	155	,	107	,	3	);
INSERT INTO pokemon_type VALUES(	156	,	108	,	11	);
INSERT INTO pokemon_type VALUES(	157	,	109	,	9	);
INSERT INTO pokemon_type VALUES(	158	,	110	,	9	);
INSERT INTO pokemon_type VALUES(	159	,	111	,	7	);
INSERT INTO pokemon_type VALUES(	160	,	111	,	1	);
INSERT INTO pokemon_type VALUES(	161	,	112	,	7	);
INSERT INTO pokemon_type VALUES(	162	,	112	,	1	);
INSERT INTO pokemon_type VALUES(	163	,	113	,	11	);
INSERT INTO pokemon_type VALUES(	164	,	114	,	4	);
INSERT INTO pokemon_type VALUES(	165	,	115	,	11	);
INSERT INTO pokemon_type VALUES(	166	,	116	,	15	);
INSERT INTO pokemon_type VALUES(	167	,	117	,	15	);
INSERT INTO pokemon_type VALUES(	168	,	118	,	15	);
INSERT INTO pokemon_type VALUES(	169	,	119	,	15	);
INSERT INTO pokemon_type VALUES(	170	,	120	,	15	);
INSERT INTO pokemon_type VALUES(	171	,	121	,	15	);
INSERT INTO pokemon_type VALUES(	172	,	121	,	2	);
INSERT INTO pokemon_type VALUES(	173	,	122	,	2	);
INSERT INTO pokemon_type VALUES(	174	,	123	,	16	);
INSERT INTO pokemon_type VALUES(	175	,	123	,	13	);
INSERT INTO pokemon_type VALUES(	176	,	124	,	6	);
INSERT INTO pokemon_type VALUES(	177	,	124	,	2	);
INSERT INTO pokemon_type VALUES(	178	,	125	,	8	);
INSERT INTO pokemon_type VALUES(	179	,	126	,	14	);
INSERT INTO pokemon_type VALUES(	180	,	127	,	16	);
INSERT INTO pokemon_type VALUES(	181	,	128	,	11	);
INSERT INTO pokemon_type VALUES(	182	,	129	,	15	);
INSERT INTO pokemon_type VALUES(	183	,	130	,	15	);
INSERT INTO pokemon_type VALUES(	184	,	130	,	13	);
INSERT INTO pokemon_type VALUES(	185	,	131	,	15	);
INSERT INTO pokemon_type VALUES(	186	,	131	,	6	);
INSERT INTO pokemon_type VALUES(	187	,	132	,	11	);
INSERT INTO pokemon_type VALUES(	188	,	133	,	11	);
INSERT INTO pokemon_type VALUES(	189	,	134	,	15	);
INSERT INTO pokemon_type VALUES(	190	,	135	,	8	);
INSERT INTO pokemon_type VALUES(	191	,	136	,	14	);
INSERT INTO pokemon_type VALUES(	192	,	137	,	11	);
INSERT INTO pokemon_type VALUES(	193	,	138	,	1	);
INSERT INTO pokemon_type VALUES(	194	,	138	,	15	);
INSERT INTO pokemon_type VALUES(	195	,	139	,	1	);
INSERT INTO pokemon_type VALUES(	196	,	139	,	15	);
INSERT INTO pokemon_type VALUES(	197	,	140	,	1	);
INSERT INTO pokemon_type VALUES(	198	,	140	,	15	);
INSERT INTO pokemon_type VALUES(	199	,	141	,	1	);
INSERT INTO pokemon_type VALUES(	200	,	141	,	15	);
INSERT INTO pokemon_type VALUES(	201	,	142	,	1	);
INSERT INTO pokemon_type VALUES(	202	,	142	,	13	);
INSERT INTO pokemon_type VALUES(	203	,	143	,	11	);
INSERT INTO pokemon_type VALUES(	204	,	144	,	6	);
INSERT INTO pokemon_type VALUES(	205	,	144	,	13	);
INSERT INTO pokemon_type VALUES(	206	,	145	,	8	);
INSERT INTO pokemon_type VALUES(	207	,	145	,	13	);
INSERT INTO pokemon_type VALUES(	208	,	146	,	14	);
INSERT INTO pokemon_type VALUES(	209	,	146	,	13	);
INSERT INTO pokemon_type VALUES(	210	,	147	,	10	);
INSERT INTO pokemon_type VALUES(	211	,	148	,	10	);
INSERT INTO pokemon_type VALUES(	212	,	149	,	10	);
INSERT INTO pokemon_type VALUES(	213	,	149	,	13	);
INSERT INTO pokemon_type VALUES(	214	,	150	,	2	);
INSERT INTO pokemon_type VALUES(	215	,	151	,	2	);


COMMIT;



--ポケモン特性データ
INSERT INTO pokemon_property VALUES(

INSERT INTO  pokemon_property VALUES(	1	,	1	,	18	);
INSERT INTO  pokemon_property VALUES(	2	,	2	,	18	);
INSERT INTO  pokemon_property VALUES(	3	,	3	,	18	);
INSERT INTO  pokemon_property VALUES(	4	,	4	,	50	);
INSERT INTO  pokemon_property VALUES(	5	,	5	,	50	);
INSERT INTO  pokemon_property VALUES(	6	,	6	,	50	);
INSERT INTO  pokemon_property VALUES(	7	,	7	,	10	);
INSERT INTO  pokemon_property VALUES(	8	,	8	,	10	);
INSERT INTO  pokemon_property VALUES(	9	,	9	,	10	);
INSERT INTO  pokemon_property VALUES(	10	,	10	,	55	);
INSERT INTO  pokemon_property VALUES(	11	,	11	,	24	);
INSERT INTO  pokemon_property VALUES(	12	,	12	,	37	);
INSERT INTO  pokemon_property VALUES(	13	,	13	,	55	);
INSERT INTO  pokemon_property VALUES(	14	,	14	,	24	);
INSERT INTO  pokemon_property VALUES(	15	,	15	,	47	);
INSERT INTO  pokemon_property VALUES(	16	,	16	,	21	);
INSERT INTO  pokemon_property VALUES(	17	,	17	,	21	);
INSERT INTO  pokemon_property VALUES(	18	,	18	,	21	);
INSERT INTO  pokemon_property VALUES(	19	,	19	,	31	);
INSERT INTO  pokemon_property VALUES(	20	,	19	,	11	);
INSERT INTO  pokemon_property VALUES(	21	,	20	,	31	);
INSERT INTO  pokemon_property VALUES(	22	,	20	,	11	);
INSERT INTO  pokemon_property VALUES(	23	,	21	,	21	);
INSERT INTO  pokemon_property VALUES(	24	,	22	,	21	);
INSERT INTO  pokemon_property VALUES(	25	,	23	,	4	);
INSERT INTO  pokemon_property VALUES(	26	,	23	,	24	);
INSERT INTO  pokemon_property VALUES(	27	,	24	,	4	);
INSERT INTO  pokemon_property VALUES(	28	,	24	,	24	);
INSERT INTO  pokemon_property VALUES(	29	,	25	,	23	);
INSERT INTO  pokemon_property VALUES(	30	,	26	,	23	);
INSERT INTO  pokemon_property VALUES(	31	,	27	,	20	);
INSERT INTO  pokemon_property VALUES(	32	,	28	,	20	);
INSERT INTO  pokemon_property VALUES(	33	,	29	,	28	);
INSERT INTO  pokemon_property VALUES(	34	,	30	,	28	);
INSERT INTO  pokemon_property VALUES(	35	,	31	,	28	);
INSERT INTO  pokemon_property VALUES(	36	,	32	,	28	);
INSERT INTO  pokemon_property VALUES(	37	,	33	,	28	);
INSERT INTO  pokemon_property VALUES(	38	,	34	,	28	);
INSERT INTO  pokemon_property VALUES(	39	,	35	,	48	);
INSERT INTO  pokemon_property VALUES(	40	,	36	,	48	);
INSERT INTO  pokemon_property VALUES(	41	,	37	,	52	);
INSERT INTO  pokemon_property VALUES(	42	,	38	,	52	);
INSERT INTO  pokemon_property VALUES(	43	,	39	,	48	);
INSERT INTO  pokemon_property VALUES(	44	,	40	,	48	);
INSERT INTO  pokemon_property VALUES(	45	,	41	,	22	);
INSERT INTO  pokemon_property VALUES(	46	,	42	,	22	);
INSERT INTO  pokemon_property VALUES(	47	,	43	,	54	);
INSERT INTO  pokemon_property VALUES(	48	,	44	,	54	);
INSERT INTO  pokemon_property VALUES(	49	,	45	,	54	);
INSERT INTO  pokemon_property VALUES(	50	,	46	,	43	);
INSERT INTO  pokemon_property VALUES(	51	,	47	,	43	);
INSERT INTO  pokemon_property VALUES(	52	,	48	,	37	);
INSERT INTO  pokemon_property VALUES(	53	,	49	,	55	);
INSERT INTO  pokemon_property VALUES(	54	,	50	,	20	);
INSERT INTO  pokemon_property VALUES(	55	,	50	,	3	);
INSERT INTO  pokemon_property VALUES(	56	,	51	,	20	);
INSERT INTO  pokemon_property VALUES(	57	,	51	,	3	);
INSERT INTO  pokemon_property VALUES(	58	,	52	,	51	);
INSERT INTO  pokemon_property VALUES(	59	,	53	,	15	);
INSERT INTO  pokemon_property VALUES(	60	,	54	,	14	);
INSERT INTO  pokemon_property VALUES(	61	,	54	,	33	);
INSERT INTO  pokemon_property VALUES(	62	,	55	,	14	);
INSERT INTO  pokemon_property VALUES(	63	,	55	,	33	);
INSERT INTO  pokemon_property VALUES(	64	,	56	,	53	);
INSERT INTO  pokemon_property VALUES(	65	,	57	,	53	);
INSERT INTO  pokemon_property VALUES(	66	,	58	,	4	);
INSERT INTO  pokemon_property VALUES(	67	,	58	,	52	);
INSERT INTO  pokemon_property VALUES(	68	,	59	,	4	);
INSERT INTO  pokemon_property VALUES(	69	,	59	,	52	);
INSERT INTO  pokemon_property VALUES(	70	,	60	,	26	);
INSERT INTO  pokemon_property VALUES(	71	,	60	,	14	);
INSERT INTO  pokemon_property VALUES(	72	,	61	,	26	);
INSERT INTO  pokemon_property VALUES(	73	,	61	,	14	);
INSERT INTO  pokemon_property VALUES(	74	,	62	,	26	);
INSERT INTO  pokemon_property VALUES(	75	,	62	,	14	);
INSERT INTO  pokemon_property VALUES(	76	,	63	,	17	);
INSERT INTO  pokemon_property VALUES(	77	,	63	,	22	);
INSERT INTO  pokemon_property VALUES(	78	,	64	,	17	);
INSERT INTO  pokemon_property VALUES(	79	,	64	,	22	);
INSERT INTO  pokemon_property VALUES(	80	,	65	,	17	);
INSERT INTO  pokemon_property VALUES(	81	,	65	,	22	);
INSERT INTO  pokemon_property VALUES(	82	,	66	,	11	);
INSERT INTO  pokemon_property VALUES(	83	,	67	,	11	);
INSERT INTO  pokemon_property VALUES(	84	,	68	,	11	);
INSERT INTO  pokemon_property VALUES(	85	,	69	,	54	);
INSERT INTO  pokemon_property VALUES(	86	,	70	,	54	);
INSERT INTO  pokemon_property VALUES(	87	,	71	,	54	);
INSERT INTO  pokemon_property VALUES(	88	,	72	,	9	);
INSERT INTO  pokemon_property VALUES(	89	,	72	,	41	);
INSERT INTO  pokemon_property VALUES(	90	,	73	,	9	);
INSERT INTO  pokemon_property VALUES(	91	,	73	,	41	);
INSERT INTO  pokemon_property VALUES(	92	,	74	,	5	);
INSERT INTO  pokemon_property VALUES(	93	,	74	,	8	);
INSERT INTO  pokemon_property VALUES(	94	,	75	,	5	);
INSERT INTO  pokemon_property VALUES(	95	,	75	,	8	);
INSERT INTO  pokemon_property VALUES(	96	,	76	,	5	);
INSERT INTO  pokemon_property VALUES(	97	,	76	,	8	);
INSERT INTO  pokemon_property VALUES(	98	,	77	,	31	);
INSERT INTO  pokemon_property VALUES(	99	,	77	,	52	);
INSERT INTO  pokemon_property VALUES(	100	,	78	,	31	);
INSERT INTO  pokemon_property VALUES(	101	,	78	,	52	);
INSERT INTO  pokemon_property VALUES(	102	,	79	,	30	);
INSERT INTO  pokemon_property VALUES(	103	,	79	,	45	);
INSERT INTO  pokemon_property VALUES(	104	,	80	,	30	);
INSERT INTO  pokemon_property VALUES(	105	,	80	,	45	);
INSERT INTO  pokemon_property VALUES(	106	,	81	,	16	);
INSERT INTO  pokemon_property VALUES(	107	,	81	,	8	);
INSERT INTO  pokemon_property VALUES(	108	,	82	,	16	);
INSERT INTO  pokemon_property VALUES(	109	,	82	,	8	);
INSERT INTO  pokemon_property VALUES(	110	,	83	,	21	);
INSERT INTO  pokemon_property VALUES(	111	,	83	,	22	);
INSERT INTO  pokemon_property VALUES(	112	,	84	,	31	);
INSERT INTO  pokemon_property VALUES(	113	,	84	,	35	);
INSERT INTO  pokemon_property VALUES(	114	,	85	,	31	);
INSERT INTO  pokemon_property VALUES(	115	,	85	,	35	);
INSERT INTO  pokemon_property VALUES(	116	,	86	,	2	);
INSERT INTO  pokemon_property VALUES(	117	,	87	,	2	);
INSERT INTO  pokemon_property VALUES(	118	,	88	,	1	);
INSERT INTO  pokemon_property VALUES(	119	,	88	,	32	);
INSERT INTO  pokemon_property VALUES(	120	,	89	,	1	);
INSERT INTO  pokemon_property VALUES(	121	,	89	,	32	);
INSERT INTO  pokemon_property VALUES(	122	,	90	,	12	);
INSERT INTO  pokemon_property VALUES(	123	,	91	,	12	);
INSERT INTO  pokemon_property VALUES(	124	,	92	,	39	);
INSERT INTO  pokemon_property VALUES(	125	,	93	,	39	);
INSERT INTO  pokemon_property VALUES(	126	,	94	,	39	);
INSERT INTO  pokemon_property VALUES(	127	,	95	,	5	);
INSERT INTO  pokemon_property VALUES(	128	,	95	,	8	);
INSERT INTO  pokemon_property VALUES(	129	,	96	,	38	);
INSERT INTO  pokemon_property VALUES(	130	,	97	,	38	);
INSERT INTO  pokemon_property VALUES(	131	,	98	,	6	);
INSERT INTO  pokemon_property VALUES(	132	,	98	,	12	);
INSERT INTO  pokemon_property VALUES(	133	,	99	,	6	);
INSERT INTO  pokemon_property VALUES(	134	,	99	,	12	);
INSERT INTO  pokemon_property VALUES(	135	,	100	,	42	);
INSERT INTO  pokemon_property VALUES(	136	,	100	,	23	);
INSERT INTO  pokemon_property VALUES(	137	,	101	,	42	);
INSERT INTO  pokemon_property VALUES(	138	,	101	,	23	);
INSERT INTO  pokemon_property VALUES(	139	,	102	,	54	);
INSERT INTO  pokemon_property VALUES(	140	,	103	,	54	);
INSERT INTO  pokemon_property VALUES(	141	,	104	,	5	);
INSERT INTO  pokemon_property VALUES(	142	,	104	,	36	);
INSERT INTO  pokemon_property VALUES(	143	,	105	,	5	);
INSERT INTO  pokemon_property VALUES(	144	,	105	,	36	);
INSERT INTO  pokemon_property VALUES(	145	,	106	,	15	);
INSERT INTO  pokemon_property VALUES(	146	,	107	,	21	);
INSERT INTO  pokemon_property VALUES(	147	,	108	,	45	);
INSERT INTO  pokemon_property VALUES(	148	,	108	,	30	);
INSERT INTO  pokemon_property VALUES(	149	,	109	,	39	);
INSERT INTO  pokemon_property VALUES(	150	,	110	,	39	);
INSERT INTO  pokemon_property VALUES(	151	,	111	,	36	);
INSERT INTO  pokemon_property VALUES(	152	,	111	,	5	);
INSERT INTO  pokemon_property VALUES(	153	,	112	,	36	);
INSERT INTO  pokemon_property VALUES(	154	,	112	,	5	);
INSERT INTO  pokemon_property VALUES(	155	,	113	,	13	);
INSERT INTO  pokemon_property VALUES(	156	,	113	,	27	);
INSERT INTO  pokemon_property VALUES(	157	,	114	,	54	);
INSERT INTO  pokemon_property VALUES(	158	,	115	,	35	);
INSERT INTO  pokemon_property VALUES(	159	,	116	,	19	);
INSERT INTO  pokemon_property VALUES(	160	,	117	,	28	);
INSERT INTO  pokemon_property VALUES(	161	,	118	,	19	);
INSERT INTO  pokemon_property VALUES(	162	,	118	,	46	);
INSERT INTO  pokemon_property VALUES(	163	,	119	,	19	);
INSERT INTO  pokemon_property VALUES(	164	,	119	,	46	);
INSERT INTO  pokemon_property VALUES(	165	,	120	,	34	);
INSERT INTO  pokemon_property VALUES(	166	,	120	,	13	);
INSERT INTO  pokemon_property VALUES(	167	,	121	,	34	);
INSERT INTO  pokemon_property VALUES(	168	,	121	,	13	);
INSERT INTO  pokemon_property VALUES(	169	,	122	,	42	);
INSERT INTO  pokemon_property VALUES(	170	,	123	,	47	);
INSERT INTO  pokemon_property VALUES(	171	,	124	,	30	);
INSERT INTO  pokemon_property VALUES(	172	,	125	,	23	);
INSERT INTO  pokemon_property VALUES(	173	,	126	,	44	);
INSERT INTO  pokemon_property VALUES(	174	,	127	,	6	);
INSERT INTO  pokemon_property VALUES(	175	,	128	,	4	);
INSERT INTO  pokemon_property VALUES(	176	,	129	,	19	);
INSERT INTO  pokemon_property VALUES(	177	,	130	,	4	);
INSERT INTO  pokemon_property VALUES(	178	,	131	,	26	);
INSERT INTO  pokemon_property VALUES(	179	,	131	,	12	);
INSERT INTO  pokemon_property VALUES(	180	,	132	,	15	);
INSERT INTO  pokemon_property VALUES(	181	,	133	,	31	);
INSERT INTO  pokemon_property VALUES(	182	,	134	,	26	);
INSERT INTO  pokemon_property VALUES(	183	,	135	,	25	);
INSERT INTO  pokemon_property VALUES(	184	,	136	,	52	);
INSERT INTO  pokemon_property VALUES(	185	,	137	,	29	);
INSERT INTO  pokemon_property VALUES(	186	,	138	,	19	);
INSERT INTO  pokemon_property VALUES(	187	,	138	,	12	);
INSERT INTO  pokemon_property VALUES(	188	,	139	,	19	);
INSERT INTO  pokemon_property VALUES(	189	,	139	,	12	);
INSERT INTO  pokemon_property VALUES(	190	,	140	,	19	);
INSERT INTO  pokemon_property VALUES(	191	,	140	,	7	);
INSERT INTO  pokemon_property VALUES(	192	,	141	,	19	);
INSERT INTO  pokemon_property VALUES(	193	,	141	,	7	);
INSERT INTO  pokemon_property VALUES(	194	,	142	,	5	);
INSERT INTO  pokemon_property VALUES(	195	,	142	,	40	);
INSERT INTO  pokemon_property VALUES(	196	,	143	,	49	);
INSERT INTO  pokemon_property VALUES(	197	,	143	,	2	);
INSERT INTO  pokemon_property VALUES(	198	,	144	,	40	);
INSERT INTO  pokemon_property VALUES(	199	,	145	,	40	);
INSERT INTO  pokemon_property VALUES(	200	,	146	,	40	);
INSERT INTO  pokemon_property VALUES(	201	,	147	,	24	);
INSERT INTO  pokemon_property VALUES(	202	,	148	,	24	);
INSERT INTO  pokemon_property VALUES(	203	,	149	,	22	);
INSERT INTO  pokemon_property VALUES(	204	,	150	,	40	);
INSERT INTO  pokemon_property VALUES(	205	,	151	,	17	);


COMMIT;



--ポケモンたまごグループデータ
INSERT INTO  pokemon_eggGroup VALUES(	1	,	1	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	2	,	1	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	3	,	2	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	4	,	2	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	5	,	3	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	6	,	3	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	7	,	4	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	8	,	4	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	9	,	5	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	10	,	5	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	11	,	6	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	12	,	6	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	13	,	7	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	14	,	7	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	15	,	8	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	16	,	8	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	17	,	9	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	18	,	9	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	19	,	10	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	20	,	11	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	21	,	12	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	22	,	13	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	23	,	14	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	24	,	15	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	25	,	16	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	26	,	17	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	27	,	18	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	28	,	19	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	29	,	20	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	30	,	21	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	31	,	22	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	32	,	23	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	33	,	23	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	34	,	24	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	35	,	24	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	36	,	25	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	37	,	25	,	14	);
INSERT INTO  pokemon_eggGroup VALUES(	38	,	26	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	39	,	26	,	14	);
INSERT INTO  pokemon_eggGroup VALUES(	40	,	27	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	41	,	28	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	42	,	29	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	43	,	29	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	44	,	30	,	11	);
INSERT INTO  pokemon_eggGroup VALUES(	45	,	31	,	11	);
INSERT INTO  pokemon_eggGroup VALUES(	46	,	32	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	47	,	32	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	48	,	33	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	49	,	33	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	50	,	34	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	51	,	34	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	52	,	35	,	14	);
INSERT INTO  pokemon_eggGroup VALUES(	53	,	36	,	14	);
INSERT INTO  pokemon_eggGroup VALUES(	54	,	37	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	55	,	38	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	56	,	39	,	14	);
INSERT INTO  pokemon_eggGroup VALUES(	57	,	40	,	14	);
INSERT INTO  pokemon_eggGroup VALUES(	58	,	41	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	59	,	42	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	60	,	43	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	61	,	44	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	62	,	45	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	63	,	46	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	64	,	46	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	65	,	47	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	66	,	47	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	67	,	48	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	68	,	49	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	69	,	50	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	70	,	51	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	71	,	52	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	72	,	53	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	73	,	54	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	74	,	54	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	75	,	55	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	76	,	55	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	77	,	56	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	78	,	57	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	79	,	58	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	80	,	59	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	81	,	60	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	82	,	61	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	83	,	62	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	84	,	63	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	85	,	64	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	86	,	65	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	87	,	66	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	88	,	67	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	89	,	68	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	90	,	69	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	91	,	70	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	92	,	71	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	93	,	72	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	94	,	73	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	95	,	74	,	2	);
INSERT INTO  pokemon_eggGroup VALUES(	96	,	75	,	2	);
INSERT INTO  pokemon_eggGroup VALUES(	97	,	76	,	2	);
INSERT INTO  pokemon_eggGroup VALUES(	98	,	77	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	99	,	78	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	100	,	79	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	101	,	79	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	102	,	80	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	103	,	80	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	104	,	81	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	105	,	82	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	106	,	83	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	107	,	83	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	108	,	84	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	109	,	85	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	110	,	86	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	111	,	86	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	112	,	87	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	113	,	87	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	114	,	88	,	10	);
INSERT INTO  pokemon_eggGroup VALUES(	115	,	89	,	10	);
INSERT INTO  pokemon_eggGroup VALUES(	116	,	90	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	117	,	91	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	118	,	92	,	10	);
INSERT INTO  pokemon_eggGroup VALUES(	119	,	93	,	10	);
INSERT INTO  pokemon_eggGroup VALUES(	120	,	94	,	10	);
INSERT INTO  pokemon_eggGroup VALUES(	121	,	95	,	2	);
INSERT INTO  pokemon_eggGroup VALUES(	122	,	96	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	123	,	97	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	124	,	98	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	125	,	99	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	126	,	100	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	127	,	101	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	128	,	102	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	129	,	103	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	130	,	104	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	131	,	105	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	132	,	106	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	133	,	107	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	134	,	108	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	135	,	109	,	10	);
INSERT INTO  pokemon_eggGroup VALUES(	136	,	110	,	10	);
INSERT INTO  pokemon_eggGroup VALUES(	137	,	111	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	138	,	111	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	139	,	112	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	140	,	112	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	141	,	113	,	14	);
INSERT INTO  pokemon_eggGroup VALUES(	142	,	114	,	3	);
INSERT INTO  pokemon_eggGroup VALUES(	143	,	115	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	144	,	116	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	145	,	116	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	146	,	117	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	147	,	117	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	148	,	118	,	5	);
INSERT INTO  pokemon_eggGroup VALUES(	149	,	119	,	5	);
INSERT INTO  pokemon_eggGroup VALUES(	150	,	120	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	151	,	121	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	152	,	122	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	153	,	123	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	154	,	124	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	155	,	125	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	156	,	126	,	9	);
INSERT INTO  pokemon_eggGroup VALUES(	157	,	127	,	12	);
INSERT INTO  pokemon_eggGroup VALUES(	158	,	128	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	159	,	129	,	5	);
INSERT INTO  pokemon_eggGroup VALUES(	160	,	129	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	161	,	130	,	5	);
INSERT INTO  pokemon_eggGroup VALUES(	162	,	130	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	163	,	131	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	164	,	131	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	165	,	132	,	13	);
INSERT INTO  pokemon_eggGroup VALUES(	166	,	133	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	167	,	134	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	168	,	135	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	169	,	136	,	15	);
INSERT INTO  pokemon_eggGroup VALUES(	170	,	137	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	171	,	138	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	172	,	138	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	173	,	139	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	174	,	139	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	175	,	140	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	176	,	140	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	177	,	141	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	178	,	141	,	6	);
INSERT INTO  pokemon_eggGroup VALUES(	179	,	142	,	8	);
INSERT INTO  pokemon_eggGroup VALUES(	180	,	143	,	1	);
INSERT INTO  pokemon_eggGroup VALUES(	181	,	144	,	11	);
INSERT INTO  pokemon_eggGroup VALUES(	182	,	145	,	11	);
INSERT INTO  pokemon_eggGroup VALUES(	183	,	146	,	11	);
INSERT INTO  pokemon_eggGroup VALUES(	184	,	147	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	185	,	147	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	186	,	148	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	187	,	148	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	188	,	149	,	4	);
INSERT INTO  pokemon_eggGroup VALUES(	189	,	149	,	7	);
INSERT INTO  pokemon_eggGroup VALUES(	190	,	150	,	11	);
INSERT INTO  pokemon_eggGroup VALUES(	191	,	151	,	11	);

COMMIT;



--ポケモン進化データ
INSERT INTO pokemon_evolution VALUES(1,NULL ,2,'LV16');
INSERT INTO pokemon_evolution VALUES(2,1,3,'LV32');
INSERT INTO pokemon_evolution VALUES(3,2,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(4,NULL ,5,'LV16');
INSERT INTO pokemon_evolution VALUES(5,4,6,'LV36');
INSERT INTO pokemon_evolution VALUES(6,5,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(7,NULL ,8,'LV16');
INSERT INTO pokemon_evolution VALUES(8,7,9,'LV36');
INSERT INTO pokemon_evolution VALUES(9,8,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(10,NULL ,11,'LV7');
INSERT INTO pokemon_evolution VALUES(11,10,12,'LV10');
INSERT INTO pokemon_evolution VALUES(12,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(13,NULL ,14,'LV7');
INSERT INTO pokemon_evolution VALUES(14,13,15,'LV10');
INSERT INTO pokemon_evolution VALUES(15,14,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(16,NULL ,17,'LV18');
INSERT INTO pokemon_evolution VALUES(17,16,18,'LV36');
INSERT INTO pokemon_evolution VALUES(18,17,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(19,NULL ,20,'LV20');
INSERT INTO pokemon_evolution VALUES(20,19,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(21,NULL ,22,'LV20');
INSERT INTO pokemon_evolution VALUES(22,21,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(23,NULL ,24,'LV22');
INSERT INTO pokemon_evolution VALUES(24,23,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(25,NULL ,26,'かみなりのいし');
INSERT INTO pokemon_evolution VALUES(26,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(27,NULL ,28,'LV22');
INSERT INTO pokemon_evolution VALUES(28,27,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(29,NULL ,30,'LV16');
INSERT INTO pokemon_evolution VALUES(30,29,31,'つきのいし');
INSERT INTO pokemon_evolution VALUES(31,30,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(32,NULL ,33,'LV16');
INSERT INTO pokemon_evolution VALUES(33,32,34,'つきのいし');
INSERT INTO pokemon_evolution VALUES(34,33,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(35,NULL ,36,'つきのいし');
INSERT INTO pokemon_evolution VALUES(36,35,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(37,NULL ,38,'ほのおのいし');
INSERT INTO pokemon_evolution VALUES(38,37,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(39,NULL ,40,'つきのいし');
INSERT INTO pokemon_evolution VALUES(40,39,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(41,NULL ,42,'LV22');
INSERT INTO pokemon_evolution VALUES(42,41,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(43,NULL ,44,'LV21');
INSERT INTO pokemon_evolution VALUES(44,43,45,'リーフのいし');
INSERT INTO pokemon_evolution VALUES(45,44,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(46,NULL ,47,'LV24');
INSERT INTO pokemon_evolution VALUES(47,46,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(48,NULL ,49,'LV31');
INSERT INTO pokemon_evolution VALUES(49,48,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(50,NULL ,51,'LV26');
INSERT INTO pokemon_evolution VALUES(51,50,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(52,NULL ,53,'LV28');
INSERT INTO pokemon_evolution VALUES(53,52,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(54,NULL ,55,'LV33');
INSERT INTO pokemon_evolution VALUES(55,54,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(56,NULL ,57,'LV28');
INSERT INTO pokemon_evolution VALUES(57,56,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(58,NULL ,59,'ほのおのいし');
INSERT INTO pokemon_evolution VALUES(59,58,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(60,NULL ,61,'LV25');
INSERT INTO pokemon_evolution VALUES(61,60,62,'みずのいし');
INSERT INTO pokemon_evolution VALUES(62,61,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(63,NULL ,64,'LV16');
INSERT INTO pokemon_evolution VALUES(64,63,65,'通信交換');
INSERT INTO pokemon_evolution VALUES(65,64,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(66,NULL ,67,'LV28');
INSERT INTO pokemon_evolution VALUES(67,66,68,'通信交換');
INSERT INTO pokemon_evolution VALUES(68,67,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(69,NULL ,70,'LV21');
INSERT INTO pokemon_evolution VALUES(70,69,71,'リーフのいし');
INSERT INTO pokemon_evolution VALUES(71,71,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(72,NULL ,73,'LV30');
INSERT INTO pokemon_evolution VALUES(73,72,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(74,NULL ,75,'LV25');
INSERT INTO pokemon_evolution VALUES(75,74,76,'通信交換');
INSERT INTO pokemon_evolution VALUES(76,75,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(77,NULL ,78,'LV40');
INSERT INTO pokemon_evolution VALUES(78,77,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(79,NULL ,80,'LV37');
INSERT INTO pokemon_evolution VALUES(80,79,199,NULL);
INSERT INTO pokemon_evolution VALUES(81,NULL ,82,'LV30');
INSERT INTO pokemon_evolution VALUES(82,81,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(83,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(84,NULL ,85,'LV31');
INSERT INTO pokemon_evolution VALUES(85,84,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(86,NULL ,87,'LV34');
INSERT INTO pokemon_evolution VALUES(87,86,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(88,NULL ,89,'LV38');
INSERT INTO pokemon_evolution VALUES(89,88,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(90,NULL ,91,'みずのいし');
INSERT INTO pokemon_evolution VALUES(91,90,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(92,NULL ,93,'LV25');
INSERT INTO pokemon_evolution VALUES(93,92,94,'通信交換');
INSERT INTO pokemon_evolution VALUES(94,93,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(95,NULL ,208,'ﾒﾀﾙｺｰﾄ+通信交換');
INSERT INTO pokemon_evolution VALUES(96,NULL ,97,'LV26');
INSERT INTO pokemon_evolution VALUES(97,96,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(98,NULL ,99,'LV28');
INSERT INTO pokemon_evolution VALUES(99,98,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(100,NULL ,101,'LV30');
INSERT INTO pokemon_evolution VALUES(101,100,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(102,NULL ,103,'リーフのいし');
INSERT INTO pokemon_evolution VALUES(103,102,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(104,NULL ,105,'LV28');
INSERT INTO pokemon_evolution VALUES(105,104,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(106,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(107,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(108,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(109,NULL ,110,'LV35');
INSERT INTO pokemon_evolution VALUES(110,109,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(111,NULL ,112,'LV42');
INSERT INTO pokemon_evolution VALUES(112,111,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(113,NULL ,242,'なつくと進化');
INSERT INTO pokemon_evolution VALUES(114,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(115,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(116,NULL ,117,'LV3');
INSERT INTO pokemon_evolution VALUES(117,116,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(118,NULL ,119,'LV33');
INSERT INTO pokemon_evolution VALUES(119,118,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(120,NULL ,121,'みずのいし');
INSERT INTO pokemon_evolution VALUES(121,120,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(122,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(123,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(124,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(125,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(126,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(127,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(128,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(129,NULL ,130,'LV20');
INSERT INTO pokemon_evolution VALUES(130,129,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(131,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(132,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(133,NULL ,134,'みずのいし');
INSERT INTO pokemon_evolution VALUES(134,133,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(135,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(136,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(137,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(138,NULL ,139,'LV40');
INSERT INTO pokemon_evolution VALUES(139,138,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(140,NULL ,141,'LV40');
INSERT INTO pokemon_evolution VALUES(141,140,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(142,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(143,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(144,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(145,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(146,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(147,NULL ,148,'LV30');
INSERT INTO pokemon_evolution VALUES(148,147,149,'LV55');
INSERT INTO pokemon_evolution VALUES(149,148,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(150,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(151,NULL ,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(199,80,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(208,95,NULL,NULL);
INSERT INTO pokemon_evolution VALUES(242,113,NULL,NULL);

commit;


