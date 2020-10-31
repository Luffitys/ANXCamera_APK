.class public Lmiui/keyguard/clock/MiuiBaseClock;
.super Landroid/widget/LinearLayout;
.source "MiuiBaseClock.java"

# interfaces
.implements Lmiui/keyguard/clock/KeyguardClockController$IClockView;


# instance fields
.field protected m24HourFormat:Z

.field protected mCalendar:Lmiui/date/Calendar;

.field private mCalendarDayOfWeek:I

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDate:Landroid/widget/TextView;

.field protected mDensityDpi:I

.field protected mFontScale:F

.field protected mFontScaleChanged:Z

.field protected mHasTopMargin:Z

.field protected mLanguage:Ljava/lang/String;

.field protected mLunarCalendarInfo:Landroid/widget/TextView;

.field protected mOwnerInfo:Landroid/widget/TextView;

.field protected mResources:Landroid/content/res/Resources;

.field protected mScaleRatio:F

.field private mShowLunarCalendar:Z

.field protected mTextDark:Z

.field protected mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/keyguard/clock/MiuiBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mTextDark:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mHasTopMargin:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mScaleRatio:F

    iput-object p1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateHourFormat()V

    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .registers 2

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->getHeight()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->getHeight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getClockVisibleHeight()F
    .registers 2

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->getHeight()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getLunarCalendarView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopMargin()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsLayoutParams()V

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsTextSize()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mFontScale:F

    cmpl-float v1, v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iput-boolean v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mFontScaleChanged:Z

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsTextSize()V

    iput v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mFontScale:F

    :cond_13
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mDensityDpi:I

    if-eq v3, v1, :cond_23

    iput-boolean v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mFontScaleChanged:Z

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsTextSize()V

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsLayoutParams()V

    iput v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mDensityDpi:I

    :cond_23
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    iput-object v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLanguage:Ljava/lang/String;

    :cond_39
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/miui/system/internal/R$id;->current_date:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiBaseClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->unlock_screen_lunar_calendar_info:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiBaseClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->unlock_screen_owner_info:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiBaseClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateLunarCalendarInfo()V

    return-void
.end method

.method public setClockAlpha(F)V
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/keyguard/clock/MiuiBaseClock;->setAlpha(F)V

    return-void
.end method

.method protected setInfoDarkMode(I)V
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setIs24HourFormat(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->m24HourFormat:Z

    return-void
.end method

.method public setOwnerInfo(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    :cond_e
    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    return-void
.end method

.method public setScaleRatio(F)V
    .registers 3

    iput p1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mScaleRatio:F

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsTextSize()V

    :try_start_5
    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsLayoutParams()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public setShowLunarCalendar(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mShowLunarCalendar:Z

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateLunarCalendarInfo()V

    return-void
.end method

.method public setTextColorDark(Z)V
    .registers 4

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$color;->miui_owner_info_dark_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1f

    :cond_11
    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$color;->miui_owner_info_light_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1f
    nop

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateHourFormat()V
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->m24HourFormat:Z

    return-void
.end method

.method public updateLunarCalendarInfo()V
    .registers 4

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mShowLunarCalendar:Z

    if-eqz v0, :cond_2f

    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    const-string v2, "YY\u5e74 N\u6708e"

    invoke-virtual {v0, v2}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    :cond_2f
    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_36
    return-void
.end method

.method public updateResidentTimeZone(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateTime()V
    .registers 5

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->m24HourFormat:Z

    if-eqz v0, :cond_10

    sget v0, Lcom/miui/system/internal/R$string;->miui_lock_screen_date:I

    goto :goto_12

    :cond_10
    sget v0, Lcom/miui/system/internal/R$string;->miui_lock_screen_date_12:I

    :goto_12
    nop

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCalendarDayOfWeek:I

    if-eq v1, v2, :cond_35

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateLunarCalendarInfo()V

    iput v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCalendarDayOfWeek:I

    :cond_35
    return-void
.end method

.method public updateTimeZone(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lmiui/date/Calendar;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateTime()V

    return-void
.end method

.method public updateViewTopMargin(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mHasTopMargin:Z

    :try_start_2
    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsLayoutParams()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method protected updateViewsLayoutParams()V
    .registers 1

    return-void
.end method

.method protected updateViewsTextSize()V
    .registers 7

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mScaleRatio:F

    sget v2, Lcom/miui/system/internal/R$dimen;->miui_clock_date_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v2, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mScaleRatio:F

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_clock_date_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
