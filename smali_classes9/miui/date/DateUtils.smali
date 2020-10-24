.class public Lmiui/date/DateUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CALENDAR_POOL:Lmiui/util/Pools$Pool;

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
    .locals 2

    new-instance v0, Lmiui/date/DateUtils$1;

    invoke-direct {v0}, Lmiui/date/DateUtils$1;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static formatDateTime(JI)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatDateTime(JILjava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JI)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .locals 5

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    and-int/lit8 v1, p3, 0x10

    if-nez v1, :cond_1

    and-int/lit8 v1, p3, 0x20

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr p3, v1

    :cond_1
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

    const/4 p1, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    :goto_1
    if-ge p1, p2, :cond_5

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    const/16 v4, 0x44

    if-eq p4, v4, :cond_4

    const/16 v4, 0x54

    if-eq p4, v4, :cond_3

    const/16 v4, 0x57

    if-eq p4, v4, :cond_2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-static {p3}, Lmiui/date/DateUtils;->getWeekdayPatternResId(I)I

    move-result p4

    goto :goto_2

    :cond_3
    invoke-static {v3, p3}, Lmiui/date/DateUtils;->getTimePatternResId(Lmiui/date/Calendar;I)I

    move-result p4

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lmiui/date/DateUtils;->getDatePatternResId(I)I

    move-result p4

    :goto_2
    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3, p0, v2}, Lmiui/date/Calendar;->format(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v2}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    sget-object p1, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {p1, v3}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatRelativeTime(JZ)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatRelativeTime(JZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {v0, p0, p1, p2, p3}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZ)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/date/DateUtils;->formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static formatRelativeTime(Ljava/lang/StringBuilder;JZLjava/util/TimeZone;)Ljava/lang/StringBuilder;
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    sub-long v9, v4, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v11, 0xea60

    div-long/2addr v9, v11

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/16 v12, 0x3000

    const-wide/16 v13, 0x3c

    cmp-long v13, v9, v13

    if-gtz v13, :cond_8

    if-nez p3, :cond_8

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1e

    if-eqz v6, :cond_4

    if-nez v13, :cond_1

    sget v1, Lcom/miui/internal/R$plurals;->abbrev_a_hour_ago:I

    goto :goto_1

    :cond_1
    cmp-long v3, v9, v3

    if-nez v3, :cond_2

    sget v1, Lcom/miui/internal/R$plurals;->abbrev_half_hour_ago:I

    goto :goto_1

    :cond_2
    cmp-long v1, v9, v1

    if-nez v1, :cond_3

    sget v1, Lcom/miui/internal/R$plurals;->abbrev_less_than_one_minute_ago:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_num_minutes_ago:I

    goto :goto_1

    :cond_4
    if-nez v13, :cond_5

    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_a_hour:I

    goto :goto_1

    :cond_5
    cmp-long v3, v9, v3

    if-nez v3, :cond_6

    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_half_hour:I

    goto :goto_1

    :cond_6
    cmp-long v1, v9, v1

    if-nez v1, :cond_7

    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_less_than_one_minute:I

    goto :goto_1

    :cond_7
    sget v1, Lcom/miui/internal/R$plurals;->abbrev_in_num_minutes:I

    :goto_1
    long-to-int v2, v9

    invoke-virtual {v11, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_8
    sget-object v9, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v9}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/date/Calendar;

    invoke-virtual {v9, v3}, Lmiui/date/Calendar;->setTimeZone(Ljava/util/TimeZone;)Lmiui/date/Calendar;

    invoke-virtual {v9, v4, v5}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-virtual {v9, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v9, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v10

    const/16 v13, 0xe

    invoke-virtual {v9, v13}, Lmiui/date/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v9, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    invoke-virtual {v9, v8}, Lmiui/date/Calendar;->get(I)I

    move-result v15

    if-ne v4, v15, :cond_9

    move v4, v8

    goto :goto_2

    :cond_9
    move v4, v7

    :goto_2
    const/16 v15, 0x300c

    if-eqz v4, :cond_a

    invoke-virtual {v9, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    if-ne v10, v7, :cond_a

    :goto_3
    invoke-static {v0, v1, v2, v15, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v9, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    sub-int v7, v10, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_c

    if-eqz v6, :cond_b

    sget v4, Lcom/miui/internal/R$string;->yesterday:I

    goto :goto_4

    :cond_b
    sget v4, Lcom/miui/internal/R$string;->tomorrow:I

    :goto_4
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    if-eqz v4, :cond_e

    invoke-virtual {v9, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v7, 0x7

    if-ge v5, v7, :cond_e

    invoke-virtual {v9, v13}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    if-le v14, v5, :cond_d

    const/4 v7, 0x1

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    :goto_5
    if-ne v6, v7, :cond_e

    const/16 v4, 0x340c

    goto :goto_7

    :cond_e
    if-eqz v4, :cond_10

    if-eqz p3, :cond_f

    const/16 v4, 0x18c

    goto :goto_6

    :cond_f
    const/16 v4, 0x180

    goto :goto_6

    :cond_10
    if-eqz p3, :cond_11

    const/16 v4, 0x38c

    goto :goto_6

    :cond_11
    const/16 v4, 0x380

    :goto_6
    or-int/2addr v4, v12

    :goto_7
    invoke-static {v0, v1, v2, v4, v3}, Lmiui/date/DateUtils;->formatDateTime(Ljava/lang/StringBuilder;JILjava/util/TimeZone;)Ljava/lang/StringBuilder;

    :goto_8
    sget-object v1, Lmiui/date/DateUtils;->CALENDAR_POOL:Lmiui/util/Pools$Pool;

    invoke-interface {v1, v9}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    :goto_9
    return-object v0
.end method

.method private static getDatePatternResId(I)I
    .locals 6

    const v0, 0x8000

    and-int v1, p0, v0

    const-string v2, "no any time date"

    const/16 v3, 0x200

    const/16 v4, 0x100

    const/16 v5, 0x80

    if-ne v1, v0, :cond_6

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_2

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_1

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_0

    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month_day:I

    goto/16 :goto_1

    :cond_0
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_year_month:I

    goto/16 :goto_1

    :cond_1
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_year:I

    goto/16 :goto_1

    :cond_2
    and-int/lit16 v0, p0, 0x100

    and-int/2addr p0, v5

    if-ne v0, v4, :cond_4

    if-ne p0, v5, :cond_3

    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_month_day:I

    goto/16 :goto_1

    :cond_3
    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_month:I

    goto/16 :goto_1

    :cond_4
    if-ne p0, v5, :cond_5

    sget p0, Lcom/miui/internal/R$string;->fmt_date_numeric_day:I

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    and-int/lit16 v0, p0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_8

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_e

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_7

    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_year_month_day:I

    goto :goto_1

    :cond_7
    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_year_month:I

    goto :goto_1

    :cond_8
    and-int/lit16 v0, p0, 0x100

    and-int/2addr p0, v5

    if-ne v0, v4, :cond_a

    if-ne p0, v5, :cond_9

    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_month_day:I

    goto :goto_1

    :cond_9
    sget p0, Lcom/miui/internal/R$string;->fmt_date_short_month:I

    goto :goto_1

    :cond_a
    if-ne p0, v5, :cond_b

    goto :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    and-int/lit16 v0, p0, 0x200

    if-ne v0, v3, :cond_f

    and-int/lit16 v0, p0, 0x100

    if-ne v0, v4, :cond_e

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_d

    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_year_month_day:I

    goto :goto_1

    :cond_d
    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_year_month:I

    goto :goto_1

    :cond_e
    sget p0, Lcom/miui/internal/R$string;->fmt_date_year:I

    goto :goto_1

    :cond_f
    and-int/lit16 v0, p0, 0x100

    and-int/2addr p0, v5

    if-ne v0, v4, :cond_11

    if-ne p0, v5, :cond_10

    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_month_day:I

    goto :goto_1

    :cond_10
    sget p0, Lcom/miui/internal/R$string;->fmt_date_long_month:I

    goto :goto_1

    :cond_11
    if-ne p0, v5, :cond_12

    :goto_0
    sget p0, Lcom/miui/internal/R$string;->fmt_date_day:I

    :goto_1
    return p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFormatResId(I)I
    .locals 3

    and-int/lit16 v0, p0, 0x400

    const/16 v1, 0x400

    const/16 v2, 0x800

    if-ne v0, v1, :cond_7

    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_3

    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_1

    if-ne p0, v2, :cond_0

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date_time_timezone:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date_time:I

    goto :goto_0

    :cond_1
    if-ne p0, v2, :cond_2

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date_timezone:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_date:I

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_5

    if-ne p0, v2, :cond_4

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_time_timezone:I

    goto :goto_0

    :cond_4
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_time:I

    goto :goto_0

    :cond_5
    if-ne p0, v2, :cond_6

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_timezone:I

    goto :goto_0

    :cond_6
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday:I

    goto :goto_0

    :cond_7
    and-int/lit16 v0, p0, 0x380

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_9

    if-ne p0, v2, :cond_8

    sget p0, Lcom/miui/internal/R$string;->fmt_date_time_timezone:I

    goto :goto_0

    :cond_8
    sget p0, Lcom/miui/internal/R$string;->fmt_date_time:I

    goto :goto_0

    :cond_9
    if-ne p0, v2, :cond_a

    sget p0, Lcom/miui/internal/R$string;->fmt_date_timezone:I

    goto :goto_0

    :cond_a
    sget p0, Lcom/miui/internal/R$string;->fmt_date:I

    goto :goto_0

    :cond_b
    and-int/lit8 v0, p0, 0xf

    and-int/2addr p0, v2

    if-eqz v0, :cond_d

    if-ne p0, v2, :cond_c

    sget p0, Lcom/miui/internal/R$string;->fmt_time_timezone:I

    goto :goto_0

    :cond_c
    sget p0, Lcom/miui/internal/R$string;->fmt_time:I

    goto :goto_0

    :cond_d
    if-ne p0, v2, :cond_e

    sget p0, Lcom/miui/internal/R$string;->fmt_timezone:I

    goto :goto_0

    :cond_e
    sget p0, Lcom/miui/internal/R$string;->empty:I

    :goto_0
    return p0
.end method

.method private static getTimePatternResId(Lmiui/date/Calendar;I)I
    .locals 4

    and-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x4000

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v3, :cond_0

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, -0x2

    and-int/lit8 v0, p1, 0x2

    if-ne v0, v2, :cond_1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_2

    and-int/lit8 p1, p1, -0x3

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lmiui/date/Calendar;->get(I)I

    move-result p0

    if-nez p0, :cond_2

    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_2

    and-int/lit8 p1, p1, -0x5

    :cond_2
    and-int/lit8 p0, p1, 0x8

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-ne p0, v0, :cond_e

    and-int/lit8 p0, p1, 0x10

    const/16 v0, 0x10

    if-ne p0, v0, :cond_a

    and-int/lit8 p0, p1, 0x40

    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_5

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_4

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_3

    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis:I

    goto/16 :goto_0

    :cond_3
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second:I

    goto/16 :goto_0

    :cond_4
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute:I

    goto/16 :goto_0

    :cond_5
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour:I

    goto/16 :goto_0

    :cond_6
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_9

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_8

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_7

    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_millis_pm:I

    goto :goto_0

    :cond_7
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_second_pm:I

    goto :goto_0

    :cond_8
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_minute_pm:I

    goto :goto_0

    :cond_9
    sget p0, Lcom/miui/internal/R$string;->fmt_time_12hour_pm:I

    goto :goto_0

    :cond_a
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_d

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_c

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_b

    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second_millis:I

    goto :goto_0

    :cond_b
    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute_second:I

    goto :goto_0

    :cond_c
    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour_minute:I

    goto :goto_0

    :cond_d
    sget p0, Lcom/miui/internal/R$string;->fmt_time_24hour:I

    goto :goto_0

    :cond_e
    and-int/lit8 p0, p1, 0x4

    if-ne p0, v1, :cond_11

    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_10

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_f

    sget p0, Lcom/miui/internal/R$string;->fmt_time_minute_second_millis:I

    goto :goto_0

    :cond_f
    sget p0, Lcom/miui/internal/R$string;->fmt_time_minute_second:I

    goto :goto_0

    :cond_10
    sget p0, Lcom/miui/internal/R$string;->fmt_time_minute:I

    goto :goto_0

    :cond_11
    and-int/lit8 p0, p1, 0x2

    if-ne p0, v2, :cond_13

    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_12

    sget p0, Lcom/miui/internal/R$string;->fmt_time_second_millis:I

    goto :goto_0

    :cond_12
    sget p0, Lcom/miui/internal/R$string;->fmt_time_second:I

    goto :goto_0

    :cond_13
    and-int/lit8 p0, p1, 0x1

    if-ne p0, v3, :cond_14

    sget p0, Lcom/miui/internal/R$string;->fmt_time_millis:I

    :goto_0
    return p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no any time date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getWeekdayPatternResId(I)I
    .locals 1

    const/16 v0, 0x2000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_short:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/miui/internal/R$string;->fmt_weekday_long:I

    :goto_0
    return p0
.end method
