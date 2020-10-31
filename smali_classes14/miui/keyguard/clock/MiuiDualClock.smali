.class public Lmiui/keyguard/clock/MiuiDualClock;
.super Landroid/widget/RelativeLayout;
.source "MiuiDualClock.java"

# interfaces
.implements Lmiui/keyguard/clock/KeyguardClockController$IClockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiDualClock"

.field private static final WEATHER_URI:Ljava/lang/String; = "content://weather/realtimeLocalWeatherData/4/1"


# instance fields
.field private m24HourFormat:Z

.field private mAttached:Z

.field private mAutoTimeZone:Z

.field mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field private mCalendar:Lmiui/date/Calendar;

.field private mContext:Landroid/content/Context;

.field private mCountry:Ljava/lang/String;

.field private mDateTooLong:Z

.field private mLanguage:Ljava/lang/String;

.field private mLocalCity:Landroid/widget/TextView;

.field private mLocalCityChangeListener:Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

.field private mLocalDate:Landroid/widget/TextView;

.field private mLocalTime:Landroid/widget/TextView;

.field private mLocalTimeZone:Ljava/lang/String;

.field private mResidentCalendar:Lmiui/date/Calendar;

.field private mResidentCity:Landroid/widget/TextView;

.field private mResidentDate:Landroid/widget/TextView;

.field private mResidentLayout:Landroid/widget/LinearLayout;

.field private mResidentTime:Landroid/widget/TextView;

.field private mResidentTimeZone:Ljava/lang/String;

.field protected mScaleRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/keyguard/clock/MiuiDualClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLanguage:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mCountry:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZone:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mDateTooLong:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    new-instance v2, Lmiui/keyguard/clock/MiuiDualClock$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lmiui/keyguard/clock/MiuiDualClock$1;-><init>(Lmiui/keyguard/clock/MiuiDualClock;Landroid/os/Handler;)V

    iput-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_36

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZone:Z

    return-void
.end method

