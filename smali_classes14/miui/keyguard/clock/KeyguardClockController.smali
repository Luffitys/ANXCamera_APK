.class public Lmiui/keyguard/clock/KeyguardClockController;
.super Ljava/lang/Object;
.source "KeyguardClockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/keyguard/clock/KeyguardClockController$IClockView;
    }
.end annotation


# static fields
.field private static final AUTO_DUAL_CLOCK:Ljava/lang/String; = "auto_dual_clock"

.field public static final HIDE_LUNAR_CALENDAR:I = 0x0

.field public static final KEYGUARD_CLOCK_CENTER_HORIZONTAL:I = 0x1

.field public static final KEYGUARD_CLOCK_CENTER_VERTICAL:I = 0x3

.field public static final KEYGUARD_CLOCK_DEFAULT:I = 0x0

.field public static final KEYGUARD_CLOCK_DUAL:I = 0x65

.field public static final KEYGUARD_CLOCK_LEFT_TOP:I = 0x2

.field public static final KEYGUARD_CLOCK_LEFT_TOP_LARGE:I = 0x4

.field private static final KEY_SETTINGS_SYSTEM_SHOW_LUNAR_CALENDAR:Ljava/lang/String; = "show_lunar_calendar"

.field private static final RESIDENT_TIMEZONE:Ljava/lang/String; = "resident_timezone"

.field public static final SELECTED_KEYGUARD_CLOCK_POSITION:Ljava/lang/String; = "selected_keyguard_clock_position"

.field public static final SHOW_LUNAR_CALENDAR:I = 0x1

.field public static final UNDEFINED:I = -0x1


# instance fields
.field private mAutoDualClock:Z

.field private mAutoUpdateTime:Z

.field private mClockStyle:I

.field private mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimezone:Ljava/lang/String;

.field private mDualClockOpen:Z

.field mDualClockOpenObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHasTopMargin:Z

.field private mLastClockPosition:I

.field private mOwnerString:Ljava/lang/String;

.field private mResidentTimezone:Ljava/lang/String;

.field mResidentTimezoneObserver:Landroid/database/ContentObserver;

.field private mScaleRatio:F

.field private mSelectedClockPosition:I

.field private mShowDualClock:Z

.field private mShowLunarCalendar:I

.field private mTextDark:Z

.field private final mTimezoneChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mCurrentTimezone:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mAutoDualClock:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpen:Z

    iput-boolean v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowDualClock:Z

    iput-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mHasTopMargin:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mOwnerString:Ljava/lang/String;

    iput v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockStyle:I

    iput v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mSelectedClockPosition:I

    iput v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mLastClockPosition:I

    const/4 v2, -0x1

    iput v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowLunarCalendar:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mScaleRatio:F

    iput-boolean v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mTextDark:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mAutoUpdateTime:Z

    new-instance v2, Lmiui/keyguard/clock/KeyguardClockController$1;

    invoke-direct {v2, p0}, Lmiui/keyguard/clock/KeyguardClockController$1;-><init>(Lmiui/keyguard/clock/KeyguardClockController;)V

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    new-instance v2, Lmiui/keyguard/clock/KeyguardClockController$2;

    invoke-direct {v2, p0}, Lmiui/keyguard/clock/KeyguardClockController$2;-><init>(Lmiui/keyguard/clock/KeyguardClockController;)V

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mTimezoneChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lmiui/keyguard/clock/KeyguardClockController$3;

    invoke-direct {v2, p0}, Lmiui/keyguard/clock/KeyguardClockController$3;-><init>(Lmiui/keyguard/clock/KeyguardClockController;)V

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lmiui/keyguard/clock/KeyguardClockController$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lmiui/keyguard/clock/KeyguardClockController$4;-><init>(Lmiui/keyguard/clock/KeyguardClockController;Landroid/os/Handler;)V

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    new-instance v2, Lmiui/keyguard/clock/KeyguardClockController$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lmiui/keyguard/clock/KeyguardClockController$5;-><init>(Lmiui/keyguard/clock/KeyguardClockController;Landroid/os/Handler;)V

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "selected_keyguard_clock_position"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mSelectedClockPosition:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_dual_clock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7d

    move v2, v0

    goto :goto_7e

    :cond_7d
    move v2, v1

    :goto_7e
    iput-boolean v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpen:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "resident_timezone"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezone:Ljava/lang/String;

    iget-boolean v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpen:Z

    if-eqz v3, :cond_9b

    if-eqz v2, :cond_9b

    iget-object v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    goto :goto_9c

    :cond_9b
    move v0, v1

    :goto_9c
    iput-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowDualClock:Z

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->addClockView()V

    invoke-virtual {p0}, Lmiui/keyguard/clock/KeyguardClockController;->updateKeyguardClock()V

    return-void
