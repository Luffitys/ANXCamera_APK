.class public Lmiui/maml/data/DateTimeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"

.field private static final fields:[I

.field private static sCalendar:Lmiui/date/Calendar;


# instance fields
.field private mAmPm:Lmiui/maml/data/IndexedVariable;

.field protected mCalendar:Lmiui/date/Calendar;

.field private mCurrentTime:J

.field private mDate:Lmiui/maml/data/IndexedVariable;

.field private mDateLunar:Lmiui/maml/data/IndexedVariable;

.field private mDayOfWeek:Lmiui/maml/data/IndexedVariable;

.field private volatile mFinished:Z

.field private mHour12:Lmiui/maml/data/IndexedVariable;

.field private mHour24:Lmiui/maml/data/IndexedVariable;

.field private mLastUpdatedTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMinute:Lmiui/maml/data/IndexedVariable;

.field private mMonth:Lmiui/maml/data/IndexedVariable;

.field private mMonth1:Lmiui/maml/data/IndexedVariable;

.field private mMonthLunar:Lmiui/maml/data/IndexedVariable;

.field private mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

.field private mNextAlarm:Lmiui/maml/data/IndexedVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lmiui/maml/data/IndexedVariable;

.field private mTime:Lmiui/maml/data/IndexedVariable;

.field private mTimeAccuracy:J

.field private mTimeAccuracyField:I

.field private mTimeFormat:I

.field private mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

.field private mTimeSys:Lmiui/maml/data/IndexedVariable;

.field private mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lmiui/maml/data/IndexedVariable;

.field private mYearLunar:Lmiui/maml/data/IndexedVariable;

.field private mYearLunar1864:Lmiui/maml/data/IndexedVariable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x16
        0x15
        0x14
        0x12
        0x9
    .end array-data
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .registers 3

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/data/TimeUpdater;

    invoke-direct {v0, p0}, Lmiui/maml/data/TimeUpdater;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_3c

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    move-object v0, v4

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3c
    if-nez v0, :cond_56

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid accuracy tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DateTimeVariableUpdater"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    invoke-direct {p0, v0}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .registers 4

    sget-object v0, Lmiui/maml/NotifierManager;->TYPE_TIME_CHANGED:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    return-void
.end method

.method public static formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    :cond_b
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p1, p2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {v0, p0}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init with accuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateTimeVariableUpdater"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$1;->$SwitchMap$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_50

    const/4 v2, 0x2

    if-eq v0, v2, :cond_46

    const/4 v2, 0x3

    const/16 v3, 0x14

    const-wide/32 v4, 0xea60

    if-eq v0, v2, :cond_41

    const/4 v2, 0x4

    if-eq v0, v2, :cond_38

    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    iput v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_5a

    :cond_38
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 v0, 0x15

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_5a

    :cond_41
    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    iput v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_5a

    :cond_46
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 v0, 0x12

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    goto :goto_5a

    :cond_50
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    const/16 v0, 0x9

    iput v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    nop

    :goto_5a
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "year"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "month"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "month1"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth1:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "date"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "year_lunar"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "year_lunar1864"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "month_lunar"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "month_lunar_leap"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "date_lunar"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "day_of_week"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "ampm"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "hour12"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "hour24"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "minute"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "second"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "time"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "time_sys"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const/4 v3, 0x0

    const-string v4, "next_alarm_time"

    invoke-direct {v2, v4, v0, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string v3, "time_format"

    invoke-direct {v2, v3, v0, v1}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

    return-void
.end method

.method private refreshAlarm()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v0}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateTime()V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/data/IndexedVariable;

    long-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_e7

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v4, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lmiui/date/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lmiui/date/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lmiui/date/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v8

    int-to-double v10, v8

    invoke-virtual {v7, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v7, v9}, Lmiui/date/Calendar;->get(I)I

    move-result v7

    rem-int/lit8 v7, v7, 0xc

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/data/IndexedVariable;

    if-nez v7, :cond_5a

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    goto :goto_5b

    :cond_5a
    int-to-double v9, v7

    :goto_5b
    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/data/IndexedVariable;

    int-to-double v9, v4

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/data/IndexedVariable;

    int-to-double v9, v5

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth1:Lmiui/maml/data/IndexedVariable;

    add-int/lit8 v9, v5, 0x1

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/data/IndexedVariable;

    int-to-double v9, v6

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/data/IndexedVariable;

    iget-object v9, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lmiui/date/Calendar;->get(I)I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8, v9, v10}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-wide v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    :cond_e7
    return-void
.end method


# virtual methods
.method public checkUpdateTime()V
    .registers 11

    iget-boolean v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    if-nez v0, :cond_86

    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-boolean v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v3, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    sget-object v3, Lmiui/maml/data/DateTimeVariableUpdater;->fields:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_28
    if-ge v6, v4, :cond_3a

    aget v7, v3, v6

    iget v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracyField:I

    if-ne v7, v8, :cond_31

    goto :goto_3a

    :cond_31
    iget-object v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v8, v7, v5}, Lmiui/date/Calendar;->set(II)Lmiui/date/Calendar;

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v5, 0x1

    goto :goto_49

    :cond_48
    nop

    :goto_49
    move v3, v5

    iget-object v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v4}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_5a

    iget v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    if-eq v6, v3, :cond_70

    :cond_5a
    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    iput v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:I

    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormatVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v7, v3

    invoke-virtual {v6, v7, v8}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_70
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v8, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v8, v1

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    monitor-exit v0

    goto :goto_86

    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_7 .. :try_end_85} :catchall_83

    throw v1

    :cond_86
    :goto_86
    return-void
.end method

.method public finish()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->finish()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mFinished:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    const/4 v1, 0x0

    sput-object v1, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->init()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->pause()V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetCalendar()V
    .registers 2

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Lmiui/date/Calendar;

    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    if-eqz v0, :cond_12

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    sput-object v0, Lmiui/maml/data/DateTimeVariableUpdater;->sCalendar:Lmiui/date/Calendar;

    :cond_12
    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->resume()V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->resetCalendar()V

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method public tick(J)V
    .registers 6

    invoke-super {p0, p1, p2}, Lmiui/maml/data/NotifierVariableUpdater;->tick(J)V

    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/data/IndexedVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    return-void
.end method