.method static synthetic access$002(Lmiui/keyguard/clock/MiuiDualClock;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZone:Z

    return p1
.end method

.method static synthetic access$100(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/keyguard/clock/MiuiDualClock;)V
    .registers 1

    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateLocalCity()V

    return-void
.end method

.method static synthetic access$300(Lmiui/keyguard/clock/MiuiDualClock;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCity:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/keyguard/clock/MiuiDualClock;)Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCityChangeListener:Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

    return-object v0
.end method

.method private getNamebyZone(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const-string v0, "Asia/Shanghai"

    :try_start_2
    const-string v1, "android.icu.text.TimeZoneNames"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Locale;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_85

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const-string v5, "android.icu.text.TimeZoneNames$NameType"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    array-length v9, v8

    move v10, v6

    :goto_3e
    if-ge v10, v9, :cond_52

    aget-object v11, v8, v10

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "LONG_STANDARD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4f

    move-object v7, v11

    :cond_4f
    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    :cond_52
    const-string v8, "getDisplayName"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v6

    aput-object v5, v10, v3

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v1, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v6

    aput-object v7, v9, v3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_85
    const-string v0, "getExemplarLocationName"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9e} :catch_9f

    return-object v3

    :catch_9f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/system/internal/R$string;->miui_clock_city_name_second:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateDateLines()V
    .registers 8

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    add-int v4, v1, v3

    int-to-float v4, v4

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_max_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    :goto_41
    iget-boolean v5, p0, Lmiui/keyguard/clock/MiuiDualClock;->mDateTooLong:Z

    if-eq v4, v5, :cond_4a

    iput-boolean v4, p0, Lmiui/keyguard/clock/MiuiDualClock;->mDateTooLong:Z

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateTime()V

    :cond_4a
    return-void
.end method

.method private updateLocalCity()V
    .registers 4

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZone:Z

    if-eqz v0, :cond_12

    new-instance v0, Lmiui/keyguard/clock/MiuiDualClock$2;

    invoke-direct {v0, p0}, Lmiui/keyguard/clock/MiuiDualClock$2;-><init>(Lmiui/keyguard/clock/MiuiDualClock;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lmiui/keyguard/clock/MiuiDualClock$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_24

    :cond_12
    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->getNamebyZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCityChangeListener:Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

    if-eqz v1, :cond_24

    invoke-interface {v1, v0}, Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;->onLocalCityChanged(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return-void
.end method

.method private updateResidentCityName()V
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentCity:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmiui/keyguard/clock/MiuiDualClock;->getNamebyZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .registers 2

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->getHeight()I

    move-result v0

    return v0
.end method

.method public getClockVisibleHeight()F
    .registers 2

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTopMargin()F
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAttached:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAttached:Z

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateViewsLayoutParams()V

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateViewsTextSize()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_19

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_19
    if-eqz v1, :cond_36

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_23
    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateResidentCityName()V

    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateLocalCity()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mDateTooLong:Z

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateTime()V

    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateDateLines()V

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLanguage:Ljava/lang/String;

    iput-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mCountry:Ljava/lang/String;

    :cond_36
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAttached:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAttached:Z

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/miui/system/internal/R$id;->local_city_name:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCity:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->local_time:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTime:Landroid/widget/TextView;

    new-instance v1, Lmiui/keyguard/clock/MiuiClockAccessibilityDelegate;

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/keyguard/clock/MiuiClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget v0, Lcom/miui/system/internal/R$id;->local_date:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->resident_city_name:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentCity:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->resident_time:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTime:Landroid/widget/TextView;

    new-instance v1, Lmiui/keyguard/clock/MiuiClockAccessibilityDelegate;

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/keyguard/clock/MiuiClockAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget v0, Lcom/miui/system/internal/R$id;->resident_date:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->resident_time_layout:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLanguage:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTimeZone:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateLocalCity()V

    new-instance v1, Lmiui/date/Calendar;

    invoke-direct {v1}, Lmiui/date/Calendar;-><init>()V

    iput-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTimeZone:Ljava/lang/String;

    :cond_91
    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateResidentCityName()V

    new-instance v1, Lmiui/date/Calendar;

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateHourFormat()V

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateTime()V

    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateDateLines()V

    return-void
.end method

.method public setClockAlpha(F)V
    .registers 2

    return-void
.end method

.method public setIs24HourFormat(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/keyguard/clock/MiuiDualClock;->m24HourFormat:Z

    return-void
.end method

.method public setOnLocalCityChangeListener(Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCityChangeListener:Lmiui/keyguard/clock/MiuiDualClock$OnLocalCityChangeListener;

    return-void
.end method

.method public setOwnerInfo(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setScaleRatio(F)V
    .registers 2

    iput p1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateViewsTextSize()V

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateViewsLayoutParams()V

    return-void
.end method

.method public setShowLunarCalendar(Z)V
    .registers 2

    return-void
.end method

.method public setTextColorDark(Z)V
    .registers 4

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$color;->miui_common_time_dark_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentCity:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateHourFormat()V
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->m24HourFormat:Z

    return-void
.end method

.method public updateResidentTimeZone(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTimeZone:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update resident timeZone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiDualClock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateTime()V

    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateResidentCityName()V

    return-void
.end method

.method public updateTime()V
    .registers 4

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTime:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lmiui/keyguard/clock/MiuiDualClock;->updateTime(Lmiui/date/Calendar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentCalendar:Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTime:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lmiui/keyguard/clock/MiuiDualClock;->updateTime(Lmiui/date/Calendar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public updateTime(Lmiui/date/Calendar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->m24HourFormat:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x20

    goto :goto_10

    :cond_e
    const/16 v0, 0x10

    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    or-int/lit8 v3, v0, 0xc

    or-int/lit8 v3, v3, 0x40

    invoke-virtual {p1}, Lmiui/date/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(JILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mDateTooLong:Z

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->m24HourFormat:Z

    if-eqz v1, :cond_2e

    sget v1, Lcom/miui/system/internal/R$string;->miui_lock_screen_date_two_lines:I

    goto :goto_30

    :cond_2e
    sget v1, Lcom/miui/system/internal/R$string;->miui_lock_screen_date_two_lines_12:I

    :goto_30
    nop

    goto :goto_3b

    :cond_32
    iget-boolean v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->m24HourFormat:Z

    if-eqz v1, :cond_39

    sget v1, Lcom/miui/system/internal/R$string;->miui_lock_screen_date:I

    goto :goto_3b

    :cond_39
    sget v1, Lcom/miui/system/internal/R$string;->miui_lock_screen_date_12:I

    :goto_3b
    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateTimeZone(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iput-object p1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTimeZone:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update local timeZone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiDualClock"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/date/Calendar;

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateTime()V

    invoke-direct {p0}, Lmiui/keyguard/clock/MiuiDualClock;->updateLocalCity()V

    return-void
.end method

.method public updateViewTopMargin(Z)V
    .registers 6

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_1c

    iget v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1f

    :cond_1c
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1f
    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiDualClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateViewsLayoutParams()V
    .registers 12

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiDualClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_margin_top:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1}, Lmiui/keyguard/clock/MiuiDualClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_time_margin_top:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    sget v4, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_date_margin_top:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v7, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTime:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    sget v10, Lcom/miui/system/internal/R$dimen;->miui_resident_time_margin_start:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object v9, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateViewsTextSize()V
    .registers 7

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiDualClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    sget v2, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_city_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalCity:Landroid/widget/TextView;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentCity:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalDate:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentDate:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v2, p0, Lmiui/keyguard/clock/MiuiDualClock;->mScaleRatio:F

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_dual_clock_time_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiDualClock;->mLocalTime:Landroid/widget/TextView;

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiDualClock;->mResidentTime:Landroid/widget/TextView;

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
