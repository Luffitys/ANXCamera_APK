.class public Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final lunarInfo:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->lunarInfo:[J

    return-void

    :array_0
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
        0xb5a0
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
        0x55c0
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
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calElement(III)[J
    .locals 17

    const/4 v0, 0x7

    new-array v0, v0, [J

    invoke-static/range {p0 .. p2}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->getOffset(III)J

    move-result-wide v1

    const-wide/16 v3, 0x28

    add-long/2addr v3, v1

    const/4 v5, 0x5

    aput-wide v3, v0, v5

    const-wide/16 v3, 0xe

    const/4 v5, 0x4

    aput-wide v3, v0, v5

    const/4 v3, 0x0

    const/16 v4, 0x76c

    move v6, v3

    :goto_0
    const/16 v7, 0x802

    const-wide/16 v8, 0xc

    const-wide/16 v10, 0x0

    if-ge v4, v7, :cond_0

    cmp-long v7, v1, v10

    if-lez v7, :cond_0

    invoke-static {v4}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->lYearDays(I)I

    move-result v6

    int-to-long v10, v6

    sub-long/2addr v1, v10

    aget-wide v10, v0, v5

    add-long/2addr v10, v8

    aput-wide v10, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    cmp-long v7, v1, v10

    if-gez v7, :cond_1

    int-to-long v12, v6

    add-long/2addr v1, v12

    add-int/lit8 v4, v4, -0x1

    aget-wide v12, v0, v5

    sub-long/2addr v12, v8

    aput-wide v12, v0, v5

    :cond_1
    int-to-long v7, v4

    aput-wide v7, v0, v3

    const/4 v7, 0x3

    add-int/lit16 v8, v4, -0x748

    int-to-long v8, v8

    aput-wide v8, v0, v7

    invoke-static {v4}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->leapMonth(I)I

    move-result v4

    const/4 v7, 0x6

    aput-wide v10, v0, v7

    const/4 v9, 0x1

    :goto_1
    const/16 v12, 0xd

    const-wide/16 v13, 0x1

    if-ge v9, v12, :cond_5

    cmp-long v12, v1, v10

    if-lez v12, :cond_5

    if-lez v4, :cond_2

    add-int/lit8 v6, v4, 0x1

    if-ne v9, v6, :cond_2

    aget-wide v15, v0, v7

    cmp-long v6, v15, v10

    if-nez v6, :cond_2

    add-int/lit8 v9, v9, -0x1

    aput-wide v13, v0, v7

    move/from16 p1, v9

    aget-wide v8, v0, v3

    long-to-int v6, v8

    invoke-static {v6}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->leapDays(I)I

    move-result v6

    move/from16 v9, p1

    goto :goto_2

    :cond_2
    aget-wide v5, v0, v3

    long-to-int v5, v5

    invoke-static {v5, v9}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->monthDays(II)I

    move-result v5

    move v6, v5

    :goto_2
    aget-wide v15, v0, v7

    cmp-long v5, v15, v13

    if-nez v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    if-ne v9, v5, :cond_3

    aput-wide v10, v0, v7

    :cond_3
    move v5, v4

    int-to-long v3, v6

    sub-long/2addr v1, v3

    aget-wide v3, v0, v7

    cmp-long v3, v3, v10

    if-nez v3, :cond_4

    const/4 v3, 0x4

    aget-wide v15, v0, v3

    add-long/2addr v15, v13

    aput-wide v15, v0, v3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move v4, v5

    const/4 v3, 0x0

    const/4 v5, 0x4

    goto :goto_1

    :cond_5
    move v5, v4

    cmp-long v3, v1, v10

    if-nez v3, :cond_7

    if-lez v5, :cond_7

    const/4 v4, 0x1

    add-int/2addr v5, v4

    if-ne v9, v5, :cond_7

    aget-wide v4, v0, v7

    cmp-long v4, v4, v13

    if-nez v4, :cond_6

    aput-wide v10, v0, v7

    goto :goto_3

    :cond_6
    aput-wide v13, v0, v7

    add-int/lit8 v9, v9, -0x1

    const/4 v4, 0x4

    aget-wide v7, v0, v4

    sub-long/2addr v7, v13

    aput-wide v7, v0, v4

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v4, 0x4

    :goto_4
    if-gez v3, :cond_8

    int-to-long v5, v6

    add-long/2addr v1, v5

    add-int/lit8 v9, v9, -0x1

    aget-wide v5, v0, v4

    sub-long/2addr v5, v13

    aput-wide v5, v0, v4

    :cond_8
    int-to-long v3, v9

    const/4 v5, 0x1

    aput-wide v3, v0, v5

    const/4 v3, 0x2

    add-long/2addr v1, v13

    aput-wide v1, v0, v3

    return-object v0
.end method

.method private static formatData(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDate()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOffset(III)J
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x76c

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/GregorianCalendar;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static final isChineseEve()Z
    .locals 8

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v2, v4, v0}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->calElement(III)[J

    move-result-object v0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0xc

    cmp-long v2, v4, v6

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    aget-wide v5, v0, v4

    long-to-int v2, v5

    aget-wide v5, v0, v1

    long-to-int v5, v5

    invoke-static {v2, v5}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->monthDays(II)I

    move-result v2

    aget-wide v5, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v5

    if-ne v0, v2, :cond_0

    return v1

    :catch_0
    :cond_0
    return v4
.end method

.method private static final lYearDays(I)I
    .locals 6

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    sget-object v2, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->lunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->leapDays(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static final leapDays(I)I
    .locals 4

    invoke-static {p0}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->lunarInfo:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    return p0

    :cond_0
    const/16 p0, 0x1d

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static final leapMonth(I)I
    .locals 4

    sget-object v0, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->lunarInfo:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static final monthDays(II)I
    .locals 2

    sget-object v0, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->lunarInfo:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const/high16 p0, 0x10000

    shr-int/2addr p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/16 p0, 0x1d

    return p0

    :cond_0
    const/16 p0, 0x1e

    return p0
.end method

.method public static today()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v2, v4, v0}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->calElement(III)[J

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->formatData(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v0, v0, v3

    invoke-static {v0, v1}, Lcom/android/camera/aiwatermark/algo/ChinaDateConvertor;->formatData(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
