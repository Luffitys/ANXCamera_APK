.class public Lmiui/widget/PictureClock;
.super Landroid/widget/LinearLayout;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PictureClock$AmPm;
    }
.end annotation


# instance fields
.field private mAmPm:Lmiui/widget/PictureClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Lmiui/date/Calendar;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Lmiui/widget/ImageTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PictureClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/widget/PictureClock$1;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$1;-><init>(Lmiui/widget/PictureClock;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/PictureClock;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/widget/PictureClock;Lmiui/date/Calendar;)Lmiui/date/Calendar;
    .registers 2

    iput-object p1, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/widget/PictureClock;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/PictureClock;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateTime()V
    .registers 5

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/date/Calendar;->setTimeInMillis(J)Lmiui/date/Calendar;

    :cond_d
    iget-object v0, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    iget-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-virtual {v1}, Lmiui/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x4c

    invoke-static {v1, v2, v3}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiui/widget/PictureClock$AmPm;->setShowAmPm(Z)V

    iget-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    iget-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Lmiui/date/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    invoke-virtual {v0, v2}, Lmiui/widget/PictureClock$AmPm;->setIsMorning(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v0, :cond_31

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_31
    new-instance v0, Lmiui/date/Calendar;

    invoke-direct {v0}, Lmiui/date/Calendar;-><init>()V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mCalendar:Lmiui/date/Calendar;

    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_18
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/miui/internal/R$id;->time_display:I

    invoke-virtual {p0, v0}, Lmiui/widget/PictureClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ImageTextView;

    iput-object v0, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    new-instance v0, Lmiui/widget/PictureClock$AmPm;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    return-void
.end method

.method setLive(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/PictureClock;->mLive:Z

    return-void
.end method
