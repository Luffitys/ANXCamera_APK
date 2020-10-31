.class public Lmiui/date/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Lmiui/date/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final AD:I = 0x1

.field public static final AFTERNOON:I = 0x4

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x11

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final AUTUMN_BEGINS:I = 0xf

.field public static final AUTUMN_EQUINOX:I = 0x12

.field public static final BC:I = 0x0

.field public static final CHICKEN:I = 0x9

.field public static final CHINESE_ERA_DAY:I = 0xb

.field public static final CHINESE_ERA_HOUR:I = 0x13

.field public static final CHINESE_ERA_MONTH:I = 0x7

.field public static final CHINESE_ERA_YEAR:I = 0x4

.field public static final CHINESE_MONTH:I = 0x6

.field public static final CHINESE_MONTH_IS_LEAP:I = 0x8

.field public static final CHINESE_YEAR:I = 0x2

.field private static final CHINESE_YEAR_INFO:[I

.field public static final CHINESE_YEAR_SYMBOL_ANIMAL:I = 0x3

.field public static final CLEAR_AND_BRIGHT:I = 0x7

.field public static final COLD_DEWS:I = 0x13

.field public static final COW:I = 0x1

.field private static final DAYS_19000131_TO_19700101:I = -0x63c1

.field private static final DAYS_IN_MONTH:[B

.field private static final DAYS_IN_YEAR:[I

.field private static final DAY_CHINESE_YEAR_FROM_19000101:[I

.field public static final DAY_OF_CHINESE_MONTH:I = 0xa

.field public static final DAY_OF_CHINESE_YEAR:I = 0xd

.field public static final DAY_OF_MONTH:I = 0x9

.field public static final DAY_OF_WEEK:I = 0xe

.field public static final DAY_OF_YEAR:I = 0xc

.field public static final DECEMBER:I = 0xb

.field public static final DETAIL_AM_PM:I = 0x10

.field public static final DOG:I = 0xa

.field public static final DRAGON:I = 0x4

.field public static final DST_OFFSET:I = 0x18

.field public static final EARLY_MORNING:I = 0x1

.field public static final ERA:I = 0x0

.field public static final EVENING:I = 0x5

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x19

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field private static final FORMAT_CHARACTERS:[I

.field public static final FRIDAY:I = 0x6

.field public static final GRAIN_BUDS:I = 0xa

.field public static final GRAIN_IN_EAR:I = 0xb

.field public static final GRAIN_RAIN:I = 0x8

.field public static final GREAT_COLD:I = 0x2

.field public static final GREAT_HEAT:I = 0xe

.field public static final HEAVY_SNOW:I = 0x17

.field public static final HOAR_FROST_FALLS:I = 0x14

.field public static final HORSE:I = 0x6

.field public static final HOUR:I = 0x12

.field public static final INSECTS_AWAKEN:I = 0x5

.field public static final IS_CHINESE_LEAP_MONTH:I = 0x1

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LIGHT_SNOW:I = 0x16

.field public static final MARCH:I = 0x2

.field private static final MAX_CHINESE_CALENDAR_MILLISECOND:J = 0x3c314a71400L

.field private static final MAX_CHINESE_YEAR:I = 0x834

.field public static final MAY:I = 0x4

.field public static final MIDNIGHT:I = 0x0

.field public static final MILLISECOND:I = 0x16

.field public static final MILLISECOND_OF_DAY:I = 0x5265c00

.field public static final MILLISECOND_OF_HOUR:I = 0x36ee80

.field public static final MILLISECOND_OF_MINUTE:I = 0xea60

.field public static final MILLISECOND_OF_SECOND:I = 0x3e8

.field public static final MINUTE:I = 0x14

.field private static final MIN_CHINESE_CALENDAR_MILLISECOND:J = -0x201b77f5c00L

.field private static final MIN_CHINESE_YEAR:I = 0x76c

.field public static final MONDAY:I = 0x2

.field public static final MONKEY:I = 0x8

.field public static final MONTH:I = 0x5

.field public static final MORNING:I = 0x2

.field public static final MOUSE:I = 0x0

.field public static final NIGHT:I = 0x6

.field public static final NOON:I = 0x3

.field public static final NOT_CHINESE_LEAP_MONTH:I = 0x0

.field public static final NOVEMBER:I = 0xa

.field public static final NO_SOLAR_TERM:I = 0x0

.field public static final OCTOBER:I = 0x9

.field public static final PIG:I = 0xb

.field public static final PM:I = 0x1

.field public static final RABBIT:I = 0x3

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0x15

.field public static final SEPTEMBER:I = 0x8

.field public static final SHEEP:I = 0x7

.field public static final SLIGHT_COLD:I = 0x1

.field public static final SLIGHT_HEAT:I = 0xd

.field public static final SNAKE:I = 0x5

.field public static final SOLAR_TERM:I = 0xf

.field private static final SOLAR_TERM_BASE:[I

.field private static final SOLAR_TERM_INDEX:[B

.field private static final SOLAR_TERM_OS:[B

.field public static final SPRING_BEGINS:I = 0x3

.field public static final STOPPING_THE_HEAT:I = 0x10

.field public static final SUMMER_BEGINS:I = 0x9

.field public static final SUMMER_SOLSTICE:I = 0xc

.field public static final SUNDAY:I = 0x1

.field public static final THE_RAINS:I = 0x4

.field public static final THURSDAY:I = 0x5

.field public static final TIGER:I = 0x2

.field public static final TUESDAY:I = 0x3

.field public static final VERNAL_EQUINOX:I = 0x6

.field public static final WEDNESDAY:I = 0x4

.field public static final WHITE_DEWS:I = 0x11

.field public static final WINTER_BEGINS:I = 0x15

.field public static final WINTER_SOLSTICE:I = 0x18

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0x17

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient changeYear:I

.field private transient currentYearSkew:I

.field private transient gregorianCutover:J

.field private transient julianError:I

.field private transient julianSkew:I

.field private transient lastYearSkew:I

.field private mFields:[I

.field private mMillisecond:J

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_82

    sput-object v0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    const-string v1, "ERA"

    const-string v2, "YEAR"

    const-string v3, "CHINESE_YEAR"

    const-string v4, "CHINESE_YEAR_SYMBOL_ANIMAL"

    const-string v5, "CHINESE_ERA_YEAR"

    const-string v6, "MONTH"

    const-string v7, "CHINESE_MONTH"

    const-string v8, "CHINESE_ERA_MONTH"

    const-string v9, "CHINESE_MONTH_IS_LEAP"

    const-string v10, "DAY_OF_MONTH"

    const-string v11, "DAY_OF_CHINESE_MONTH"

    const-string v12, "CHINESE_ERA_DAY"

    const-string v13, "DAY_OF_YEAR"

    const-string v14, "DAY_OF_CHINESE_YEAR"

    const-string v15, "DAY_OF_WEEK"

    const-string v16, "SOLAR_TERM"

    const-string v17, "DETAIL_AM_PM"

    const-string v18, "AM_PM"

    const-string v19, "HOUR"

    const-string v20, "CHINESE_ERA_HOUR"

    const-string v21, "MINUTE"

    const-string v22, "SECOND"

    const-string v23, "MILLISECOND"

    const-string v24, "ZONE_OFFSET"

    const-string v25, "DST_OFFSET"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_aa

    sput-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_122

    sput-object v0, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_2ba

    sput-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_450

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    nop

    const-string v0, "0123415341536789:;<9:=<>:=1>?012@015@015@015AB78CDE8CD=1FD01GH01GH01IH01IJ0KLMN;LMBEOPDQRST0RUH0RVH0RWH0RWM0XYMNZ[MB\\]PT^_ST`_WH`_WH`_WM`_WM`aYMbc[Mde]Sfe]gfh_gih_Wih_WjhaWjka[jkl[jmn]ope]qph_qrh_sth_W"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_INDEX:[B

    nop

    const-string v0, "211122112122112121222211221122122222212222222221222122222232222222222222222233223232223232222222322222112122112121222211222122222222222222222222322222112122112121222111211122122222212221222221221122122222222222222222222223222232222232222222222222112122112121122111211122122122212221222221221122122222222222222221211122112122212221222211222122222232222232222222222222112122112121111111222222112121112121111111222222111121112121111111211122112122112121122111222212111121111121111111111122112122112121122111211122112122212221222221222211111121111121111111222111111121111111111111111122112121112121111111222111111111111111111111111122111121112121111111221122122222212221222221222111011111111111111111111122111121111121111111211122112122112121122211221111011111101111111111111112111121111121111111211122112122112221222211221111011111101111111110111111111121111111111111111122112121112121122111111011111121111111111111111011111111112111111111111011111111111111111111221111011111101110111110111011011111111111111111221111011011101110111110111011011111101111111111211111001011101110111110110011011111101111111111211111001011001010111110110011011111101111111110211111001011001010111100110011011011101110111110211111001011001010011100110011001011101110111110211111001010001010011000100011001011001010111110111111001010001010011000111111111111111111111111100011001011001010111100111111001010001010000000111111000010000010000000100011001011001010011100110011001011001110111110100011001010001010011000110011001011001010111110111100000010000000000000000011001010001010011000111100000000000000000000000011001010001010000000111000000000000000000000000011001010000010000000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    return-void

    nop

    :array_82
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    :array_aa
    .array-data 4
        0x3
        -0x1
        -0x1
        0xc
        0xe
        0x1a
        0x0
        0x12
        0x13
        -0x1
        0x12
        0x5
        0x5
        0x7
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        0x1a
        -0x1
        0x4
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        -0x1
        0xe
        0x9
        0x7
        -0x1
        -0x1
        0x12
        -0x1
        -0x1
        0x12
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x1a
        -0x1
        0x1
        0x19
    .end array-data

    :array_122
    .array-data 4
        0x0
        0x180
        0x2e2
        0x445
        0x5c4
        0x726
        0x889
        0xa09
        0xb6b
        0xcce
        0xe4e
        0xfb0
        0x1130
        0x1292
        0x13f4
        0x1574
        0x16d6
        0x1839
        0x19b9
        0x1b1c
        0x1c9c
        0x1dfe
        0x1f60
        0x20e0
        0x2242
        0x23a4
        0x2525
        0x2687
        0x27ea
        0x296a
        0x2acc
        0x2c4b
        0x2dad
        0x2f10
        0x3090
        0x31f3
        0x3355
        0x34d5
        0x3637
        0x37b7
        0x3919
        0x3a7b
        0x3bfb
        0x3d5e
        0x3ec0
        0x4041
        0x41a3
        0x4305
        0x4485
        0x45e7
        0x4767
        0x48c9
        0x4a2c
        0x4bac
        0x4d0e
        0x4e71
        0x4ff1
        0x5153
        0x52d2
        0x5435
        0x5597
        0x5717
        0x587a
        0x59dc
        0x5b5c
        0x5cbf
        0x5e20
        0x5fa0
        0x6103
        0x6283
        0x63e5
        0x6548
        0x66c8
        0x682a
        0x698c
        0x6b0c
        0x6c6e
        0x6dee
        0x6f50
        0x70b3
        0x7233
        0x7396
        0x74f8
        0x7678
        0x77da
        0x795a
        0x7abc
        0x7c1e
        0x7d9e
        0x7f01
        0x8064
        0x81e4
        0x8346
        0x84a8
        0x8627
        0x878a
        0x890a
        0x8a6c
        0x8bcf
        0x8d4f
        0x8eb1
        0x9013
        0x9193
        0x92f5
        0x9458
        0x95d8
        0x973a
        0x98bb
        0x9a1d
        0x9b7f
        0x9cff
        0x9e61
        0x9fc3
        0xa143
        0xa2a6
        0xa426
        0xa588
        0xa6eb
        0xa86b
        0xa9cd
        0xab2f
        0xacaf
        0xae11
        0xaf74
        0xb0f4
        0xb256
        0xb3d6
        0xb538
        0xb69a
        0xb81a
        0xb97d
        0xbadf
        0xbc5f
        0xbdc2
        0xbf42
        0xc0a4
        0xc206
        0xc386
        0xc4e8
        0xc64a
        0xc7ca
        0xc92d
        0xca90
        0xcc10
        0xcd72
        0xcef2
        0xd054
        0xd1b6
        0xd336
        0xd498
        0xd5fb
        0xd77b
        0xd8de
        0xda5e
        0xdbc0
        0xdd22
        0xdea1
        0xe004
        0xe166
        0xe2e6
        0xe449
        0xe5ab
        0xe72b
        0xe88d
        0xea0d
        0xeb6f
        0xecd2
        0xee52
        0xefb4
        0xf117
        0xf297
        0xf3f9
        0xf579
        0xf6db
        0xf83d
        0xf9bd
        0xfb20
        0xfc82
        0xfe02
        0xff65
        0x100c7
        0x10247
        0x103a9
        0x10529
        0x1068b
        0x107ee
        0x1096e
        0x10ad0
        0x10c33
        0x10db2
        0x10f14
        0x11094
        0x111f6
        0x11359
        0x114d9
        0x1163c
        0x1179e
        0x1191e
        0x11a80
        0x11be2
        0x11d62
        0x11ec4
    .end array-data

    :array_2ba
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd295
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data

    :array_450
    .array-data 4
        0x4
        0x13
        0x3
        0x12
        0x4
        0x13
        0x4
        0x13
        0x4
        0x14
        0x4
        0x14
        0x6
        0x16
        0x6
        0x16
        0x6
        0x16
        0x7
        0x16
        0x6
        0x15
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Lmiui/date/Calendar;->gregorianCutover:J

    const/16 v0, 0x62e

    iput v0, p0, Lmiui/date/Calendar;->changeYear:I

    const/16 v1, 0x62e

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x62e

    div-int/lit16 v2, v2, 0x190

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lmiui/date/Calendar;->julianError:I

    const/16 v2, 0x7d0

    rsub-int v3, v2, 0x62e

    div-int/lit16 v3, v3, 0x190

    add-int/2addr v3, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v3, v0

    iput v3, p0, Lmiui/date/Calendar;->julianSkew:I

    const/16 v0, 0xa

    iput v0, p0, Lmiui/date/Calendar;->currentYearSkew:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/date/Calendar;->lastYearSkew:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V
    .registers 9

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x2b

    if-gez v0, :cond_14

    const/16 v1, 0x2d

    neg-int v0, v0

    :cond_14
    if-eqz p2, :cond_1b

    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v2, 0x36ee80

    div-int v3, v0, v2

    const/4 v4, 0x2

    invoke-static {p1, v4, v3}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    if-eqz p3, :cond_2e

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2e
    rem-int v2, v0, v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {p1, v4, v2}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    return-void
.end method

.method private static appendNumericValue(Ljava/lang/StringBuilder;II)V
    .registers 4

    invoke-static {p1, p2}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V
    .registers 9

    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    const/4 v4, 0x4

    if-eq p3, v4, :cond_13

    move v2, v3

    :cond_13
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_21
    invoke-direct {p0, p1, v3, v3}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    :goto_24
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V
    .registers 16

    const/16 v0, 0x41

    const/4 v1, 0x3

    if-eq p3, v0, :cond_225

    const/16 v0, 0x53

    if-eq p3, v0, :cond_21d

    const/16 v0, 0x61

    const/4 v2, 0x2

    if-eq p3, v0, :cond_1fb

    const/16 v0, 0x68

    const/16 v3, 0x12

    const/16 v4, 0xc

    if-eq p3, v0, :cond_1ee

    const/16 v0, 0x6b

    if-eq p3, v0, :cond_1e6

    const/16 v0, 0x6d

    if-eq p3, v0, :cond_21d

    const/16 v0, 0x44

    if-eq p3, v0, :cond_21d

    const/16 v0, 0x45

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eq p3, v0, :cond_1b2

    const/16 v0, 0x59

    const/16 v8, 0xa

    if-eq p3, v0, :cond_178

    const/16 v0, 0x5a

    const/4 v9, 0x0

    if-eq p3, v0, :cond_165

    const/16 v0, 0x73

    if-eq p3, v0, :cond_21d

    const/16 v0, 0x74

    if-eq p3, v0, :cond_154

    const/16 v0, 0x79

    if-eq p3, v0, :cond_13e

    const/16 v0, 0x7a

    if-eq p3, v0, :cond_139

    packed-switch p3, :pswitch_data_234

    packed-switch p3, :pswitch_data_23e

    packed-switch p3, :pswitch_data_24a

    goto/16 :goto_233

    :pswitch_4f
    if-eq p4, v2, :cond_61

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v8

    sub-int/2addr v1, v7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_61
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    rem-int/2addr v1, v8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    rem-int/2addr v1, v4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :pswitch_81
    if-eq p4, v2, :cond_a2

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_a2
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    rem-int/2addr v1, v8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    rem-int/2addr v1, v4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :pswitch_c1
    if-ge p4, v1, :cond_cd

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    add-int/2addr v0, v7

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_233

    :cond_cd
    if-ne p4, v5, :cond_de

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_de
    if-ne p4, v6, :cond_ef

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_ef
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :pswitch_fe
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    rem-int/2addr v0, v4

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_233

    :pswitch_108
    const/16 v0, 0x13

    if-ne p4, v2, :cond_11a

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v0

    rem-int/2addr v2, v8

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11a
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v2, v0

    rem-int/2addr v0, v4

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :pswitch_12a
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_139
    invoke-direct {p0, p1, p2, p4}, Lmiui/date/Calendar;->appendTimeZone(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;I)V

    goto/16 :goto_233

    :cond_13e
    if-ne p4, v2, :cond_14b

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    rem-int/lit8 v0, v0, 0x64

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_233

    :cond_14b
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v7

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_233

    :cond_154
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getSolarTerms()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_165
    if-ne p4, v5, :cond_16c

    invoke-direct {p0, p1, v7, v7}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_233

    :cond_16c
    if-ne p4, v6, :cond_173

    invoke-direct {p0, p1, v9, v7}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_233

    :cond_173
    invoke-direct {p0, p1, v9, v9}, Lmiui/date/Calendar;->appendNumericTimeZone(Ljava/lang/StringBuilder;ZZ)V

    goto/16 :goto_233

    :cond_178
    if-eq p4, v2, :cond_194

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseDigits()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_186
    if-lez v1, :cond_192

    rem-int/lit8 v3, v1, 0xa

    div-int/lit8 v1, v1, 0xa

    aget-object v4, v0, v3

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_186

    :cond_192
    goto/16 :goto_233

    :cond_194
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getHeavenlyStems()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    rem-int/2addr v1, v8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getEarthlyBranches()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v5

    rem-int/2addr v1, v4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_1b2
    :pswitch_1b2
    const/16 v0, 0xe

    if-ne p4, v5, :cond_1c6

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getWeekDays()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v2, v0

    sub-int/2addr v0, v7

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_233

    :cond_1c6
    if-ne p4, v6, :cond_1d7

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortestWeekDays()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v2, v0

    sub-int/2addr v0, v7

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_233

    :cond_1d7
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getShortWeekDays()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v2, v0

    sub-int/2addr v0, v7

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_233

    :cond_1e6
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_233

    :cond_1ee
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v3

    rem-int/2addr v0, v4

    if-nez v0, :cond_1f6

    goto :goto_1f7

    :cond_1f6
    move v4, v0

    :goto_1f7
    invoke-static {p1, p4, v4}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_233

    :cond_1fb
    if-eq p4, v2, :cond_20d

    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_233

    :cond_20d
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getDetailedAmPms()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_233

    :cond_21d
    :pswitch_21d
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p5

    invoke-static {p1, p4, v0}, Lmiui/date/Calendar;->appendNumericValue(Ljava/lang/StringBuilder;II)V

    goto :goto_233

    :cond_225
    invoke-virtual {p2}, Lmiui/date/CalendarFormatSymbols;->getChineseSymbolAnimals()[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v2, v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_233
    return-void

    :pswitch_data_234
    .packed-switch 0x47
        :pswitch_12a
        :pswitch_21d
        :pswitch_108
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x4b
        :pswitch_fe
        :pswitch_c1
        :pswitch_c1
        :pswitch_81
    .end packed-switch

    :pswitch_data_24a
    .packed-switch 0x63
        :pswitch_1b2
        :pswitch_21d
        :pswitch_4f
    .end packed-switch
.end method

.method private compute()V
    .registers 4

    invoke-direct {p0}, Lmiui/date/Calendar;->computeDateTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->computeChineseDate(J)V

    invoke-direct {p0}, Lmiui/date/Calendar;->computeSolarTerm()V

    invoke-direct {p0, v0, v1}, Lmiui/date/Calendar;->computeChineseEraNames(J)V

    :cond_13
    return-void
.end method

.method private computeChineseDate(J)V
    .registers 12

    const-wide/16 v0, -0x63c1

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/16 v4, 0x834

    if-lt v3, v4, :cond_f

    goto :goto_13

    :cond_f
    aget v1, v1, v2

    add-int/lit8 v4, v1, 0x1

    :goto_13
    move v1, v4

    sget-object v2, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v3, v1, -0x76c

    aget v2, v2, v3

    sub-int/2addr v0, v2

    if-gez v0, :cond_24

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_24
    if-gez v0, :cond_2d

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2d
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x2

    aput v1, v2, v3

    const/16 v3, 0xd

    add-int/lit8 v4, v0, 0x1

    aput v4, v2, v3

    invoke-static {v1}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3f
    const/16 v6, 0xc

    if-ge v5, v6, :cond_64

    if-lez v0, :cond_64

    if-ltz v2, :cond_55

    add-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_55

    if-nez v3, :cond_55

    add-int/lit8 v5, v5, -0x1

    const/4 v3, 0x1

    invoke-static {v1}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v4

    goto :goto_59

    :cond_55
    invoke-static {v1, v5}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    :goto_59
    if-eqz v3, :cond_60

    add-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_60

    const/4 v3, 0x0

    :cond_60
    sub-int/2addr v0, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_64
    if-nez v0, :cond_73

    if-lez v2, :cond_73

    add-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_73

    if-eqz v3, :cond_70

    const/4 v3, 0x0

    goto :goto_73

    :cond_70
    const/4 v3, 0x1

    add-int/lit8 v5, v5, -0x1

    :cond_73
    :goto_73
    if-gez v0, :cond_78

    add-int/2addr v0, v4

    add-int/lit8 v5, v5, -0x1

    :cond_78
    iget-object v6, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v7, 0x8

    aput v3, v6, v7

    const/4 v7, 0x6

    aput v5, v6, v7

    const/16 v7, 0xa

    add-int/lit8 v8, v0, 0x1

    aput v8, v6, v7

    return-void
.end method

.method private computeChineseEraNames(J)V
    .registers 14

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v4, v0, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_18

    const/4 v4, 0x6

    aget v4, v0, v4

    if-ge v4, v5, :cond_16

    const/16 v4, 0xd

    aget v0, v0, v4

    if-ge v0, v1, :cond_18

    :cond_16
    add-int/lit8 v2, v2, -0x1

    :cond_18
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v4, 0x3

    add-int/lit16 v6, v2, -0x76c

    const/16 v7, 0xc

    add-int/2addr v6, v7

    int-to-long v8, v6

    invoke-static {v8, v9, v7}, Lmiui/date/Calendar;->mod(JI)I

    move-result v6

    aput v6, v0, v4

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v4, 0x4

    add-int/lit16 v6, v2, -0x76c

    add-int/lit8 v6, v6, 0x24

    int-to-long v8, v6

    const/16 v6, 0x3c

    invoke-static {v8, v9, v6}, Lmiui/date/Calendar;->mod(JI)I

    move-result v8

    aput v8, v0, v4

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v0, v1

    aget v0, v0, v3

    invoke-static {v4, v0}, Lmiui/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    iget-object v4, p0, Lmiui/date/Calendar;->mFields:[I

    aget v8, v4, v1

    add-int/lit16 v8, v8, -0x76c

    mul-int/2addr v8, v7

    aget v3, v4, v3

    add-int/2addr v8, v3

    const/16 v2, 0x9

    aget v2, v4, v2

    if-lt v2, v0, :cond_55

    add-int/lit8 v8, v8, 0x1

    :cond_55
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x7

    add-int/lit8 v4, v8, 0xc

    int-to-long v9, v4

    invoke-static {v9, v10, v6}, Lmiui/date/Calendar;->mod(JI)I

    move-result v4

    aput v4, v2, v3

    const-wide/16 v2, -0x63c1

    sub-long v2, p1, v2

    long-to-int v2, v2

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0xb

    add-int/lit8 v7, v2, 0x28

    int-to-long v7, v7

    invoke-static {v7, v8, v6}, Lmiui/date/Calendar;->mod(JI)I

    move-result v7

    aput v7, v3, v4

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x13

    mul-int/lit8 v7, v2, 0xc

    const/16 v8, 0x12

    aget v8, v3, v8

    add-int/2addr v8, v1

    rem-int/lit8 v8, v8, 0x18

    div-int/2addr v8, v5

    add-int/2addr v7, v8

    int-to-long v7, v7

    invoke-static {v7, v8, v6}, Lmiui/date/Calendar;->mod(JI)I

    move-result v1

    aput v1, v3, v4

    return-void
.end method

.method private computeDate(JJ)V
    .registers 15

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/date/Calendar;->computeYearAndDay(JJ)I

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xc

    aput v0, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v3, p0, Lmiui/date/Calendar;->changeYear:I

    if-ne v1, v3, :cond_1a

    iget-wide v3, p0, Lmiui/date/Calendar;->gregorianCutover:J

    cmp-long v1, v3, p3

    if-gtz v1, :cond_1a

    iget v1, p0, Lmiui/date/Calendar;->currentYearSkew:I

    add-int/2addr v0, v1

    :cond_1a
    div-int/lit8 v1, v0, 0x20

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v3

    invoke-static {v3, v1}, Lmiui/date/Calendar;->daysInYear(ZI)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v3, v1}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v5

    if-le v4, v5, :cond_37

    invoke-static {v3, v1}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    :cond_37
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v6, 0x5

    aput v1, v5, v6

    const/16 v6, 0x9

    aput v4, v5, v6

    const/16 v6, 0xe

    const-wide/16 v7, 0x3

    sub-long v7, p1, v7

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Lmiui/date/Calendar;->mod(JI)I

    move-result v7

    add-int/2addr v7, v2

    aput v7, v5, v6

    return-void
.end method

.method private computeDateTime()J
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/date/Calendar;->mFields:[I

    iget-object v2, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const/16 v3, 0x17

    aput v2, v1, v3

    iget-wide v1, v0, Lmiui/date/Calendar;->mMillisecond:J

    const-wide/32 v4, 0x5265c00

    div-long v6, v1, v4

    rem-long/2addr v1, v4

    long-to-int v1, v1

    const-wide/16 v4, 0x1

    const v2, 0x5265c00

    if-gez v1, :cond_20

    add-int/2addr v1, v2

    sub-long/2addr v6, v4

    :cond_20
    iget-object v8, v0, Lmiui/date/Calendar;->mFields:[I

    aget v8, v8, v3

    add-int/2addr v1, v8

    :goto_25
    if-gez v1, :cond_2a

    add-int/2addr v1, v2

    sub-long/2addr v6, v4

    goto :goto_25

    :cond_2a
    :goto_2a
    if-lt v1, v2, :cond_2f

    sub-int/2addr v1, v2

    add-long/2addr v6, v4

    goto :goto_2a

    :cond_2f
    iget-object v8, v0, Lmiui/date/Calendar;->mFields:[I

    aget v8, v8, v3

    iget-wide v9, v0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v11, v8

    add-long/2addr v11, v9

    const-wide/16 v13, 0x0

    cmp-long v9, v9, v13

    if-lez v9, :cond_49

    cmp-long v9, v11, v13

    if-gez v9, :cond_49

    if-lez v8, :cond_49

    const-wide v11, 0x7fffffffffffffffL

    goto :goto_57

    :cond_49
    iget-wide v9, v0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v9, v9, v13

    if-gez v9, :cond_57

    cmp-long v9, v11, v13

    if-lez v9, :cond_57

    if-gez v8, :cond_57

    const-wide/high16 v11, -0x8000000000000000L

    :cond_57
    :goto_57
    invoke-direct {v0, v6, v7, v11, v12}, Lmiui/date/Calendar;->computeDate(JJ)V

    invoke-direct {v0, v1}, Lmiui/date/Calendar;->getDstOffset(I)I

    move-result v9

    iget-object v10, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v15, 0x18

    aput v9, v10, v15

    if-eqz v9, :cond_a7

    move-wide/from16 v16, v6

    add-int/2addr v1, v9

    if-gez v1, :cond_6e

    add-int/2addr v1, v2

    sub-long/2addr v6, v4

    goto :goto_72

    :cond_6e
    if-lt v1, v2, :cond_72

    sub-int/2addr v1, v2

    add-long/2addr v6, v4

    :cond_72
    :goto_72
    cmp-long v2, v16, v6

    if-eqz v2, :cond_a7

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v2, v15

    aget v2, v2, v3

    sub-int v8, v4, v2

    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v4, v8

    add-long/2addr v4, v2

    cmp-long v2, v2, v13

    if-lez v2, :cond_93

    cmp-long v2, v4, v13

    if-gez v2, :cond_93

    if-lez v8, :cond_93

    const-wide v2, 0x7fffffffffffffffL

    move-wide v11, v2

    goto :goto_a4

    :cond_93
    iget-wide v2, v0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v2, v2, v13

    if-gez v2, :cond_a3

    cmp-long v2, v4, v13

    if-lez v2, :cond_a3

    if-gez v8, :cond_a3

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v11, v2

    goto :goto_a4

    :cond_a3
    move-wide v11, v4

    :goto_a4
    invoke-direct {v0, v6, v7, v11, v12}, Lmiui/date/Calendar;->computeDate(JJ)V

    :cond_a7
    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/4 v3, 0x1

    aget v4, v2, v3

    const/4 v5, 0x0

    if-gtz v4, :cond_b8

    aput v5, v2, v5

    aget v4, v2, v3

    rsub-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_ba

    :cond_b8
    aput v3, v2, v5

    :goto_ba
    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x16

    rem-int/lit16 v10, v1, 0x3e8

    aput v10, v2, v4

    div-int/lit16 v1, v1, 0x3e8

    const/16 v4, 0x15

    rem-int/lit8 v10, v1, 0x3c

    aput v10, v2, v4

    div-int/lit8 v1, v1, 0x3c

    const/16 v4, 0x14

    rem-int/lit8 v10, v1, 0x3c

    aput v10, v2, v4

    div-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v4, v1, 0x18

    const/16 v10, 0x12

    aput v4, v2, v10

    const/16 v4, 0x11

    aget v13, v2, v10

    const/16 v14, 0xb

    if-le v13, v14, :cond_e4

    move v13, v3

    goto :goto_e5

    :cond_e4
    move v13, v5

    :goto_e5
    aput v13, v2, v4

    iget-object v2, v0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v2, v10

    const/16 v10, 0x10

    packed-switch v4, :pswitch_data_10c

    goto :goto_10b

    :pswitch_f1
    const/4 v3, 0x6

    aput v3, v2, v10

    goto :goto_10b

    :pswitch_f5
    const/4 v3, 0x5

    aput v3, v2, v10

    goto :goto_10b

    :pswitch_f9
    const/4 v3, 0x4

    aput v3, v2, v10

    goto :goto_10b

    :pswitch_fd
    const/4 v3, 0x3

    aput v3, v2, v10

    goto :goto_10b

    :pswitch_101
    const/4 v3, 0x2

    aput v3, v2, v10

    goto :goto_10b

    :pswitch_105
    aput v3, v2, v10

    goto :goto_10b

    :pswitch_108
    aput v5, v2, v10

    nop

    :goto_10b
    return-wide v6

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_108
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_fd
        :pswitch_f9
        :pswitch_f9
        :pswitch_f9
        :pswitch_f9
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_f1
        :pswitch_f1
        :pswitch_f1
        :pswitch_f1
    .end packed-switch
.end method

.method private computeSolarTerm()V
    .registers 9

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v0, v0, v3

    invoke-static {v2, v0}, Lmiui/date/Calendar;->solarTermDaysOfMonth(II)I

    move-result v0

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v4, 0x9

    aget v5, v2, v4

    shr-int/lit8 v6, v0, 0x8

    const/16 v7, 0xf

    if-ne v5, v6, :cond_20

    aget v3, v2, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    aput v3, v2, v7

    goto :goto_32

    :cond_20
    aget v1, v2, v4

    and-int/lit16 v4, v0, 0xff

    if-ne v1, v4, :cond_2f

    aget v1, v2, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    aput v1, v2, v7

    goto :goto_32

    :cond_2f
    const/4 v1, 0x0

    aput v1, v2, v7

    :goto_32
    return-void
.end method

.method private computeYearAndDay(JJ)I
    .registers 12

    const/16 v0, 0x7b2

    move-wide v1, p1

    iget-wide v3, p0, Lmiui/date/Calendar;->gregorianCutover:J

    cmp-long v3, p3, v3

    if-gez v3, :cond_d

    iget v3, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    :cond_d
    :goto_d
    const-wide/16 v3, 0x16d

    div-long v3, v1, v3

    long-to-int v3, v3

    move v4, v3

    if-eqz v3, :cond_1e

    add-int/2addr v0, v4

    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lmiui/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v5

    sub-long v1, p1, v5

    goto :goto_d

    :cond_1e
    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-gez v3, :cond_2c

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lmiui/date/Calendar;->daysInYear(I)I

    move-result v3

    int-to-long v5, v3

    add-long/2addr v1, v5

    :cond_2c
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x1

    aput v0, v3, v5

    long-to-int v3, v1

    add-int/2addr v3, v5

    return v3
.end method

.method private daysFromBaseYear(J)J
    .registers 16

    const-wide/16 v0, 0x7b2

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x190

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x16d

    if-ltz v2, :cond_46

    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    const-wide/16 v9, 0x7b1

    sub-long v9, p1, v9

    div-long/2addr v9, v7

    add-long/2addr v0, v9

    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v7, v2

    cmp-long v7, p1, v7

    if-lez v7, :cond_2b

    const-wide/16 v7, 0x76d

    sub-long v7, p1, v7

    div-long/2addr v7, v5

    const-wide/16 v5, 0x641

    sub-long v5, p1, v5

    div-long/2addr v5, v3

    sub-long/2addr v7, v5

    sub-long/2addr v0, v7

    goto :goto_45

    :cond_2b
    int-to-long v3, v2

    cmp-long v3, p1, v3

    if-nez v3, :cond_35

    iget v2, p0, Lmiui/date/Calendar;->currentYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_45

    :cond_35
    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_41

    iget v2, p0, Lmiui/date/Calendar;->lastYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_45

    :cond_41
    iget v2, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_45
    return-wide v0

    :cond_46
    iget v2, p0, Lmiui/date/Calendar;->changeYear:I

    int-to-long v11, v2

    cmp-long v2, p1, v11

    const-wide/16 v11, 0x7b4

    if-gtz v2, :cond_5b

    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long v2, p1, v11

    div-long/2addr v2, v7

    add-long/2addr v0, v2

    iget v2, p0, Lmiui/date/Calendar;->julianSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_5b
    sub-long v0, p1, v0

    mul-long/2addr v0, v9

    sub-long v9, p1, v11

    div-long/2addr v9, v7

    add-long/2addr v0, v9

    const-wide/16 v7, 0x7d0

    sub-long v9, p1, v7

    div-long/2addr v9, v5

    sub-long/2addr v0, v9

    sub-long v5, p1, v7

    div-long/2addr v5, v3

    add-long/2addr v0, v5

    return-wide v0
.end method

.method static daysInChineseMonth(II)I
    .registers 5

    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    add-int/lit8 v1, p1, 0x1

    const/high16 v2, 0x10000

    shr-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_12

    const/16 v0, 0x1e

    goto :goto_14

    :cond_12
    const/16 v0, 0x1d

    :goto_14
    return v0
.end method

.method static daysInChineseYear(I)I
    .registers 4

    sget-object v0, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    add-int/lit16 v2, p0, -0x76c

    aget v0, v0, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method private static daysInMonth(ZI)I
    .registers 4

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    sget-object v1, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte v1, v1, p1

    add-int/2addr v1, v0

    return v1

    :cond_b
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_MONTH:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method private daysInYear(I)I
    .registers 4

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    if-ne p1, v1, :cond_12

    iget v1, p0, Lmiui/date/Calendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lmiui/date/Calendar;->changeYear:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1b

    iget v1, p0, Lmiui/date/Calendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    :cond_1b
    return v0
.end method

.method private static daysInYear(ZI)I
    .registers 4

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-le p1, v0, :cond_b

    sget-object v1, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    aget v1, v1, p1

    add-int/2addr v1, v0

    return v1

    :cond_b
    sget-object v0, Lmiui/date/Calendar;->DAYS_IN_YEAR:[I

    aget v0, v0, p1

    return v0
.end method

.method private getDstOffset(I)I
    .registers 13

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_a

    move v0, v3

    goto :goto_1f

    :cond_a
    iget-object v4, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const/4 v5, 0x1

    aget v6, v0, v1

    const/4 v2, 0x5

    aget v7, v0, v2

    const/16 v2, 0x9

    aget v8, v0, v2

    const/16 v2, 0xe

    aget v9, v0, v2

    move v10, p1

    invoke-virtual/range {v4 .. v10}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    :goto_1f
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v2, v1

    if-lez v1, :cond_2c

    const/16 v1, 0x17

    aget v1, v2, v1

    sub-int v1, v0, v1

    return v1

    :cond_2c
    return v3
.end method

.method private static leapChineseMonth(I)I
    .registers 3

    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/16 v1, 0xf

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_d

    const/4 v1, -0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v1, v0, -0x1

    :goto_f
    return v1
.end method

.method static leapDaysInChineseYear(I)I
    .registers 3

    invoke-static {p0}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    if-ltz v0, :cond_19

    sget-object v0, Lmiui/date/Calendar;->CHINESE_YEAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    const/16 v1, 0xf

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16

    const/16 v0, 0x1e

    goto :goto_1a

    :cond_16
    const/16 v0, 0x1d

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method private static mod(JI)I
    .registers 6

    int-to-long v0, p2

    rem-long v0, p0, v0

    long-to-int v0, v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_f

    if-gez v0, :cond_f

    add-int v1, v0, p2

    return v1

    :cond_f
    return v0
.end method

.method private onChineseDateChange()V
    .registers 8

    const-wide/16 v0, -0x63c1

    sget-object v2, Lmiui/date/Calendar;->DAY_CHINESE_YEAR_FROM_19000101:[I

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    add-int/lit16 v3, v3, -0x76c

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/4 v2, 0x0

    :goto_10
    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v5, 0x6

    aget v6, v3, v5

    if-ge v2, v6, :cond_22

    aget v3, v3, v4

    invoke-static {v3, v2}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v3

    int-to-long v5, v3

    add-long/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_22
    const/16 v2, 0x8

    aget v2, v3, v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_34

    aget v2, v3, v4

    aget v3, v3, v5

    invoke-static {v2, v3}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_4a

    :cond_34
    aget v2, v3, v4

    invoke-static {v2}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v2

    if-ltz v2, :cond_4a

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v5, v3, v5

    if-ge v2, v5, :cond_4a

    aget v3, v3, v4

    invoke-static {v3}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    :cond_4a
    :goto_4a
    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    sub-int/2addr v2, v6

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lmiui/date/Calendar;->computeDate(JJ)V

    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    return-void
.end method

.method private onSolarDateChange()V
    .registers 16

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aget v9, v0, v1

    const/4 v2, 0x5

    aget v10, v0, v2

    const/16 v2, 0x9

    aget v0, v0, v2

    int-to-long v2, v9

    invoke-direct {p0, v2, v3}, Lmiui/date/Calendar;->daysFromBaseYear(J)J

    move-result-wide v2

    invoke-virtual {p0, v9}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v4

    invoke-static {v4, v10}, Lmiui/date/Calendar;->daysInYear(ZI)I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    int-to-long v4, v4

    add-long v11, v2, v4

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const-wide/16 v3, 0x3

    sub-long v3, v11, v3

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Lmiui/date/Calendar;->mod(JI)I

    move-result v3

    add-int/lit8 v7, v3, 0x1

    const/16 v1, 0xe

    aput v7, v2, v1

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0x12

    aget v2, v1, v2

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    const/16 v3, 0x14

    aget v3, v1, v3

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    const/16 v3, 0x15

    aget v3, v1, v3

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    const/16 v3, 0x16

    aget v1, v1, v3

    add-int/2addr v1, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v2, v11

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-object v2, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    const/4 v3, 0x1

    move v4, v9

    move v5, v10

    move v6, v0

    move v8, v1

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v2

    int-to-long v2, v2

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget-object v5, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v5, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-direct {p0, v1}, Lmiui/date/Calendar;->getDstOffset(I)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v2, v5

    :cond_77
    iget-wide v5, p0, Lmiui/date/Calendar;->mMillisecond:J

    if-gtz v9, :cond_7e

    const-wide/16 v13, 0x0

    goto :goto_7f

    :cond_7e
    move-wide v13, v2

    :goto_7f
    sub-long/2addr v5, v13

    iput-wide v5, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    return-void
.end method

.method static solarTermDaysOfMonth(II)I
    .registers 10

    const/16 v0, 0x834

    if-le p0, v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v0, Lmiui/date/Calendar;->SOLAR_TERM_INDEX:[B

    add-int/lit16 v1, p0, -0x76c

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v2, v0, 0x18

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lmiui/date/Calendar;->SOLAR_TERM_OS:[B

    aget-byte v5, v4, v2

    add-int/lit8 v5, v5, -0x30

    sget-object v6, Lmiui/date/Calendar;->SOLAR_TERM_BASE:[I

    aget v7, v6, v1

    add-int/2addr v5, v7

    aget-byte v2, v4, v3

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v4, v1, 0x1

    aget v4, v6, v4

    add-int/2addr v2, v4

    shl-int/lit8 v3, v5, 0x8

    add-int/2addr v3, v2

    return v3
.end method


# virtual methods
.method public add(II)Lmiui/date/Calendar;
    .registers 16

    if-ltz p1, :cond_28e

    const/16 v0, 0x19

    if-ge p1, v0, :cond_28e

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_273

    const/16 v3, 0x9

    const/4 v4, 0x5

    if-eq p1, v2, :cond_244

    const/16 v5, 0x834

    const/16 v6, 0x76c

    const-string v7, "out of range of Chinese Lunar Year"

    const/16 v8, 0xa

    const/16 v9, 0x8

    const/4 v10, 0x6

    if-eq p1, v0, :cond_1f5

    const/16 v11, 0xc

    if-eq p1, v4, :cond_1b4

    if-eq p1, v10, :cond_105

    const-string v0, "out of range"

    if-eq p1, v3, :cond_e0

    if-eq p1, v8, :cond_e0

    if-eq p1, v11, :cond_e0

    const/16 v3, 0xd

    if-eq p1, v3, :cond_e0

    const/16 v3, 0x12

    if-eq p1, v3, :cond_bb

    packed-switch p1, :pswitch_data_2a6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported set field:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_51
    if-eqz p2, :cond_28d

    iget-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    if-lez p2, :cond_5b

    move v5, v2

    goto :goto_5c

    :cond_5b
    move v5, v1

    :goto_5c
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_63

    move v1, v2

    :cond_63
    if-ne v5, v1, :cond_6c

    iput-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_28d

    :cond_6c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_72
    if-eqz p2, :cond_28d

    iget-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    if-lez p2, :cond_7f

    move v5, v2

    goto :goto_80

    :cond_7f
    move v5, v1

    :goto_80
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_87

    move v1, v2

    :cond_87
    if-ne v5, v1, :cond_90

    iput-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_28d

    :cond_90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_96
    if-eqz p2, :cond_28d

    iget-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    if-lez p2, :cond_a4

    move v5, v2

    goto :goto_a5

    :cond_a4
    move v5, v1

    :goto_a5
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_ac

    move v1, v2

    :cond_ac
    if-ne v5, v1, :cond_b5

    iput-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_28d

    :cond_b5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bb
    if-eqz p2, :cond_28d

    iget-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    if-lez p2, :cond_c9

    move v5, v2

    goto :goto_ca

    :cond_c9
    move v5, v1

    :goto_ca
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_d1

    move v1, v2

    :cond_d1
    if-ne v5, v1, :cond_da

    iput-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_28d

    :cond_da
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e0
    if-eqz p2, :cond_28d

    iget-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    int-to-long v5, p2

    const-wide/32 v7, 0x5265c00

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    if-lez p2, :cond_ee

    move v5, v2

    goto :goto_ef

    :cond_ee
    move v5, v1

    :goto_ef
    iget-wide v6, p0, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_f6

    move v1, v2

    :cond_f6
    if-ne v5, v1, :cond_ff

    iput-wide v3, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    goto/16 :goto_28d

    :cond_ff
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_105
    if-eqz p2, :cond_28d

    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v3

    if-nez v3, :cond_1ae

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    :goto_115
    const/16 v4, 0xb

    if-lez p2, :cond_14e

    iget-object v11, p0, Lmiui/date/Calendar;->mFields:[I

    aget v12, v11, v10

    if-ne v12, v3, :cond_126

    aget v12, v11, v9

    if-nez v12, :cond_126

    aput v2, v11, v9

    goto :goto_14b

    :cond_126
    iget-object v11, p0, Lmiui/date/Calendar;->mFields:[I

    aget v12, v11, v10

    add-int/2addr v12, v2

    aput v12, v11, v10

    aput v1, v11, v9

    aget v12, v11, v10

    if-le v12, v4, :cond_14b

    aput v1, v11, v10

    aget v4, v11, v0

    add-int/2addr v4, v2

    aput v4, v11, v0

    aget v4, v11, v0

    if-gt v4, v5, :cond_145

    aget v4, v11, v0

    invoke-static {v4}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    goto :goto_14b

    :cond_145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14b
    :goto_14b
    add-int/lit8 p2, p2, -0x1

    goto :goto_115

    :cond_14e
    :goto_14e
    if-gez p2, :cond_18b

    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    aget v11, v5, v10

    if-ne v11, v3, :cond_15d

    aget v11, v5, v9

    if-ne v11, v2, :cond_15d

    aput v1, v5, v9

    goto :goto_188

    :cond_15d
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    aget v11, v5, v10

    sub-int/2addr v11, v2

    aput v11, v5, v10

    aget v11, v5, v10

    if-gez v11, :cond_180

    aput v4, v5, v10

    aget v11, v5, v10

    sub-int/2addr v11, v2

    aput v11, v5, v10

    aget v11, v5, v0

    if-lt v11, v6, :cond_17a

    aget v5, v5, v2

    invoke-static {v5}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    goto :goto_180

    :cond_17a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_180
    :goto_180
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    aget v11, v5, v10

    if-ne v11, v3, :cond_188

    aput v2, v5, v9

    :cond_188
    :goto_188
    add-int/lit8 p2, p2, 0x1

    goto :goto_14e

    :cond_18b
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v1, v9

    if-ne v4, v2, :cond_198

    aget v0, v1, v0

    invoke-static {v0}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v0

    goto :goto_1a0

    :cond_198
    aget v0, v1, v0

    aget v1, v1, v10

    invoke-static {v0, v1}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v0

    :goto_1a0
    nop

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v1, v8

    if-le v2, v0, :cond_1a9

    aput v0, v1, v8

    :cond_1a9
    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    goto/16 :goto_28d

    :cond_1ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b4
    if-eqz p2, :cond_28d

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v4

    add-int/2addr p2, v0

    div-int/lit8 v0, p2, 0xc

    rem-int/2addr p2, v11

    if-gez p2, :cond_1c4

    add-int/lit8 p2, p2, 0xc

    add-int/lit8 v0, v0, -0x1

    :cond_1c4
    iget-object v5, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, v5, v4

    if-nez v0, :cond_1f0

    aget v1, v5, v1

    if-nez v1, :cond_1d4

    aget v1, v5, v2

    rsub-int/lit8 v1, v1, -0x1

    aput v1, v5, v2

    :cond_1d4
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v4

    invoke-static {v1, v2}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v2, v3

    if-le v4, v1, :cond_1ec

    aput v1, v2, v3

    :cond_1ec
    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    goto :goto_1f3

    :cond_1f0
    invoke-virtual {p0, v2, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;

    :goto_1f3
    goto/16 :goto_28d

    :cond_1f5
    if-eqz p2, :cond_28d

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v3, v0

    add-int/2addr p2, v3

    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v3

    if-nez v3, :cond_23e

    if-lt p2, v6, :cond_23e

    if-gt p2, v5, :cond_23e

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, v3, v0

    aget v4, v3, v9

    if-ne v4, v2, :cond_21c

    aget v4, v3, v10

    aget v3, v3, v0

    invoke-static {v3}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v3

    if-ne v4, v3, :cond_21c

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aput v1, v3, v9

    :cond_21c
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v3, v1, v9

    if-ne v3, v2, :cond_229

    aget v0, v1, v0

    invoke-static {v0}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v0

    goto :goto_231

    :cond_229
    aget v0, v1, v0

    aget v1, v1, v10

    invoke-static {v0, v1}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v0

    :goto_231
    nop

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v1, v8

    if-le v2, v0, :cond_23a

    aput v0, v1, v8

    :cond_23a
    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    goto :goto_28d

    :cond_23e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_244
    if-eqz p2, :cond_28d

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v0, v1

    if-nez v1, :cond_252

    aget v1, v0, v2

    rsub-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    :cond_252
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v1, v1, v4

    invoke-static {v0, v1}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v1, v3

    if-le v2, v0, :cond_26f

    aput v0, v1, v3

    :cond_26f
    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    goto :goto_28d

    :cond_273
    if-eqz p2, :cond_28d

    iget-object v3, p0, Lmiui/date/Calendar;->mFields:[I

    aget v4, v3, v1

    add-int/2addr v4, p2

    rem-int/lit8 p2, v4, 0x2

    aget v0, v3, v1

    if-eq v0, p2, :cond_28d

    aget v0, v3, v1

    if-nez v0, :cond_28d

    aget v0, v3, v2

    rsub-int/lit8 v0, v0, -0x1

    aput v0, v3, v2

    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    :cond_28d
    :goto_28d
    return-object p0

    :cond_28e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_2a6
    .packed-switch 0x14
        :pswitch_96
        :pswitch_72
        :pswitch_51
    .end packed-switch
.end method

.method public after(Lmiui/date/Calendar;)Z
    .registers 6

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public before(Lmiui/date/Calendar;)Z
    .registers 6

    invoke-virtual {p0}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lmiui/date/Calendar;->mFields:[I

    iget-object v1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lmiui/date/Calendar;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->compareTo(Lmiui/date/Calendar;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiui/date/Calendar;)I
    .registers 7

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-wide v2, p1, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, -0x1

    goto :goto_11

    :cond_a
    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p1, p0, :cond_14

    instance-of v0, p1, Lmiui/date/Calendar;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    move-object v2, p1

    check-cast v2, Lmiui/date/Calendar;

    iget-wide v2, v2, Lmiui/date/Calendar;->mMillisecond:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public format(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, p1, p2}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Lmiui/date/CalendarFormatSymbols;)Ljava/lang/StringBuilder;
    .registers 15

    if-nez p3, :cond_6

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object p3

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v7, v0

    :goto_d
    if-ge v1, v6, :cond_84

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v0, 0x27

    if-eqz v7, :cond_33

    if-ne v8, v0, :cond_2f

    add-int/lit8 v0, v1, 0x1

    if-ge v0, v6, :cond_2c

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_2c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_81

    :cond_2c
    const/4 v0, 0x0

    move v7, v0

    goto :goto_81

    :cond_2f
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    :cond_33
    if-ne v8, v0, :cond_4a

    add-int/lit8 v0, v1, 0x1

    if-ge v0, v6, :cond_47

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_47

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_81

    :cond_47
    const/4 v0, 0x1

    move v7, v0

    goto :goto_81

    :cond_4a
    const/16 v0, 0x41

    if-lt v8, v0, :cond_7e

    const/16 v0, 0x7a

    if-gt v8, v0, :cond_7e

    sget-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v2, v8, -0x41

    aget v0, v0, v2

    if-ltz v0, :cond_7e

    const/4 v0, 0x1

    move v9, v0

    move v10, v1

    :goto_5d
    add-int/lit8 v0, v10, 0x1

    if-ge v0, v6, :cond_6e

    add-int/lit8 v0, v10, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_6e

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_5d

    :cond_6e
    sget-object v0, Lmiui/date/Calendar;->FORMAT_CHARACTERS:[I

    add-int/lit8 v1, v8, -0x41

    aget v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lmiui/date/Calendar;->appendValue(Ljava/lang/StringBuilder;Lmiui/date/CalendarFormatSymbols;CII)V

    move v1, v10

    goto :goto_81

    :cond_7e
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_84
    return-object p1
.end method

.method public get(I)I
    .registers 5

    if-ltz p1, :cond_b

    const/16 v0, 0x19

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p1

    return v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActualMaximum(I)I
    .registers 8

    if-ltz p1, :cond_9d

    const/16 v0, 0x19

    if-ge p1, v0, :cond_9d

    const/4 v0, 0x6

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/16 v3, 0x3b

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_b4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2c
    const/16 v0, 0x3e7

    return v0

    :pswitch_2f
    return v3

    :pswitch_30
    return v3

    :pswitch_31
    const/16 v0, 0x17

    return v0

    :pswitch_34
    return v5

    :pswitch_35
    return v0

    :pswitch_36
    const/16 v0, 0x18

    return v0

    :pswitch_39
    const/4 v0, 0x7

    return v0

    :pswitch_3b
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_4a

    :cond_42
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    invoke-static {v0}, Lmiui/date/Calendar;->daysInChineseYear(I)I

    move-result v4

    :goto_4a
    return v4

    :pswitch_4b
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    invoke-direct {p0, v0}, Lmiui/date/Calendar;->daysInYear(I)I

    move-result v0

    return v0

    :pswitch_54
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_74

    :cond_5b
    invoke-virtual {p0}, Lmiui/date/Calendar;->isChineseLeapMonth()Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v2

    invoke-static {v0}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v4

    goto :goto_74

    :cond_6a
    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-static {v2, v0}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v4

    :goto_74
    return v4

    :pswitch_75
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v5

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-static {v0, v1}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v0

    return v0

    :pswitch_87
    return v5

    :pswitch_88
    return v1

    :pswitch_89
    return v3

    :pswitch_8a
    return v1

    :pswitch_8b
    const/16 v0, 0x834

    return v0

    :pswitch_8e
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v4

    if-ne v0, v5, :cond_98

    const v0, 0x116bd2d2

    goto :goto_9b

    :cond_98
    const v0, 0x116babff

    :goto_9b
    return v0

    :pswitch_9c
    return v5

    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_8e
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_88
        :pswitch_89
        :pswitch_87
        :pswitch_75
        :pswitch_54
        :pswitch_89
        :pswitch_4b
        :pswitch_3b
        :pswitch_39
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_31
        :pswitch_89
        :pswitch_30
        :pswitch_2f
        :pswitch_2c
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 5

    if-ltz p1, :cond_45

    const/16 v0, 0x19

    if-ge p1, v0, :cond_45

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    return v1

    :pswitch_27
    return v1

    :pswitch_28
    return v1

    :pswitch_29
    return v1

    :pswitch_2a
    return v1

    :pswitch_2b
    return v1

    :pswitch_2c
    return v1

    :pswitch_2d
    return v0

    :pswitch_2e
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :pswitch_34
    return v0

    :pswitch_35
    invoke-virtual {p0}, Lmiui/date/Calendar;->outOfChineseCalendarRange()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :pswitch_3b
    return v0

    :pswitch_3c
    return v1

    :pswitch_3d
    return v1

    :pswitch_3e
    return v1

    :pswitch_3f
    return v1

    :pswitch_40
    const/16 v0, 0x76c

    return v0

    :pswitch_43
    return v0

    :pswitch_44
    return v1

    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field out of range [0-25]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3e
        :pswitch_3c
        :pswitch_3b
        :pswitch_35
        :pswitch_3e
        :pswitch_34
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_3e
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method

.method public getChineseLeapMonth()I
    .registers 3

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    return v0
.end method

.method public getTimeInMillis()J
    .registers 3

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isChineseLeapMonth()Z
    .registers 3

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isLeapYear(I)Z
    .registers 5

    iget v0, p0, Lmiui/date/Calendar;->changeYear:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_15

    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_13

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_12

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_13

    :cond_12
    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    :cond_15
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method public outOfChineseCalendarRange()Z
    .registers 11

    iget-wide v0, p0, Lmiui/date/Calendar;->mMillisecond:J

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v3, 0x17

    aget v4, v2, v3

    int-to-long v4, v4

    const-wide v6, -0x201b77f5c00L

    sub-long/2addr v6, v4

    const/16 v4, 0x18

    aget v5, v2, v4

    int-to-long v8, v5

    sub-long/2addr v6, v8

    cmp-long v5, v0, v6

    if-ltz v5, :cond_2d

    const-wide v5, 0x3c314a71400L

    aget v3, v2, v3

    int-to-long v7, v3

    sub-long/2addr v5, v7

    aget v2, v2, v4

    int-to-long v2, v2

    sub-long/2addr v5, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    :goto_2e
    return v0
.end method

.method public set(II)Lmiui/date/Calendar;
    .registers 11

    const-string v0, "]: "

    const-string v1, "-"

    const-string v2, "value is out of date range ["

    const/4 v3, 0x6

    if-ne p1, v3, :cond_a3

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-gez p2, :cond_42

    neg-int p2, p2

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, v6

    invoke-static {v0}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v0

    if-ne p2, v0, :cond_1f

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput v4, v0, v5

    goto :goto_7d

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has no such leap month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v7

    if-ge p2, v7, :cond_78

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v7

    if-gt p2, v7, :cond_4f

    goto :goto_78

    :cond_4f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_78
    :goto_78
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x0

    aput v1, v0, v5

    :goto_7d
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aput p2, v0, v3

    aget v1, v0, v5

    if-ne v1, v4, :cond_8c

    aget v0, v0, v6

    invoke-static {v0}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v0

    goto :goto_94

    :cond_8c
    aget v1, v0, v6

    aget v0, v0, v3

    invoke-static {v1, v0}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v0

    :goto_94
    nop

    iget-object v1, p0, Lmiui/date/Calendar;->mFields:[I

    const/16 v2, 0xa

    aget v3, v1, v2

    if-le v3, v0, :cond_9f

    aput v0, v1, v2

    :cond_9f
    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    return-object p0

    :cond_a3
    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v3

    if-ge p2, v3, :cond_d9

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v3

    if-gt p2, v3, :cond_b0

    goto :goto_d9

    :cond_b0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d9
    :goto_d9
    :try_start_d9
    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    aget v0, v0, p1

    sub-int v0, p2, v0

    invoke-virtual {p0, p1, v0}, Lmiui/date/Calendar;->add(II)Lmiui/date/Calendar;
    :try_end_e2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d9 .. :try_end_e2} :catch_e4

    nop

    return-object p0

    :catch_e4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported set field:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(IIIIIII)Lmiui/date/Calendar;
    .registers 11

    const-string v0, "Year "

    if-ltz p2, :cond_cb

    const/16 v1, 0xb

    if-gt p2, v1, :cond_cb

    if-lez p3, :cond_a6

    invoke-virtual {p0, p1}, Lmiui/date/Calendar;->isLeapYear(I)Z

    move-result v1

    invoke-static {v1, p2}, Lmiui/date/Calendar;->daysInMonth(ZI)I

    move-result v1

    if-gt p3, v1, :cond_a6

    if-ltz p4, :cond_8f

    const/16 v0, 0x17

    if-gt p4, v0, :cond_8f

    if-ltz p5, :cond_78

    const/16 v0, 0x3b

    if-gt p5, v0, :cond_78

    if-ltz p6, :cond_61

    if-gt p6, v0, :cond_61

    if-ltz p7, :cond_4a

    const/16 v0, 0x3e7

    if-gt p7, v0, :cond_4a

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/16 v1, 0x9

    aput p3, v0, v1

    const/16 v1, 0x12

    aput p4, v0, v1

    const/16 v1, 0x14

    aput p5, v0, v1

    const/16 v1, 0x15

    aput p6, v0, v1

    const/16 v1, 0x16

    aput p7, v0, v1

    invoke-direct {p0}, Lmiui/date/Calendar;->onSolarDateChange()V

    return-object p0

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid millisecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " month "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has no day "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cb
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has no month "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setChineseTime(IIIZIIII)Lmiui/date/Calendar;
    .registers 14

    const/16 v0, 0x76c

    if-lt p1, v0, :cond_142

    const/16 v0, 0x834

    if-gt p1, v0, :cond_142

    const-string v0, "Year "

    if-ltz p2, :cond_125

    const/16 v1, 0xb

    if-gt p2, v1, :cond_125

    if-eqz p4, :cond_36

    invoke-static {p1}, Lmiui/date/Calendar;->leapChineseMonth(I)I

    move-result v1

    if-ne v1, p2, :cond_19

    goto :goto_36

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has no leap month "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    :goto_36
    const-string v1, " has no day "

    const-string v2, " month "

    if-eqz p4, :cond_66

    if-lez p3, :cond_45

    invoke-static {p1}, Lmiui/date/Calendar;->leapDaysInChineseYear(I)I

    move-result v3

    if-gt p3, v3, :cond_45

    goto :goto_6e

    :cond_45
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_66
    if-lez p3, :cond_104

    invoke-static {p1, p2}, Lmiui/date/Calendar;->daysInChineseMonth(II)I

    move-result v3

    if-gt p3, v3, :cond_104

    :goto_6e
    if-ltz p5, :cond_ed

    const/16 v0, 0x17

    if-gt p5, v0, :cond_ed

    if-ltz p6, :cond_d6

    const/16 v0, 0x3b

    if-gt p6, v0, :cond_d6

    if-ltz p7, :cond_bf

    if-gt p7, v0, :cond_bf

    if-ltz p8, :cond_a8

    const/16 v0, 0x3e8

    if-gt p8, v0, :cond_a8

    iget-object v0, p0, Lmiui/date/Calendar;->mFields:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/16 v1, 0xa

    aput p3, v0, v1

    const/16 v1, 0x8

    aput p4, v0, v1

    const/16 v1, 0x12

    aput p5, v0, v1

    const/16 v1, 0x14

    aput p6, v0, v1

    const/16 v1, 0x15

    aput p7, v0, v1

    const/16 v1, 0x16

    aput p8, v0, v1

    invoke-direct {p0}, Lmiui/date/Calendar;->onChineseDateChange()V

    return-object p0

    :cond_a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid millisecond "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ed
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_104
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_125
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has no month "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date out of range [1900 - 2100] expected, but year is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGregorianChange(J)V
    .registers 9

    iput-wide p1, p0, Lmiui/date/Calendar;->gregorianCutover:J

    new-instance v0, Lmiui/date/Calendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/date/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lmiui/date/Calendar;->changeYear:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_24

    iget v3, p0, Lmiui/date/Calendar;->changeYear:I

    rsub-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmiui/date/Calendar;->changeYear:I

    :cond_24
    iget v3, p0, Lmiui/date/Calendar;->changeYear:I

    div-int/lit8 v4, v3, 0x64

    div-int/lit16 v5, v3, 0x190

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lmiui/date/Calendar;->julianError:I

    add-int/lit16 v5, v3, -0x7d0

    div-int/lit16 v5, v5, 0x190

    add-int/2addr v5, v4

    add-int/lit16 v3, v3, -0x7d0

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v5, v3

    iput v5, p0, Lmiui/date/Calendar;->julianSkew:I

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lmiui/date/Calendar;->julianSkew:I

    if-ge v3, v4, :cond_4e

    add-int/lit8 v2, v3, -0x1

    iput v2, p0, Lmiui/date/Calendar;->currentYearSkew:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v1

    iput v4, p0, Lmiui/date/Calendar;->lastYearSkew:I

    goto :goto_52

    :cond_4e
    iput v2, p0, Lmiui/date/Calendar;->lastYearSkew:I

    iput v4, p0, Lmiui/date/Calendar;->currentYearSkew:I

    :goto_52
    return-void
.end method

.method public setTimeInMillis(J)Lmiui/date/Calendar;
    .registers 3

    iput-wide p1, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_18
    iput-object p1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-direct {p0}, Lmiui/date/Calendar;->compute()V

    :cond_1d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/date/Calendar;->mMillisecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/date/Calendar;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_2e
    const/16 v2, 0x19

    if-ge v1, v2, :cond_4d

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lmiui/date/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/date/Calendar;->mFields:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_4d
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method
