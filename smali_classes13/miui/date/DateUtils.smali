.class public Lmiui/date/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final CALENDAR_POOL:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool<",
            "Lmiui/date/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_12HOUR:I = 0x10

.field public static final FORMAT_24HOUR:I = 0x20

.field public static final FORMAT_ABBREV_ALL:I = 0x7000

.field public static final FORMAT_ABBREV_MONTH:I = 0x1000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x2000

.field public static final FORMAT_NO_AM_PM:I = 0x40

.field public static final FORMAT_NUMERIC_DATE:I = 0x8000

.field public static final FORMAT_SHOW_BRIEF_TIME:I = 0xc

.field public static final FORMAT_SHOW_DATE:I = 0x380

.field public static final FORMAT_SHOW_HOUR:I = 0x8

.field public static final FORMAT_SHOW_MILLISECOND:I = 0x1

.field public static final FORMAT_SHOW_MINUTE:I = 0x4

.field public static final FORMAT_SHOW_MONTH:I = 0x100

.field public static final FORMAT_SHOW_MONTH_DAY:I = 0x80

.field public static final FORMAT_SHOW_SECOND:I = 0x2

.field public static final FORMAT_SHOW_TIME:I = 0xf

.field public static final FORMAT_SHOW_TIME_ZONE:I = 0x800

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x400

