.class public Lmiui/util/LunarDate$BirthHoroscope;
.super Ljava/lang/Object;
.source "LunarDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LunarDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthHoroscope"
.end annotation


# static fields
.field private static final BASE_DATE_STRING:Ljava/lang/String; = "1900-1-31"

.field private static final DAY_IN_MILLS:J = 0x5265c00L

.field private static sBaseDate:Ljava/util/Date;

.field private static final sChineseDateFormat:Ljava/text/SimpleDateFormat;

.field private static sDiZhi:[Ljava/lang/String;

.field private static sIsInitialized:Z

.field private static sJiaZi:[Ljava/lang/String;

.field private static sTianGan:[Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDay:I

.field private mHour:I

.field private mMonth:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    iput p2, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    iput p3, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    iput p4, p0, Lmiui/util/LunarDate$BirthHoroscope;->mDay:I

    iput p5, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    return-void
.end method

.method private static getLunarHourIndex(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x1

    rem-int/lit8 v0, v0, 0x18

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static newInstance(Landroid/content/res/Resources;Ljava/util/Calendar;)Lmiui/util/LunarDate$BirthHoroscope;
    .registers 23

    move-object/from16 v1, p0

    :try_start_2
    sget-boolean v0, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z

    if-nez v0, :cond_2b

    sget v0, Lcom/miui/system/internal/R$array;->tian_gan:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    sget v0, Lcom/miui/system/internal/R$array;->di_zhi:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    sget v0, Lcom/miui/system/internal/R$array;->jia_zi:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    sget-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v2, "1900-1-31"

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/util/LunarDate$BirthHoroscope;->sIsInitialized:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_d4

    :cond_2b
    nop

    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v3, v2, 0x28

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/16 v6, 0x76c

    :goto_48
    const/16 v7, 0x802

    if-ge v6, v7, :cond_58

    if-lez v2, :cond_58

    # invokes: Lmiui/util/LunarDate;->yrDays(I)I
    invoke-static {v6}, Lmiui/util/LunarDate;->access$000(I)I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_58
    if-gez v2, :cond_5f

    add-int/2addr v2, v5

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v4, v4, -0xc

    :cond_5f
    move v13, v6

    add-int/lit16 v14, v6, -0x748

    invoke-static {v6}, Lmiui/util/LunarDate;->rMonth(I)I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v15, v8

    :goto_6a
    const/16 v8, 0xd

    if-ge v9, v8, :cond_95

    if-lez v2, :cond_95

    if-lez v0, :cond_81

    add-int/lit8 v8, v0, 0x1

    if-ne v9, v8, :cond_81

    if-nez v7, :cond_81

    add-int/lit8 v9, v9, -0x1

    const/4 v7, 0x1

    invoke-static {v13}, Lmiui/util/LunarDate;->rMthDays(I)I

    move-result v8

    move v15, v8

    goto :goto_86

    :cond_81
    invoke-static {v13, v9}, Lmiui/util/LunarDate;->mthDays(II)I

    move-result v8

    move v15, v8

    :goto_86
    sub-int/2addr v2, v15

    if-eqz v7, :cond_8e

    add-int/lit8 v8, v0, 0x1

    if-ne v9, v8, :cond_8e

    const/4 v7, 0x0

    :cond_8e
    if-nez v7, :cond_92

    add-int/lit8 v4, v4, 0x1

    :cond_92
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    :cond_95
    if-nez v2, :cond_ab

    if-lez v0, :cond_ab

    add-int/lit8 v8, v0, 0x1

    if-ne v9, v8, :cond_ab

    if-eqz v7, :cond_a3

    const/4 v7, 0x0

    move/from16 v16, v7

    goto :goto_ad

    :cond_a3
    const/4 v7, 0x1

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v4, v4, -0x1

    move/from16 v16, v7

    goto :goto_ad

    :cond_ab
    move/from16 v16, v7

    :goto_ad
    if-gez v2, :cond_b7

    add-int/2addr v2, v15

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v4, v4, -0x1

    move/from16 v17, v9

    goto :goto_b9

    :cond_b7
    move/from16 v17, v9

    :goto_b9
    move/from16 v10, v17

    add-int/lit8 v18, v2, 0x1

    const/16 v7, 0xb

    move-object/from16 v12, p1

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v19

    new-instance v20, Lmiui/util/LunarDate$BirthHoroscope;

    move-object/from16 v7, v20

    move-object/from16 v8, p1

    move v9, v13

    move/from16 v11, v18

    move/from16 v12, v19

    invoke-direct/range {v7 .. v12}, Lmiui/util/LunarDate$BirthHoroscope;-><init>(Ljava/util/Calendar;IIII)V

    return-object v20

    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getBirthHoroscope()Ljava/lang/String;
    .registers 13

    iget v0, p0, Lmiui/util/LunarDate$BirthHoroscope;->mYear:I

    add-int/lit16 v0, v0, -0x748

    rem-int/lit8 v0, v0, 0x3c

    sget-object v1, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v1, v1, v0

    rem-int/lit8 v0, v0, 0x5

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    const/4 v2, 0x0

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    iget v6, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    rem-int/2addr v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    iget v6, p0, Lmiui/util/LunarDate$BirthHoroscope;->mMonth:I

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1

    rem-int/lit8 v6, v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmiui/util/LunarDate$BirthHoroscope;->getRiZhu()I

    move-result v5

    sget-object v6, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    aget-object v6, v6, v5

    rem-int/lit8 v7, v5, 0x5

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lmiui/util/LunarDate$BirthHoroscope;->mHour:I

    invoke-static {v8}, Lmiui/util/LunarDate$BirthHoroscope;->getLunarHourIndex(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lmiui/util/LunarDate$BirthHoroscope;->sTianGan:[Ljava/lang/String;

    add-int v11, v7, v8

    rem-int/2addr v11, v3

    aget-object v3, v10, v11

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lmiui/util/LunarDate$BirthHoroscope;->sDiZhi:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getRiZhu()I
    .registers 5

    iget-object v0, p0, Lmiui/util/LunarDate$BirthHoroscope;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sBaseDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x28

    sget-object v2, Lmiui/util/LunarDate$BirthHoroscope;->sJiaZi:[Ljava/lang/String;

    array-length v2, v2

    rem-int/2addr v1, v2

    return v1
.end method
