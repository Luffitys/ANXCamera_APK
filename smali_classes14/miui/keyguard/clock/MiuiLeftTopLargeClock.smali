.class public Lmiui/keyguard/clock/MiuiLeftTopLargeClock;
.super Lmiui/keyguard/clock/MiuiBaseClock;
.source "MiuiLeftTopLargeClock.java"


# instance fields
.field private mCurrentDateLarge:Landroid/widget/TextView;

.field private mDateContainer:Landroid/widget/FrameLayout;

.field private mTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/keyguard/clock/MiuiBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getTopMargin()F
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->miui_left_top_clock_margin_top:I

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

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->onFinishInflate()V

    sget v0, Lcom/miui/system/internal/R$id;->current_time:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    sget v0, Lcom/miui/system/internal/R$id;->left_top_date_container:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/system/internal/R$id;->current_date_large:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->updateTime()V

    return-void
.end method

.method public setTextColorDark(Z)V
    .registers 5

    const/4 v0, -0x1

    if-eqz p1, :cond_6

    const/high16 v1, -0x1000000

    goto :goto_7

    :cond_6
    move v1, v0

    :goto_7
    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v1}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->setInfoDarkMode(I)V

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/system/internal/R$color;->miui_owner_info_dark_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :cond_24
    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateTime()V
    .registers 6

    invoke-super {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateTime()V

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->m24HourFormat:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x20

    goto :goto_c

    :cond_a
    const/16 v0, 0x10

    :goto_c
    iget-object v1, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    or-int/lit8 v4, v0, 0xc

    or-int/lit8 v4, v4, 0x40

    invoke-static {v2, v3, v4}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->m24HourFormat:Z

    if-eqz v1, :cond_24

    sget v1, Lcom/miui/system/internal/R$string;->miui_lock_screen_large_date:I

    goto :goto_26

    :cond_24
    sget v1, Lcom/miui/system/internal/R$string;->miui_lock_screen_large_date_12:I

    :goto_26
    nop

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v4, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateViewsLayoutParams()V
    .registers 8

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mHasTopMargin:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_left_top_clock_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_left_top_clock_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/miui/system/internal/R$dimen;->miui_left_top_large_clock_date_info_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    iget-object v4, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/miui/system/internal/R$dimen;->miui_clock_lunar_calendar_top_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    iget-object v4, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/miui/system/internal/R$dimen;->left_top_clock_date_margin_extra:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    iget-object v5, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/miui/system/internal/R$dimen;->miui_clock_owner_info_top_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    iget-object v5, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/miui/system/internal/R$dimen;->left_top_clock_date_margin_extra:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateViewsTextSize()V
    .registers 7

    invoke-super {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsTextSize()V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    sget v2, Lcom/miui/system/internal/R$dimen;->miui_left_top_clock_time_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v2, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mScaleRatio:F

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_left_top_large_clock_date_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
