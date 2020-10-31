.class public Lmiui/util/LunarDate;
.super Ljava/lang/Object;
.source "LunarDate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/LunarDate$BirthHoroscope;
    }
.end annotation


# static fields
.field public static final MAX_LUNAR_YEAR:I = 0x802

.field public static final MIN_LUNAR_YEAR:I = 0x76c

.field private static final iSolarLunarOffsetTable:[C

.field private static final luYearData:[J

.field private static lunarHolidays:[I

.field private static lunarHolidaysTable:[I

.field private static final sEasterCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static solarHolidays:[I

.field private static solarHolidaysTable:[I

.field private static solarHolidaysTable_HK:[I

.field private static solarHolidaysTable_TW:[I

.field private static solarHolidays_HK:[I

.field private static solarHolidays_TW:[I

.field private static solarTerms:[I

.field private static solarTermsTable:[C


# direct methods
.method static constructor <clinit>()V
    .registers 20

    const/16 v0, 0x96

    new-array v1, v0, [J

    fill-array-data v1, :array_188

    sput-object v1, Lmiui/util/LunarDate;->luYearData:[J

    new-array v0, v0, [C

    fill-array-data v0, :array_3e4

    sput-object v0, Lmiui/util/LunarDate;->iSolarLunarOffsetTable:[C

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_47e

    sput-object v1, Lmiui/util/LunarDate;->lunarHolidaysTable:[I

    const/16 v1, 0xd

    new-array v2, v1, [I

    fill-array-data v2, :array_490

    sput-object v2, Lmiui/util/LunarDate;->solarHolidaysTable:[I

    const/16 v2, 0x11

    new-array v3, v2, [I

    fill-array-data v3, :array_4ae

    sput-object v3, Lmiui/util/LunarDate;->solarHolidaysTable_TW:[I

    const/4 v3, 0x6

    new-array v4, v3, [I

    fill-array-data v4, :array_4d4

    sput-object v4, Lmiui/util/LunarDate;->solarHolidaysTable_HK:[I

    new-array v4, v0, [I

    sget v5, Lcom/miui/system/internal/R$string;->the_spring_festival:I

    const/4 v6, 0x0

    aput v5, v4, v6

    sget v5, Lcom/miui/system/internal/R$string;->lantern_festival:I

    const/4 v7, 0x1

    aput v5, v4, v7

    sget v5, Lcom/miui/system/internal/R$string;->the_dragon_boat_festival:I

    const/4 v8, 0x2

    aput v5, v4, v8

    sget v5, Lcom/miui/system/internal/R$string;->double_seventh_day:I

    const/4 v9, 0x3

    aput v5, v4, v9

    sget v5, Lcom/miui/system/internal/R$string;->the_mid_autumn_festival:I

    const/4 v10, 0x4

    aput v5, v4, v10

    sget v5, Lcom/miui/system/internal/R$string;->the_double_ninth_festival:I

    const/4 v11, 0x5

    aput v5, v4, v11

    sget v5, Lcom/miui/system/internal/R$string;->the_laba_rice_porridge_festival:I

    aput v5, v4, v3

    sput-object v4, Lmiui/util/LunarDate;->lunarHolidays:[I

    new-array v4, v1, [I

    sget v5, Lcom/miui/system/internal/R$string;->new_years_day:I

    aput v5, v4, v6

    sget v5, Lcom/miui/system/internal/R$string;->valentines_day:I

    aput v5, v4, v7

    sget v5, Lcom/miui/system/internal/R$string;->international_womens_day:I

    aput v5, v4, v8

    sget v5, Lcom/miui/system/internal/R$string;->arbor_day:I

    aput v5, v4, v9

    sget v5, Lcom/miui/system/internal/R$string;->fools_day:I

    aput v5, v4, v10

    sget v5, Lcom/miui/system/internal/R$string;->labour_day:I

    aput v5, v4, v11

    sget v5, Lcom/miui/system/internal/R$string;->chinese_youth_day:I

    aput v5, v4, v3

    sget v5, Lcom/miui/system/internal/R$string;->childrens_day:I

    aput v5, v4, v0

    sget v5, Lcom/miui/system/internal/R$string;->partys_day:I

    const/16 v12, 0x8

    aput v5, v4, v12

    sget v5, Lcom/miui/system/internal/R$string;->the_armys_day:I

    const/16 v13, 0x9

    aput v5, v4, v13

    sget v5, Lcom/miui/system/internal/R$string;->teachers_day:I

    const/16 v14, 0xa

    aput v5, v4, v14

    sget v5, Lcom/miui/system/internal/R$string;->national_day:I

    const/16 v15, 0xb

    aput v5, v4, v15

    sget v5, Lcom/miui/system/internal/R$string;->christmas_day:I

    const/16 v16, 0xc

    aput v5, v4, v16

    sput-object v4, Lmiui/util/LunarDate;->solarHolidays:[I

    new-array v4, v2, [I

    sget v5, Lcom/miui/system/internal/R$string;->new_years_day:I

    aput v5, v4, v6

    sget v5, Lcom/miui/system/internal/R$string;->valentines_day:I

    aput v5, v4, v7

    sget v5, Lcom/miui/system/internal/R$string;->peace_day:I

    aput v5, v4, v8

    sget v5, Lcom/miui/system/internal/R$string;->international_womens_day:I

    aput v5, v4, v9

    sget v5, Lcom/miui/system/internal/R$string;->arbor_day:I

    aput v5, v4, v10

    sget v5, Lcom/miui/system/internal/R$string;->anti_aggression_day:I

    aput v5, v4, v11

    sget v5, Lcom/miui/system/internal/R$string;->tw_youth_day:I

    aput v5, v4, v3

    sget v5, Lcom/miui/system/internal/R$string;->tw_childrens_day:I

    aput v5, v4, v0

    sget v5, Lcom/miui/system/internal/R$string;->labour_day:I

    aput v5, v4, v12

    sget v5, Lcom/miui/system/internal/R$string;->anniversary_of_lifting_martial_law:I

    aput v5, v4, v13

    sget v5, Lcom/miui/system/internal/R$string;->armed_forces_day:I

    aput v5, v4, v14

    sget v5, Lcom/miui/system/internal/R$string;->teachers_day:I

    aput v5, v4, v15

    sget v5, Lcom/miui/system/internal/R$string;->national_day:I

    aput v5, v4, v16

    sget v5, Lcom/miui/system/internal/R$string;->united_nations_day:I

    aput v5, v4, v1

    sget v5, Lcom/miui/system/internal/R$string;->retrocession_day:I

    const/16 v17, 0xe

    aput v5, v4, v17

    sget v5, Lcom/miui/system/internal/R$string;->national_father_day:I

    const/16 v18, 0xf

    aput v5, v4, v18

    sget v5, Lcom/miui/system/internal/R$string;->christmas_day:I

    const/16 v19, 0x10

    aput v5, v4, v19

    sput-object v4, Lmiui/util/LunarDate;->solarHolidays_TW:[I

    new-array v4, v3, [I

    sget v5, Lcom/miui/system/internal/R$string;->new_years_day:I

    aput v5, v4, v6

    sget v5, Lcom/miui/system/internal/R$string;->valentines_day:I

    aput v5, v4, v7

    sget v5, Lcom/miui/system/internal/R$string;->labour_day:I

    aput v5, v4, v8

    sget v5, Lcom/miui/system/internal/R$string;->hksar_establishment_day:I

    aput v5, v4, v9

    sget v5, Lcom/miui/system/internal/R$string;->national_day:I

    aput v5, v4, v10

    sget v5, Lcom/miui/system/internal/R$string;->christmas_day:I

    aput v5, v4, v11

    sput-object v4, Lmiui/util/LunarDate;->solarHolidays_HK:[I

    const/16 v4, 0x18

    new-array v4, v4, [I

    sget v5, Lcom/miui/system/internal/R$string;->slight_cold:I

    aput v5, v4, v6

    sget v5, Lcom/miui/system/internal/R$string;->great_cold:I

    aput v5, v4, v7

    sget v5, Lcom/miui/system/internal/R$string;->spring_begins:I

    aput v5, v4, v8

    sget v5, Lcom/miui/system/internal/R$string;->the_rains:I

    aput v5, v4, v9

    sget v5, Lcom/miui/system/internal/R$string;->insects_awaken:I

    aput v5, v4, v10

    sget v5, Lcom/miui/system/internal/R$string;->vernal_equinox:I

    aput v5, v4, v11

    sget v5, Lcom/miui/system/internal/R$string;->clear_and_bright:I

    aput v5, v4, v3

    sget v3, Lcom/miui/system/internal/R$string;->grain_rain:I

    aput v3, v4, v0

    sget v0, Lcom/miui/system/internal/R$string;->summer_begins:I

    aput v0, v4, v12

    sget v0, Lcom/miui/system/internal/R$string;->grain_buds:I

    aput v0, v4, v13

    sget v0, Lcom/miui/system/internal/R$string;->grain_in_ear:I

    aput v0, v4, v14

    sget v0, Lcom/miui/system/internal/R$string;->summer_solstice:I

    aput v0, v4, v15

    sget v0, Lcom/miui/system/internal/R$string;->slight_heat:I

    aput v0, v4, v16

    sget v0, Lcom/miui/system/internal/R$string;->great_heat:I

    aput v0, v4, v1

    sget v0, Lcom/miui/system/internal/R$string;->autumn_begins:I

    aput v0, v4, v17

    sget v0, Lcom/miui/system/internal/R$string;->stopping_the_heat:I

    aput v0, v4, v18

    sget v0, Lcom/miui/system/internal/R$string;->white_dews:I

    aput v0, v4, v19

    sget v0, Lcom/miui/system/internal/R$string;->autumn_equinox:I

    aput v0, v4, v2

    sget v0, Lcom/miui/system/internal/R$string;->cold_dews:I

    const/16 v1, 0x12

    aput v0, v4, v1

    sget v0, Lcom/miui/system/internal/R$string;->hoar_frost_falls:I

    const/16 v1, 0x13

    aput v0, v4, v1

    sget v0, Lcom/miui/system/internal/R$string;->winter_begins:I

    const/16 v1, 0x14

    aput v0, v4, v1

    sget v0, Lcom/miui/system/internal/R$string;->light_snow:I

    const/16 v1, 0x15

    aput v0, v4, v1

    sget v0, Lcom/miui/system/internal/R$string;->heavy_snow:I

    const/16 v1, 0x16

    aput v0, v4, v1

    sget v0, Lcom/miui/system/internal/R$string;->winter_solstice:I

    const/16 v1, 0x17

    aput v0, v4, v1

    sput-object v4, Lmiui/util/LunarDate;->solarTerms:[I

    const/16 v0, 0x708

    new-array v0, v0, [C

    fill-array-data v0, :array_4e4

    sput-object v0, Lmiui/util/LunarDate;->solarTermsTable:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/LunarDate;->sEasterCache:Ljava/util/HashMap;

    return-void

    nop

    :array_188
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
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
        0x195a6
        0x95b0
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
        0x15176
        0x52b0
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
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    :array_3e4
    .array-data 2
        0x31s
        0x26s
        0x1cs
        0x2es
        0x22s
        0x18s
        0x2bs
        0x20s
        0x15s
        0x28s
        0x1ds
        0x30s
        0x24s
        0x19s
        0x2cs
        0x21s
        0x16s
        0x29s
        0x1fs
        0x32s
        0x26s
        0x1bs
        0x2es
        0x23s
        0x17s
        0x2bs
        0x20s
        0x16s
        0x28s
        0x1ds
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x22s
        0x17s
        0x29s
        0x1es
        0x31s
        0x26s
        0x1as
        0x2ds
        0x23s
        0x18s
        0x2bs
        0x20s
        0x15s
        0x28s
        0x1cs
        0x2fs
        0x24s
        0x1as
        0x2cs
        0x21s
        0x17s
        0x2as
        0x1es
        0x30s
        0x26s
        0x1bs
        0x2ds
        0x23s
        0x18s
        0x2bs
        0x20s
        0x14s
        0x27s
        0x1ds
        0x2fs
        0x24s
        0x1as
        0x2ds
        0x21s
        0x16s
        0x29s
        0x1es
        0x30s
        0x25s
        0x1bs
        0x2es
        0x23s
        0x18s
        0x2bs
        0x20s
        0x32s
        0x27s
        0x1cs
        0x2fs
        0x24s
        0x1as
        0x2ds
        0x22s
        0x16s
        0x28s
        0x1es
        0x31s
        0x25s
        0x1bs
        0x2es
        0x23s
        0x17s
        0x2as
        0x1fs
        0x15s
        0x27s
        0x1cs
        0x30s
        0x25s
        0x19s
        0x2cs
        0x21s
        0x16s
        0x28s
        0x1es
        0x31s
        0x26s
        0x1bs
        0x2es
        0x23s
        0x18s
        0x2as
        0x1fs
        0x15s
        0x28s
        0x1cs
        0x2fs
        0x24s
        0x19s
        0x2bs
        0x21s
        0x16s
        0x29s
        0x1es
        0x31s
        0x26s
        0x1bs
        0x2ds
        0x22s
        0x17s
        0x2as
        0x1fs
        0x15s
        0x28s
        0x1ds
        0x2fs
        0x24s
        0x19s
        0x2cs
        0x20s
        0x16s
    .end array-data

    :array_47e
    .array-data 4
        0x65
        0x73
        0x1f9
        0x2c3
        0x32f
        0x38d
        0x4b8
    .end array-data

    :array_490
    .array-data 4
        0x65
        0xd6
        0x134
        0x138
        0x191
        0x1f5
        0x1f8
        0x259
        0x2bd
        0x321
        0x38e
        0x3e9
        0x4c9
    .end array-data

    :array_4ae
    .array-data 4
        0x65
        0xd6
        0xe4
        0x134
        0x138
        0x13a
        0x149
        0x194
        0x1f5
        0x2cb
        0x387
        0x3a0
        0x3f2
        0x400
        0x401
        0x458
        0x4c9
    .end array-data

    :array_4d4
    .array-data 4
        0x65
        0xd6
        0x1f5
        0x2bd
        0x3e9
        0x4c9
    .end array-data

    :array_4e4
    .array-data 2
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x87s
        0x96s
        0x87s
        0x87s
        0x79s
        0x69s
        0x69s
        0x69s
        0x78s
        0x78s
        0x86s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x87s
        0x96s
        0x87s
        0x87s
        0x79s
        0x69s
        0x69s
        0x69s
        0x78s
        0x78s
        0x86s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x87s
        0x96s
        0x87s
        0x87s
        0x79s
        0x69s
        0x69s
        0x69s
        0x78s
        0x78s
        0x86s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x97s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x69s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa6s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa5s
        0x97s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x69s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x69s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x87s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0x96s
        0x96s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x79s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x79s
        0x79s
        0x79s
        0x69s
        0x78s
        0x78s
        0x96s
        0xa5s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x68s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa5s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x79s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb5s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x97s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x89s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x78s
        0x87s
        0x96s
        0xb4s
        0x96s
        0xa6s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xa4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x78s
        0x79s
        0x78s
        0x69s
        0x78s
        0x77s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x79s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x86s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x76s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x69s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x78s
        0x87s
        0x96s
        0xb4s
        0xa5s
        0xb5s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x97s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0xa6s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb4s
        0xa5s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x79s
        0x77s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0x96s
        0x96s
        0x88s
        0x78s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x78s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xa5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x88s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x88s
        0x87s
        0x96s
        0xa5s
        0xc3s
        0xa5s
        0xb4s
        0xa5s
        0xa6s
        0x87s
        0x88s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xb3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x88s
        0x78s
        0x87s
        0x87s
        0xa5s
        0xb4s
        0x96s
        0xa5s
        0xa6s
        0x96s
        0x88s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
        0x95s
        0xb4s
        0xa5s
        0xb4s
        0xa5s
        0xa5s
        0x97s
        0x87s
        0x87s
        0x88s
        0x86s
        0x96s
        0xa4s
        0xc3s
        0xa5s
        0xa5s
        0xa5s
        0xa6s
        0x97s
        0x87s
        0x87s
        0x78s
        0x87s
        0x86s
        0xa5s
        0xc3s
        0xa5s
        0xb5s
        0xa6s
        0xa6s
        0x87s
        0x88s
        0x78s
        0x78s
        0x87s
        0x87s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .registers 2

    invoke-static {p0}, Lmiui/util/LunarDate;->yrDays(I)I

    move-result v0

    return v0
.end method

.method public static final calLunar(III)[J
    .registers 20

    const/4 v0, 0x7

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {p0 .. p2}, Lmiui/util/LunarDate;->getDayOffset(III)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x28

    add-long/2addr v6, v4

    const/4 v8, 0x5

    aput-wide v6, v0, v8

    const-wide/16 v6, 0xe

    const/4 v8, 0x4

    aput-wide v6, v0, v8

    const/16 v1, 0x76c

    :goto_18
    const/16 v6, 0x802

    const-wide/16 v9, 0xc

    const-wide/16 v11, 0x0

    if-ge v1, v6, :cond_32

    cmp-long v6, v4, v11

    if-lez v6, :cond_32

    invoke-static {v1}, Lmiui/util/LunarDate;->yrDays(I)I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    aget-wide v6, v0, v8

    add-long/2addr v6, v9

    aput-wide v6, v0, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_32
    cmp-long v6, v4, v11

    if-gez v6, :cond_3f

    int-to-long v6, v2

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, -0x1

    aget-wide v6, v0, v8

    sub-long/2addr v6, v9

    aput-wide v6, v0, v8

    :cond_3f
    int-to-long v6, v1

    const/4 v9, 0x0

    aput-wide v6, v0, v9

    const/4 v6, 0x3

    add-int/lit16 v7, v1, -0x748

    int-to-long v13, v7

    aput-wide v13, v0, v6

    invoke-static {v1}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v3

    const/4 v6, 0x6

    aput-wide v11, v0, v6

    const/4 v1, 0x1

    :goto_51
    const/16 v7, 0xd

    const-wide/16 v13, 0x1

    if-ge v1, v7, :cond_9f

    cmp-long v7, v4, v11

    if-lez v7, :cond_9f

    if-lez v3, :cond_73

    add-int/lit8 v7, v3, 0x1

    if-ne v1, v7, :cond_73

    aget-wide v15, v0, v6

    cmp-long v7, v15, v11

    if-nez v7, :cond_73

    add-int/lit8 v1, v1, -0x1

    aput-wide v13, v0, v6

    aget-wide v11, v0, v9

    long-to-int v7, v11

    invoke-static {v7}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v2

    goto :goto_7a

    :cond_73
    aget-wide v10, v0, v9

    long-to-int v7, v10

    invoke-static {v7, v1}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v2

    :goto_7a
    aget-wide v10, v0, v6

    cmp-long v7, v10, v13

    if-nez v7, :cond_89

    add-int/lit8 v7, v3, 0x1

    if-ne v1, v7, :cond_89

    const-wide/16 v10, 0x0

    aput-wide v10, v0, v6

    goto :goto_8b

    :cond_89
    const-wide/16 v10, 0x0

    :goto_8b
    int-to-long v13, v2

    sub-long/2addr v4, v13

    aget-wide v12, v0, v6

    cmp-long v7, v12, v10

    if-nez v7, :cond_9a

    aget-wide v10, v0, v8

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    aput-wide v10, v0, v8

    :cond_9a
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v11, 0x0

    goto :goto_51

    :cond_9f
    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-nez v7, :cond_c1

    if-lez v3, :cond_c1

    add-int/lit8 v7, v3, 0x1

    if-ne v1, v7, :cond_c1

    aget-wide v9, v0, v6

    const-wide/16 v11, 0x1

    cmp-long v7, v9, v11

    if-nez v7, :cond_b8

    const-wide/16 v9, 0x0

    aput-wide v9, v0, v6

    goto :goto_c1

    :cond_b8
    aput-wide v11, v0, v6

    add-int/lit8 v1, v1, -0x1

    aget-wide v6, v0, v8

    sub-long/2addr v6, v11

    aput-wide v6, v0, v8

    :cond_c1
    :goto_c1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_d3

    int-to-long v6, v2

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, -0x1

    aget-wide v6, v0, v8

    const-wide/16 v9, 0x1

    sub-long/2addr v6, v9

    aput-wide v6, v0, v8

    goto :goto_d5

    :cond_d3
    const-wide/16 v9, 0x1

    :goto_d5
    int-to-long v6, v1

    const/4 v8, 0x1

    aput-wide v6, v0, v8

    const/4 v6, 0x2

    add-long v13, v4, v9

    aput-wide v13, v0, v6

    return-object v0
.end method

.method public static formatLunarDate(III)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    if-lez p0, :cond_f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final getDayOffset(III)I
    .registers 9

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clear()V

    const/16 v2, 0x76c

    :goto_c
    if-ge v2, p0, :cond_1c

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_17

    add-int/lit16 v0, v0, 0x16e

    goto :goto_19

    :cond_17
    add-int/lit16 v0, v0, 0x16d

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1c
    invoke-virtual {v1, p0, p1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x76c

    const/4 v4, 0x0

    const/16 v5, 0x1f

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/GregorianCalendar;->set(III)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    return v0
.end method

.method public static final getDayString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/16 v1, 0xa

    if-ne p1, v1, :cond_d

    sget v1, Lcom/miui/system/internal/R$string;->lunar_chu_shi:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    const/16 v1, 0x14

    if-ne p1, v1, :cond_18

    sget v1, Lcom/miui/system/internal/R$string;->lunar_er_shi:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_18
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_23

    sget v1, Lcom/miui/system/internal/R$string;->lunar_san_shi:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_23
    div-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_2d

    sget v2, Lcom/miui/system/internal/R$string;->lunar_chu:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    sget v2, Lcom/miui/system/internal/R$string;->lunar_shi:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_36
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    sget v2, Lcom/miui/system/internal/R$string;->lunar_nian:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    const/4 v2, 0x3

    if-ne v1, v2, :cond_48

    sget v2, Lcom/miui/system/internal/R$string;->lunar_san:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_48
    rem-int/lit8 v2, p1, 0xa

    packed-switch v2, :pswitch_data_11a

    goto/16 :goto_118

    :pswitch_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_jiu:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_118

    :pswitch_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_ba:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_118

    :pswitch_7d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_qi:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_118

    :pswitch_94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_liu:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_118

    :pswitch_aa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_wu:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_118

    :pswitch_c0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_si:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_118

    :pswitch_d6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_san:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_118

    :pswitch_ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_er:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_118

    :pswitch_102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/miui/system/internal/R$string;->lunar_yi:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_118
    return-object v0

    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_102
        :pswitch_ec
        :pswitch_d6
        :pswitch_c0
        :pswitch_aa
        :pswitch_94
        :pswitch_7d
        :pswitch_66
        :pswitch_4f
    .end packed-switch
.end method

.method private static getDigitString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_4c

    const-string v0, ""

    return-object v0

    :pswitch_6
    sget v0, Lcom/miui/system/internal/R$string;->lunar_jiu:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_d
    sget v0, Lcom/miui/system/internal/R$string;->lunar_ba:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_14
    sget v0, Lcom/miui/system/internal/R$string;->lunar_qi:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1b
    sget v0, Lcom/miui/system/internal/R$string;->lunar_liu:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_22
    sget v0, Lcom/miui/system/internal/R$string;->lunar_wu:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_29
    sget v0, Lcom/miui/system/internal/R$string;->lunar_si:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_30
    sget v0, Lcom/miui/system/internal/R$string;->lunar_san:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_37
    sget v0, Lcom/miui/system/internal/R$string;->lunar_er:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3e
    sget v0, Lcom/miui/system/internal/R$string;->lunar_yi:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_45
    sget v0, Lcom/miui/system/internal/R$string;->lunar_ling:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_1b
        :pswitch_14
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method

.method public static getHoliday(Landroid/content/res/Resources;[JLjava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_2
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x5

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "TW"

    invoke-static {v7}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v7
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_92

    const-string v8, "HK"

    if-eqz v7, :cond_20

    :try_start_19
    sget-object v7, Lmiui/util/LunarDate;->solarHolidaysTable_TW:[I

    move-object v5, v7

    sget-object v7, Lmiui/util/LunarDate;->solarHolidays_TW:[I

    move-object v6, v7

    goto :goto_33

    :cond_20
    invoke-static {v8}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    sget-object v7, Lmiui/util/LunarDate;->solarHolidaysTable_HK:[I

    move-object v5, v7

    sget-object v7, Lmiui/util/LunarDate;->solarHolidays_HK:[I

    move-object v6, v7

    goto :goto_33

    :cond_2d
    sget-object v7, Lmiui/util/LunarDate;->solarHolidaysTable:[I

    move-object v5, v7

    sget-object v7, Lmiui/util/LunarDate;->solarHolidays:[I

    move-object v6, v7

    :goto_33
    array-length v7, v5

    const/4 v9, 0x0

    :goto_35
    if-ge v9, v7, :cond_4d

    aget v10, v5, v9

    div-int/lit8 v10, v10, 0x64

    if-ne v10, v2, :cond_4a

    aget v10, v5, v9

    rem-int/lit8 v10, v10, 0x64

    if-ne v10, v4, :cond_4a

    aget v1, v6, v9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_4d
    invoke-static {v8}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-static {p0, p2}, Lmiui/util/LunarDate;->isEasterDay(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5e

    return-object v8

    :cond_5e
    const/4 v8, 0x6

    aget-wide v8, p1, v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_68

    return-object v0

    :cond_68
    aget-wide v8, p1, v3

    long-to-int v3, v8

    aget-wide v8, p1, v1

    long-to-int v1, v8

    sget-object v8, Lmiui/util/LunarDate;->lunarHolidaysTable:[I

    array-length v8, v8

    move v7, v8

    const/4 v8, 0x0

    :goto_73
    if-ge v8, v7, :cond_91

    sget-object v9, Lmiui/util/LunarDate;->lunarHolidaysTable:[I

    aget v9, v9, v8

    div-int/lit8 v9, v9, 0x64

    if-ne v9, v3, :cond_8e

    sget-object v9, Lmiui/util/LunarDate;->lunarHolidaysTable:[I

    aget v9, v9, v8

    rem-int/lit8 v9, v9, 0x64

    if-ne v9, v1, :cond_8e

    sget-object v9, Lmiui/util/LunarDate;->lunarHolidays:[I

    aget v9, v9, v8

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_8d} :catch_92

    return-object v0

    :cond_8e
    add-int/lit8 v8, v8, 0x1

    goto :goto_73

    :cond_91
    goto :goto_93

    :catch_92
    move-exception v1

    :goto_93
    return-object v0
.end method

.method public static getLunarBirthdays(III)[[I
    .registers 13

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-le p1, v3, :cond_3e

    add-int/lit8 v3, p1, -0xc

    invoke-static {p0}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v6

    if-ne v3, v6, :cond_39

    new-array v3, v4, [[I

    invoke-static {p0}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p0, p1, v6}, Lmiui/util/LunarDate;->lunarToSolar(III)[I

    move-result-object v7

    new-array v8, v2, [I

    aget v9, v7, v5

    aput v9, v8, v5

    aget v9, v7, v0

    sub-int/2addr v9, v0

    aput v9, v8, v0

    aget v9, v7, v4

    aput v9, v8, v4

    if-ne v6, p2, :cond_33

    move v9, v5

    goto :goto_34

    :cond_33
    move v9, v0

    :goto_34
    aput v9, v8, v1

    aput-object v8, v3, v5

    goto :goto_3b

    :cond_39
    new-array v3, v0, [[I

    :goto_3b
    add-int/lit8 p1, p1, -0xc

    goto :goto_40

    :cond_3e
    new-array v3, v0, [[I

    :goto_40
    invoke-static {p0, p1}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p0, p1, v6}, Lmiui/util/LunarDate;->lunarToSolar(III)[I

    move-result-object v7

    array-length v8, v3

    sub-int/2addr v8, v0

    new-array v2, v2, [I

    aget v9, v7, v5

    aput v9, v2, v5

    aget v9, v7, v0

    sub-int/2addr v9, v0

    aput v9, v2, v0

    aget v9, v7, v4

    aput v9, v2, v4

    if-ne v6, p2, :cond_60

    move v0, v5

    :cond_60
    aput v0, v2, v1

    aput-object v2, v3, v8

    return-object v3
.end method

.method private static getLunarNewYearOffsetDays(III)I
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v1

    if-lez v1, :cond_11

    add-int/lit8 v2, p1, -0xc

    if-ne v1, v2, :cond_11

    move p1, v1

    invoke-static {p0, p1}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    const/4 v2, 0x1

    :goto_12
    if-ge v2, p1, :cond_23

    invoke-static {p0, v2}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v3

    add-int/2addr v0, v3

    if-ne v2, v1, :cond_20

    invoke-static {p0}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_23
    add-int/lit8 v2, p2, -0x1

    add-int/2addr v0, v2

    return v0
.end method

.method public static getLunarString(Landroid/content/res/Resources;III)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-lez p1, :cond_17

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/system/internal/R$string;->lunar_year:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/16 v1, 0xc

    if-lt p2, v1, :cond_26

    sget v1, Lcom/miui/system/internal/R$string;->lunar_leap:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0xc

    :cond_26
    add-int/lit8 v1, p2, 0x1

    invoke-static {p0, v1}, Lmiui/util/LunarDate;->getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/miui/system/internal/R$string;->lunar_yue:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p3}, Lmiui/util/LunarDate;->getDayString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0xc

    if-le p1, v1, :cond_6

    return-object v0

    :cond_6
    packed-switch p1, :pswitch_data_62

    return-object v0

    :pswitch_a
    sget v0, Lcom/miui/system/internal/R$string;->lunar_shi_er:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_11
    sget v0, Lcom/miui/system/internal/R$string;->lunar_shi_yi:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    sget v0, Lcom/miui/system/internal/R$string;->lunar_shi:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    sget v0, Lcom/miui/system/internal/R$string;->lunar_jiu:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_26
    sget v0, Lcom/miui/system/internal/R$string;->lunar_ba:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2d
    sget v0, Lcom/miui/system/internal/R$string;->lunar_qi:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_34
    sget v0, Lcom/miui/system/internal/R$string;->lunar_liu:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3b
    sget v0, Lcom/miui/system/internal/R$string;->lunar_wu:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_42
    sget v0, Lcom/miui/system/internal/R$string;->lunar_si:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_49
    sget v0, Lcom/miui/system/internal/R$string;->lunar_san:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_50
    sget v0, Lcom/miui/system/internal/R$string;->lunar_er:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_57
    sget v0, Lcom/miui/system/internal/R$string;->lunar_zheng:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5e
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_57
        :pswitch_50
        :pswitch_49
        :pswitch_42
        :pswitch_3b
        :pswitch_34
        :pswitch_2d
        :pswitch_26
        :pswitch_1f
        :pswitch_18
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method

.method public static getNextLunarBirthday(II)J
    .registers 19

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v1, v2, v3}, Lmiui/util/LunarDate;->calLunar(III)[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    long-to-int v3, v3

    iput v2, v0, Landroid/text/format/Time;->second:I

    iput v2, v0, Landroid/text/format/Time;->minute:I

    iput v2, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    :goto_25
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v8, v6

    if-nez v10, :cond_67

    const/16 v10, 0x76c

    if-lt v3, v10, :cond_67

    const/16 v10, 0x802

    if-ge v3, v10, :cond_67

    move/from16 v10, p0

    move/from16 v11, p1

    invoke-static {v3, v10, v11}, Lmiui/util/LunarDate;->getLunarBirthdays(III)[[I

    move-result-object v8

    array-length v9, v8

    move v12, v2

    :goto_40
    if-ge v12, v9, :cond_62

    aget-object v13, v8, v12

    const/4 v14, 0x2

    aget v14, v13, v14

    const/4 v15, 0x1

    aget v15, v13, v15

    move-object/from16 v16, v1

    aget v1, v13, v2

    invoke-virtual {v0, v14, v15, v1}, Landroid/text/format/Time;->set(III)V

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v14

    cmp-long v1, v14, v4

    if-ltz v1, :cond_5d

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_5d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    goto :goto_40

    :cond_62
    move-object/from16 v16, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_67
    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v16, v1

    cmp-long v1, v8, v6

    if-nez v1, :cond_73

    const-wide/16 v6, 0x0

    :cond_73
    return-wide v6
.end method

.method public static getSolarTerm(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Lmiui/util/LunarDate;->solarTermsTable:[C

    add-int/lit16 v6, v1, -0x76d

    mul-int/lit8 v6, v6, 0xc

    add-int/2addr v6, v2

    aget-char v4, v5, v6

    rem-int/lit8 v5, v4, 0x10

    add-int/lit8 v5, v5, 0xf

    if-ne v3, v5, :cond_2b

    sget-object v6, Lmiui/util/LunarDate;->solarTerms:[I

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    aget v0, v6, v7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    div-int/lit8 v0, v4, 0x10

    rsub-int/lit8 v0, v0, 0xf

    if-ne v3, v0, :cond_3c

    sget-object v5, Lmiui/util/LunarDate;->solarTerms:[I

    mul-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3c
    const/4 v5, 0x0

    return-object v5
.end method

.method static getSolarYearMonthDays(II)I
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3c

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xc

    if-ne p1, v0, :cond_19

    goto :goto_3c

    :cond_19
    const/4 v0, 0x4

    if-eq p1, v0, :cond_39

    const/4 v0, 0x6

    if-eq p1, v0, :cond_39

    const/16 v0, 0x9

    if-eq p1, v0, :cond_39

    const/16 v0, 0xb

    if-ne p1, v0, :cond_28

    goto :goto_39

    :cond_28
    const/4 v0, 0x2

    if-ne p1, v0, :cond_37

    invoke-static {p0}, Lmiui/util/LunarDate;->isSolarLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x1d

    return v0

    :cond_34
    const/16 v0, 0x1c

    return v0

    :cond_37
    const/4 v0, 0x0

    return v0

    :cond_39
    :goto_39
    const/16 v0, 0x1e

    return v0

    :cond_3c
    :goto_3c
    const/16 v0, 0x1f

    return v0
.end method

.method public static getString(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lmiui/util/LunarDate;->solar2lunar(Landroid/content/res/Resources;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYearString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, p1

    :goto_7
    rem-int/lit8 v1, v2, 0xa

    div-int/lit8 v2, v2, 0xa

    const/4 v3, 0x0

    invoke-static {p0, v1}, Lmiui/util/LunarDate;->getDigitString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    if-gtz v2, :cond_1a

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1a
    goto :goto_7
.end method

.method private static isEasterDay(Landroid/content/res/Resources;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lmiui/util/LunarDate;->sEasterCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    add-int/lit16 v3, v1, -0x76c

    rem-int/lit8 v4, v3, 0x13

    div-int/lit8 v5, v3, 0x4

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/lit8 v6, v4, 0x7

    add-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x13

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-int/lit8 v7, v4, 0xb

    add-int/lit8 v7, v7, 0x4

    sub-int/2addr v7, v6

    rem-int/lit8 v7, v7, 0x1d

    add-int v8, v3, v5

    add-int/lit8 v8, v8, 0x1f

    sub-int/2addr v8, v7

    rem-int/lit8 v8, v8, 0x7

    rsub-int/lit8 v9, v7, 0x19

    sub-int/2addr v9, v8

    sget-object v2, Lmiui/util/LunarDate;->sEasterCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    :cond_48
    sget-object v3, Lmiui/util/LunarDate;->sEasterCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_58
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v9, :cond_60

    const/4 v2, 0x3

    const/16 v3, 0x1f

    goto :goto_68

    :cond_60
    if-lez v9, :cond_65

    const/4 v2, 0x4

    move v3, v9

    goto :goto_68

    :cond_65
    const/4 v2, 0x3

    add-int/lit8 v3, v9, 0x1f

    :goto_68
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->setMonth(I)V

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->setDate(I)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/Date;->setMonth(I)V

    invoke-virtual {v5, v3}, Ljava/util/Date;->setDate(I)V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v6, v10

    long-to-int v6, v6

    const/4 v7, 0x0

    if-nez v6, :cond_9e

    sget v7, Lcom/miui/system/internal/R$string;->easter:I

    goto :goto_a2

    :cond_9e
    if-ne v6, v0, :cond_a1

    goto :goto_a2

    :cond_a1
    nop

    :goto_a2
    if-lez v7, :cond_a9

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a9
    const/4 v0, 0x0

    return-object v0
.end method

.method static isSolarLeapYear(I)Z
    .registers 2

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_8

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    :cond_8
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static lunarToSolar(III)[I
    .registers 10

    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-static {p0, p1, p2}, Lmiui/util/LunarDate;->getLunarNewYearOffsetDays(III)I

    move-result v1

    sget-object v2, Lmiui/util/LunarDate;->iSolarLunarOffsetTable:[C

    add-int/lit16 v3, p0, -0x76d

    aget-char v2, v2, v3

    add-int/2addr v1, v2

    invoke-static {p0}, Lmiui/util/LunarDate;->isSolarLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v2, 0x16e

    goto :goto_19

    :cond_17
    const/16 v2, 0x16d

    :goto_19
    if-lt v1, v2, :cond_1f

    add-int/lit8 v3, p0, 0x1

    sub-int/2addr v1, v2

    goto :goto_20

    :cond_1f
    move v3, p0

    :goto_20
    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    :goto_23
    if-ltz v1, :cond_2f

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v5}, Lmiui/util/LunarDate;->getSolarYearMonthDays(II)I

    move-result v6

    sub-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_2f
    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    aput v3, v0, v6

    const/4 v6, 0x1

    aput v5, v0, v6

    const/4 v6, 0x2

    aput v4, v0, v6

    return-object v0
.end method

.method public static final mthDays(II)I
    .registers 6

    sget-object v0, Lmiui/util/LunarDate;->luYearData:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/16 v0, 0x1d

    return v0

    :cond_14
    const/16 v0, 0x1e

    return v0
.end method

.method public static parseLunarDate(Ljava/lang/String;)[I
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x3

    new-array v1, v0, [I

    :try_start_b
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_33

    aget-object v0, v2, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v5

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v6

    aput v0, v1, v6

    aput v5, v1, v4

    goto :goto_5d

    :cond_33
    array-length v3, v2

    if-ne v3, v0, :cond_5c

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v5

    aget-object v0, v2, v6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v6

    aput v0, v1, v6

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v4
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_5b} :catch_5e

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    goto :goto_63

    :catch_5e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_63
    return-object v1
.end method

.method public static final rMonth(I)I
    .registers 5

    sget-object v0, Lmiui/util/LunarDate;->luYearData:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static final rMthDays(I)I
    .registers 5

    invoke-static {p0}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/util/LunarDate;->luYearData:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    const/16 v0, 0x1e

    return v0

    :cond_19
    const/16 v0, 0x1d

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static solar2lunar(Landroid/content/res/Resources;III)Ljava/lang/String;
    .registers 10

    invoke-static {p1, p2, p3}, Lmiui/util/LunarDate;->calLunar(III)[J

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x6

    :try_start_a
    aget-wide v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    sget v2, Lcom/miui/system/internal/R$string;->lunar_leap:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-int v2, v2

    invoke-static {p0, v2}, Lmiui/util/LunarDate;->getMonthString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v2, Lcom/miui/system/internal/R$string;->lunar_yue:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    aget-wide v2, v0, v2

    long-to-int v2, v2

    invoke-static {p0, v2}, Lmiui/util/LunarDate;->getDayString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_40

    const/4 v1, 0x0

    return-object v2

    :catchall_40
    move-exception v2

    const/4 v1, 0x0

    throw v2
.end method

.method private static final yrDays(I)I
    .registers 7

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_5
    const/16 v2, 0x8

    if-le v1, v2, :cond_1c

    sget-object v2, Lmiui/util/LunarDate;->luYearData:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    shr-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1c
    invoke-static {p0}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method
