.class public Lmiui/keyguard/clock/MiuiVerticalClock;
.super Lmiui/keyguard/clock/MiuiBaseClock;
.source "MiuiVerticalClock.java"


# instance fields
.field private mTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/keyguard/clock/MiuiVerticalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->miui_center_clock_magin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->onFinishInflate()V

    sget v0, Lcom/miui/system/internal/R$id;->current_time:I

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiVerticalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiVerticalClock;->updateTime()V

    return-void
.end method

.method public setTextColorDark(Z)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/keyguard/clock/MiuiBaseClock;->setTextColorDark(Z)V

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiVerticalClock;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$color;->miui_common_time_dark_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    iget-object v1, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiVerticalClock;->setInfoDarkMode(I)V

    return-void
.end method

.method public updateTime()V
    .registers 5

    invoke-super {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateTime()V

    iget-boolean v0, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->m24HourFormat:Z

    if-eqz v0, :cond_a

    sget v0, Lcom/miui/system/internal/R$string;->miui_vertical_time_format_24:I

    goto :goto_c

    :cond_a
    sget v0, Lcom/miui/system/internal/R$string;->miui_vertical_time_format_12:I

    :goto_c
    nop

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mTimeText:Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mCalendar:Lmiui/date/Calendar;

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/date/Calendar;->format(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateViewsLayoutParams()V
    .registers 8

    invoke-virtual {p0}, Lmiui/keyguard/clock/MiuiVerticalClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mHasTopMargin:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mScaleRatio:F

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/miui/system/internal/R$dimen;->miui_center_clock_magin_top:I

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

    invoke-virtual {p0, v0}, Lmiui/keyguard/clock/MiuiVerticalClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mScaleRatio:F

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/miui/system/internal/R$dimen;->miui_vertical_clock_date_info_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mCurrentDate:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mScaleRatio:F

    iget-object v4, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/miui/system/internal/R$dimen;->miui_clock_lunar_calendar_top_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mScaleRatio:F

    iget-object v5, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/miui/system/internal/R$dimen;->miui_clock_owner_info_top_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateViewsTextSize()V
    .registers 6

    invoke-super {p0}, Lmiui/keyguard/clock/MiuiBaseClock;->updateViewsTextSize()V

    iget-object v0, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mScaleRatio:F

    sget v2, Lcom/miui/system/internal/R$dimen;->miui_clock_center_time_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/keyguard/clock/MiuiVerticalClock;->mTimeText:Landroid/widget/TextView;

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