.field public static final FORMAT_SHOW_YEAR:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/date/DateUtils$1;

    invoke-direct {v0}, Lmiui/date/DateUtils$1;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatDateTime(JI)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static formatDateTime(JILjava/util/TimeZone;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .registers 13

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    and-int/lit8 v1, p3, 0x10

    if-nez v1, :cond_18

    and-int/lit8 v1, p3, 0x20

    if-nez v1, :cond_18

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x20

    goto :goto_17

    :cond_15
    const/16 v1, 0x10

    :goto_17
    or-int/2addr p3, v1

    :cond_18
    invoke-static {p3}, Lmiui/date/DateUtils;->getFormatResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v3}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/date/Calendar;

    invoke-virtual {v3, p4}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    invoke-virtual {v3, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_3d
    if-ge v4, v5, :cond_7a

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x44

    if-eq v6, v7, :cond_6b

    const/16 v7, 0x54

    if-eq v6, v7, :cond_5f

    const/16 v7, 0x57

    if-eq v6, v7, :cond_53

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_53
    invoke-static {p3}, Lmiui/date/DateUtils;->getWeekdayPatternResId(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_5f
    invoke-static {v3, p3}, Lmiui/date/DateUtils;->getTimePatternResId(Lmiui/date/Calendar;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_6b
    invoke-static {p3}, Lmiui/date/DateUtils;->getDatePatternResId(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_7a
    invoke-virtual {v3, p0, v2}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v4

    invoke-interface {v4, v2}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    sget-object v4, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v4, v3}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatRelativeTime(JZ)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static formatRelativeTime(JZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZ)Ljava/lang/StringBuilder;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .registers 28

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_12

    move v6, v8

    goto :goto_13

    :cond_12
    move v6, v7

    :goto_13
    sub-long v9, v4, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/16 v13, 0x3000

    const-wide/16 v14, 0x3c

    cmp-long v16, v9, v14

    if-gtz v16, :cond_7e

    if-nez p3, :cond_7e

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1e

    if-eqz v6, :cond_4d

    cmp-long v14, v9, v14

    if-nez v14, :cond_3c

    sget v14, Lcom/miui/internal/R$plurals;->abbrev_a_hour_ago:I

    goto :goto_64

    :cond_3c
    cmp-long v14, v9, v18

    if-nez v14, :cond_43

    sget v14, Lcom/miui/internal/R$plurals;->abbrev_half_hour_ago:I

    goto :goto_64

    :cond_43
    cmp-long v14, v9, v16

    if-nez v14, :cond_4a

    sget v14, Lcom/miui/internal/R$plurals;->abbrev_less_than_one_minute_ago:I

    goto :goto_64

    :cond_4a
    sget v14, Lcom/miui/internal/R$plurals;->abbrev_num_minutes_ago:I

    goto :goto_64

    :cond_4d
    cmp-long v14, v9, v14

    if-nez v14, :cond_54

    sget v14, Lcom/miui/internal/R$plurals;->abbrev_in_a_hour:I

    goto :goto_64

    :cond_54
    cmp-long v14, v9, v18

    if-nez v14, :cond_5b

    sget v14, Lcom/miui/internal/R$plurals;->abbrev_in_half_hour:I

    goto :goto_64

    :cond_5b
    cmp-long v14, v9, v16

    if-nez v14, :cond_62

    sget v14, Lcom/miui/internal/R$plurals;->abbrev_in_less_than_one_minute:I

    goto :goto_64

    :cond_62
    sget v14, Lcom/miui/internal/R$plurals;->abbrev_in_num_minutes:I

    :goto_64
    long-to-int v15, v9

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v15

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v8, v7

    invoke-static {v15, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v19, v4

    move-wide/from16 v21, v9

    goto/16 :goto_131

    :cond_7e
    sget-object v14, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v14}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/date/Calendar;

    invoke-virtual {v14, v3}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    invoke-virtual {v14, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-virtual {v14, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v15

    const/16 v7, 0xc

    invoke-virtual {v14, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    const/16 v7, 0xe

    move-wide/from16 v19, v4

    invoke-virtual {v14, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v14, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v15, v7, :cond_aa

    move v7, v5

    goto :goto_ab

    :cond_aa
    const/4 v7, 0x0

    :goto_ab
    if-eqz v7, :cond_bf

    move-wide/from16 v21, v9

    const/16 v5, 0xc

    invoke-virtual {v14, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_c1

    or-int/lit8 v5, v13, 0xc

    invoke-static {v0, v1, v2, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move v13, v5

    goto/16 :goto_12c

    :cond_bf
    move-wide/from16 v21, v9

    :cond_c1
    if-eqz v7, :cond_ec

    const/16 v5, 0xc

    invoke-virtual {v14, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    sub-int v5, v8, v9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v9, 0x2

    if-ge v5, v9, :cond_ec

    if-eqz v6, :cond_d7

    sget v5, Lcom/miui/internal/R$string;->yesterday:I

    goto :goto_d9

    :cond_d7
    sget v5, Lcom/miui/internal/R$string;->tomorrow:I

    :goto_d9
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int/lit8 v5, v13, 0xc

    invoke-static {v0, v1, v2, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move v13, v5

    goto :goto_12c

    :cond_ec
    if-eqz v7, :cond_111

    const/16 v5, 0xc

    invoke-virtual {v14, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    sub-int v5, v8, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v9, 0x7

    if-ge v5, v9, :cond_111

    const/16 v5, 0xe

    invoke-virtual {v14, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    if-le v4, v5, :cond_107

    const/4 v5, 0x1

    goto :goto_108

    :cond_107
    const/4 v5, 0x0

    :goto_108
    if-ne v6, v5, :cond_111

    or-int/lit16 v5, v13, 0x40c

    invoke-static {v0, v1, v2, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move v13, v5

    goto :goto_12c

    :cond_111
    if-eqz v7, :cond_120

    if-eqz p3, :cond_118

    const/16 v5, 0x18c

    goto :goto_11a

    :cond_118
    const/16 v5, 0x180

    :goto_11a
    or-int/2addr v5, v13

    invoke-static {v0, v1, v2, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move v13, v5

    goto :goto_12c

    :cond_120
    if-eqz p3, :cond_125

    const/16 v5, 0x38c

    goto :goto_127

    :cond_125
    const/16 v5, 0x380

    :goto_127
    or-int/2addr v5, v13

    invoke-static {v0, v1, v2, v5, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move v13, v5

    :goto_12c
    sget-object v5, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v5, v14}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    :goto_131
    return-object v0
.end method

.method private static getDatePatternResId(I)I
    .registers 7

    const v0, 0x8000

    and-int v1, p0, v0

    const-string v2, "no any time date"

    const/16 v3, 0x200

    const/16 v4, 0x100

    const/16 v5, 0x80

    if-ne v1, v0, :cond_45

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_27

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_23

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_1f

    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month_day:I

    goto/16 :goto_a4

    :cond_1f
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month:I

    goto/16 :goto_a4

    :cond_23
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_year:I

    goto/16 :goto_a4

    :cond_27
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_37

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_33

    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_month_day:I

    goto/16 :goto_a4

    :cond_33
    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_month:I

    goto/16 :goto_a4

    :cond_37
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_3f

    sget v0, Lcom/miui/internal/R$string;->fmt_date_numeric_day:I

    goto/16 :goto_a4

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    and-int/lit16 v0, p0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_7b

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_60

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_5d

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_5a

    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_year_month_day:I

    goto :goto_a4

    :cond_5a
    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_year_month:I

    goto :goto_a4

    :cond_5d
    sget v0, Lcom/miui/internal/R$string;->fmt_date_year:I

    goto :goto_a4

    :cond_60
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_6e

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_6b

    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_month_day:I

    goto :goto_a4

    :cond_6b
    sget v0, Lcom/miui/internal/R$string;->fmt_date_short_month:I

    goto :goto_a4

    :cond_6e
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_75

    sget v0, Lcom/miui/internal/R$string;->fmt_date_day:I

    goto :goto_a4

    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_90

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_8d

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_8a

    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_year_month_day:I

    goto :goto_a4

    :cond_8a
    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_year_month:I

    goto :goto_a4

    :cond_8d
    sget v0, Lcom/miui/internal/R$string;->fmt_date_year:I

    goto :goto_a4

    :cond_90
    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_9e

    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_9b

    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_month_day:I

    goto :goto_a4

    :cond_9b
    sget v0, Lcom/miui/internal/R$string;->fmt_date_long_month:I

    goto :goto_a4

    :cond_9e
    and-int/lit16 v0, p0, 0x80

    if-ne v0, v5, :cond_a5

    sget v0, Lcom/miui/internal/R$string;->fmt_date_day:I

    :goto_a4
    return v0

    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFormatResId(I)I
    .registers 4

    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x400

    const/16 v2, 0x800

    if-ne v0, v1, :cond_3c

    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_24

    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_1a

    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_17

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date_time_timezone:I

    goto :goto_19

    :cond_17
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date_time:I

    :goto_19
    goto :goto_6f

    :cond_1a
    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_21

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date_timezone:I

    goto :goto_23

    :cond_21
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_date:I

    :goto_23
    goto :goto_6f

    :cond_24
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_32

    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_2f

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_time_timezone:I

    goto :goto_31

    :cond_2f
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_time:I

    :goto_31
    goto :goto_6f

    :cond_32
    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_39

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_timezone:I

    goto :goto_3b

    :cond_39
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday:I

    :goto_3b
    goto :goto_6f

    :cond_3c
    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_58

    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_4e

    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_4b

    sget v0, Lcom/miui/internal/R$string;->fmt_date_time_timezone:I

    goto :goto_4d

    :cond_4b
    sget v0, Lcom/miui/internal/R$string;->fmt_date_time:I

    :goto_4d
    goto :goto_6f

    :cond_4e
    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_55

    sget v0, Lcom/miui/internal/R$string;->fmt_date_timezone:I

    goto :goto_57

    :cond_55
    sget v0, Lcom/miui/internal/R$string;->fmt_date:I

    :goto_57
    goto :goto_6f

    :cond_58
    and-int/lit8 v0, p0, 0xf

    if-eqz v0, :cond_66

    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_63

    sget v0, Lcom/miui/internal/R$string;->fmt_time_timezone:I

    goto :goto_65

    :cond_63
    sget v0, Lcom/miui/internal/R$string;->fmt_time:I

    :goto_65
    goto :goto_6f

    :cond_66
    and-int/lit16 v0, p0, 0x800

    if-ne v0, v2, :cond_6d

    sget v0, Lcom/miui/internal/R$string;->fmt_timezone:I

    goto :goto_6f

    :cond_6d
    sget v0, Lcom/miui/internal/R$string;->empty:I

    :goto_6f
    return v0
.end method

.method private static getTimePatternResId(Lmiui/date/Calendar;I)I
    .registers 7

    and-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x4000

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3a

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_14

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_3a

    :cond_14
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_3a

    and-int/lit8 p1, p1, -0x2

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_26

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_3a

    :cond_26
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_3a

    and-int/lit8 p1, p1, -0x3

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_3a

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3a

    and-int/lit8 p1, p1, -0x5

    :cond_3a
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    const/4 v4, 0x4

    if-ne v0, v1, :cond_99

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_81

    and-int/lit8 v0, p1, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    and-int/lit8 v0, p1, 0x4

    if-ne v0, v4, :cond_65

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_61

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_5d

    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis:I

    goto/16 :goto_c2

    :cond_5d
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second:I

    goto/16 :goto_c2

    :cond_61
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    goto/16 :goto_c2

    :cond_65
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour:I

    goto/16 :goto_c2

    :cond_69
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v4, :cond_7e

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_7b

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_78

    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis_pm:I

    goto :goto_c2

    :cond_78
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_pm:I

    goto :goto_c2

    :cond_7b
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_pm:I

    goto :goto_c2

    :cond_7e
    sget v0, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    goto :goto_c2

    :cond_81
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v4, :cond_96

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_93

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_90

    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second_millis:I

    goto :goto_c2

    :cond_90
    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second:I

    goto :goto_c2

    :cond_93
    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute:I

    goto :goto_c2

    :cond_96
    sget v0, Lcom/miui/internal/R$string;->fmt_time_24hour:I

    goto :goto_c2

    :cond_99
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v4, :cond_ae

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_ab

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_a8

    sget v0, Lcom/miui/internal/R$string;->fmt_time_minute_second_millis:I

    goto :goto_c2

    :cond_a8
    sget v0, Lcom/miui/internal/R$string;->fmt_time_minute_second:I

    goto :goto_c2

    :cond_ab
    sget v0, Lcom/miui/internal/R$string;->fmt_time_minute:I

    goto :goto_c2

    :cond_ae
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_bc

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_b9

    sget v0, Lcom/miui/internal/R$string;->fmt_time_second_millis:I

    goto :goto_c2

    :cond_b9
    sget v0, Lcom/miui/internal/R$string;->fmt_time_second:I

    goto :goto_c2

    :cond_bc
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_c3

    sget v0, Lcom/miui/internal/R$string;->fmt_time_millis:I

    :goto_c2
    return v0

    :cond_c3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no any time date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getWeekdayPatternResId(I)I
    .registers 3

    and-int/lit16 v0, p0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_9

    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_short:I

    goto :goto_b

    :cond_9
    sget v0, Lcom/miui/internal/R$string;->fmt_weekday_long:I

    :goto_b
    return v0
.end method