.end method

.method static synthetic access$000(Lmiui/keyguard/clock/KeyguardClockController;)Lmiui/keyguard/clock/KeyguardClockController$IClockView;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/keyguard/clock/KeyguardClockController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mCurrentTimezone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/keyguard/clock/KeyguardClockController;)V
    .registers 1

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->updateDualClock()V

    return-void
.end method

.method static synthetic access$300(Lmiui/keyguard/clock/KeyguardClockController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/keyguard/clock/KeyguardClockController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lmiui/keyguard/clock/KeyguardClockController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpen:Z

    return p1
.end method

.method static synthetic access$600(Lmiui/keyguard/clock/KeyguardClockController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lmiui/keyguard/clock/KeyguardClockController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezone:Ljava/lang/String;

    return-object p1
.end method

.method private addClockView()V
    .registers 6

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->getClockPosition()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    const/4 v4, 0x1

    if-eq v2, v4, :cond_43

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3a

    const/4 v4, 0x3

    if-eq v2, v4, :cond_31

    const/4 v4, 0x4

    if-eq v2, v4, :cond_28

    const/16 v4, 0x65

    if-eq v2, v4, :cond_1f

    goto :goto_4c

    :cond_1f
    sget v2, Lcom/miui/system/internal/R$layout;->miui_dual_clock:I

    iget-object v4, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_4c

    :cond_28
    sget v2, Lcom/miui/system/internal/R$layout;->miui_left_top_large_clock:I

    iget-object v4, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_4c

    :cond_31
    sget v2, Lcom/miui/system/internal/R$layout;->miui_vertical_clock:I

    iget-object v4, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_4c

    :cond_3a
    sget v2, Lcom/miui/system/internal/R$layout;->miui_left_top_clock:I

    iget-object v4, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_4c

    :cond_43
    sget v2, Lcom/miui/system/internal/R$layout;->miui_center_horizontal_clock:I

    iget-object v4, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    nop

    :goto_4c
    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v2, v1

    check-cast v2, Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    iput-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    if-eqz v2, :cond_89

    iget-object v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezone:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->updateResidentTimeZone(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    iget-object v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mCurrentTimezone:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->updateTimeZone(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->getShowLunarCalendar()Z

    move-result v3

    invoke-interface {v2, v3}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setShowLunarCalendar(Z)V

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    iget v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mScaleRatio:F

    invoke-interface {v2, v3}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setScaleRatio(F)V

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    iget-boolean v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mTextDark:Z

    invoke-interface {v2, v3}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setTextColorDark(Z)V

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    iget-boolean v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mHasTopMargin:Z

    invoke-interface {v2, v3}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->updateViewTopMargin(Z)V

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    iget-object v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mOwnerString:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setOwnerInfo(Ljava/lang/String;)V

    :cond_89
    return-void
.end method

.method private getClockPosition()I
    .registers 2

    iget-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowDualClock:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x65

    return v0

    :cond_7
    iget v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockStyle:I

    if-eqz v0, :cond_c

    return v0

    :cond_c
    iget v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mSelectedClockPosition:I

    if-eqz v0, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lmiui/keyguard/clock/KeyguardClockController;->getDefaultClockPosition()I

    move-result v0

    return v0
.end method

.method private getShowLunarCalendar()Z
    .registers 5

    iget v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowLunarCalendar:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_a

    return v2

    :cond_a
    return v3

    :cond_b
    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_lunar_calendar"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1a

    move v2, v3

    :cond_1a
    return v2
.end method

.method private registerDualClockObserver()V
    .registers 5

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dual_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "resident_timezone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private unregisterDualClockObserver()V
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateDualClock()V
    .registers 3

    iget-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mAutoDualClock:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mDualClockOpen:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mResidentTimezone:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mCurrentTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowDualClock:Z

    invoke-virtual {p0}, Lmiui/keyguard/clock/KeyguardClockController;->updateKeyguardClock()V

    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    invoke-interface {v0}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->getClockHeight()I

    move-result v0

    return v0
.end method

.method public getClockVisibleHeight()F
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    invoke-interface {v0}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->getClockVisibleHeight()F

    move-result v0

    return v0
.end method

.method public getDefaultClockPosition()I
    .registers 3

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "davinciin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "raphaelin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "chiron"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "polaris"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v0, 0x0

    return v0

    :cond_3f
    :goto_3f
    const/4 v0, 0x3

    return v0
.end method

.method public getTopMargin()F
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    invoke-interface {v0}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->getTopMargin()F

    move-result v0

    return v0
.end method

.method public onAddToWindow()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mTimezoneChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mAutoUpdateTime:Z

    if-eqz v1, :cond_2b

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/keyguard/clock/KeyguardClockController;->mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2b
    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->registerDualClockObserver()V

    return-void
.end method

.method public onRemoveFromWindow()V
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mTimezoneChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mAutoUpdateTime:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mUpdateTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_12
    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->unregisterDualClockObserver()V

    return-void
.end method

.method public setAutoDualClock(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mAutoDualClock:Z

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->updateDualClock()V

    return-void
.end method

.method public setAutoUpdateTime(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mAutoUpdateTime:Z

    return-void
.end method

.method public setClockAlpha(F)V
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    invoke-interface {v0, p1}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setClockAlpha(F)V

    return-void
.end method

.method public setClockStyle(I)V
    .registers 3

    iget v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockStyle:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockStyle:I

    invoke-virtual {p0}, Lmiui/keyguard/clock/KeyguardClockController;->updateKeyguardClock()V

    :cond_9
    return-void
.end method

.method public setHasTopMargin(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mHasTopMargin:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mHasTopMargin:Z

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->updateViewTopMargin(Z)V

    :cond_d
    return-void
.end method

.method public setOwnerInfo(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mOwnerString:Ljava/lang/String;

    if-eq v0, p1, :cond_d

    iput-object p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mOwnerString:Ljava/lang/String;

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setOwnerInfo(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public setScaleRatio(F)V
    .registers 3

    iget v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mScaleRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    iput p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mScaleRatio:F

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setScaleRatio(F)V

    :cond_f
    return-void
.end method

.method public setShowLunarCalendar(I)V
    .registers 4

    iget v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowLunarCalendar:I

    if-eq v0, p1, :cond_11

    iput p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mShowLunarCalendar:I

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->getShowLunarCalendar()Z

    move-result v1

    invoke-interface {v0, v1}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setShowLunarCalendar(Z)V

    :cond_11
    return-void
.end method

.method public setTextColorDark(Z)V
    .registers 3

    iget-boolean v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mTextDark:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mTextDark:Z

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->setTextColorDark(Z)V

    :cond_d
    return-void
.end method

.method public updateKeyguardClock()V
    .registers 3

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->getClockPosition()I

    move-result v0

    iget v1, p0, Lmiui/keyguard/clock/KeyguardClockController;->mLastClockPosition:I

    if-eq v0, v1, :cond_16

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->getClockPosition()I

    move-result v0

    iput v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mLastClockPosition:I

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lmiui/keyguard/clock/KeyguardClockController;->addClockView()V

    :cond_16
    return-void
.end method

.method public updateTime()V
    .registers 2

    iget-object v0, p0, Lmiui/keyguard/clock/KeyguardClockController;->mClockView:Lmiui/keyguard/clock/KeyguardClockController$IClockView;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/keyguard/clock/KeyguardClockController$IClockView;->updateTime()V

    :cond_7
    return-void
.end method
