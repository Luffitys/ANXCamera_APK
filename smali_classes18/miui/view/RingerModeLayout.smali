.class public Lmiui/view/RingerModeLayout;
.super Landroid/widget/LinearLayout;
.source "RingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/RingerModeLayout$H;,
        Lmiui/view/RingerModeLayout$SilenceModeObserver;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingerModeLayout"


# instance fields
.field private ContentHeight:I

.field private mAnimating:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mDialogView:Landroid/view/ViewGroup;

.field private mHandler:Lmiui/view/RingerModeLayout$H;

.field private mHelpBtn:Landroid/widget/ImageView;

.field private mHelpButtonListener:Landroid/view/View$OnClickListener;

.field private mLooper:Landroid/os/Looper;

.field private mOrignalMode:I

.field private mOrignalRemain:J

.field private mRadioButtonListener:Landroid/view/View$OnClickListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRemainTextShown:Z

.field private mRemainTime_1:Landroid/widget/TextView;

.field private mRemainTime_2:Landroid/widget/TextView;

.field private mSelectedText:Landroid/widget/TextView;

.field private mShowing:Z

.field private mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSilenceModeContent:Landroid/widget/RelativeLayout;

.field private mSilenceModeExpandContent:Landroid/widget/LinearLayout;

.field public mSilenceModeExpanded:Z

.field private final mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

.field private mSilenceModeTitle:Landroid/widget/TextView;

.field private mSlidingButton:Lmiui/widget/SlidingButton;

.field private mStandardBtn:Landroid/widget/RadioButton;

.field private mTimeLabel:Landroid/widget/RelativeLayout;

.field private mTimeLabelListener:Landroid/view/View$OnClickListener;

.field private mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mTimeSeekbar:Lmiui/widget/SeekBar;

.field private mTotalBtn:Landroid/widget/RadioButton;

.field private mVolumeDialog:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$SilenceModeObserver;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    new-instance v0, Lmiui/view/RingerModeLayout$1;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$1;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lmiui/view/RingerModeLayout$2;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$2;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lmiui/view/RingerModeLayout$3;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$3;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/view/RingerModeLayout$4;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$4;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiui/view/RingerModeLayout$5;

    invoke-direct {v0, p0}, Lmiui/view/RingerModeLayout$5;-><init>(Lmiui/view/RingerModeLayout;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeLabelListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/RingerModeLayout;->mOrignalRemain:J

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/view/RingerModeLayout;->mOrignalMode:I

    return-void
.end method

.method static synthetic access$000(Lmiui/view/RingerModeLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    return v0
.end method

.method static synthetic access$100(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mVolumeDialog:Lmiui/view/VolumeDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lmiui/view/RingerModeLayout;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/view/RingerModeLayout;I)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/RingerModeLayout;->progressToMinute(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lmiui/view/RingerModeLayout;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/view/RingerModeLayout;)Lmiui/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lmiui/view/RingerModeLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return v0
.end method

.method static synthetic access$1502(Lmiui/view/RingerModeLayout;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1600(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lmiui/view/RingerModeLayout;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lmiui/view/RingerModeLayout;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mDialogView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lmiui/view/RingerModeLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRemainTimeSeekbar()V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/RingerModeLayout;)I
    .registers 2

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$2000(Lmiui/view/RingerModeLayout;)Z
    .registers 2

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lmiui/view/RingerModeLayout;I)I
    .registers 2

    iput p1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    return p1
.end method

.method static synthetic access$2100(Lmiui/view/RingerModeLayout;)Lmiui/widget/SlidingButton;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/view/RingerModeLayout;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/view/RingerModeLayout;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRadioGroup()V

    return-void
.end method

.method static synthetic access$500(Lmiui/view/RingerModeLayout;)Landroid/widget/RadioGroup;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/view/RingerModeLayout;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/view/RingerModeLayout;I)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/view/RingerModeLayout;->getProgressLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lmiui/view/RingerModeLayout;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lmiui/view/RingerModeLayout;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    return-object p1
.end method

.method private changeSilenceModeTitle(Z)V
    .registers 4

    if-eqz p1, :cond_14

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const v0, 0x110e015c

    goto :goto_e

    :cond_b
    const v0, 0x110e019b

    :goto_e
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c

    :cond_14
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v1, 0x110e014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1c
    return-void
.end method

.method private getProgressLevel(I)I
    .registers 5

    move v0, p1

    const/16 v1, 0xc

    if-gt v0, v1, :cond_7

    const/4 v1, 0x0

    goto :goto_26

    :cond_7
    add-int/lit8 v2, v0, -0x19

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_11

    const/4 v1, 0x1

    goto :goto_26

    :cond_11
    add-int/lit8 v2, v0, -0x32

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_1b

    const/4 v1, 0x2

    goto :goto_26

    :cond_1b
    add-int/lit8 v2, v0, -0x4b

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_25

    const/4 v1, 0x3

    goto :goto_26

    :cond_25
    const/4 v1, 0x4

    :goto_26
    return v1
.end method

.method private getXPosition(Lmiui/widget/SeekBar;)I
    .registers 7

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v4, v3

    return v4
.end method

.method private isSilenceModeEnabled()Z
    .registers 2

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private progressToMinute(I)I
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x32

    if-gt p1, v1, :cond_a

    div-int/lit8 v1, p1, 0x19

    mul-int/lit8 v0, v1, 0x1e

    goto :goto_17

    :cond_a
    const/16 v1, 0x4b

    if-gt p1, v1, :cond_11

    const/16 v0, 0x78

    goto :goto_17

    :cond_11
    const/16 v1, 0x64

    if-gt p1, v1, :cond_17

    const/16 v0, 0x1e0

    :cond_17
    :goto_17
    return v0
.end method

.method private timeToMinute(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const-wide/32 v0, 0x1b7740

    cmp-long v0, p1, v0

    if-gtz v0, :cond_12

    const/16 v0, 0x1e

    return v0

    :cond_12
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1c

    const/16 v0, 0x3c

    return v0

    :cond_1c
    const-wide/32 v0, 0x6ddd00

    cmp-long v0, p1, v0

    if-gtz v0, :cond_26

    const/16 v0, 0x78

    return v0

    :cond_26
    const/16 v0, 0x1e0

    return v0
.end method

.method private timeToProgress(J)I
    .registers 9

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0xe10

    cmp-long v4, p1, v2

    if-gtz v4, :cond_d

    const-wide/16 v2, 0x48

    div-long v0, p1, v2

    goto :goto_2c

    :cond_d
    const-wide/16 v4, 0x1c20

    cmp-long v4, p1, v4

    if-gtz v4, :cond_1d

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x90

    div-long v2, p1, v2

    const-wide/16 v4, 0x32

    add-long v0, v2, v4

    goto :goto_2c

    :cond_1d
    const-wide/16 v4, 0x7080

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2c

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x360

    div-long v2, p1, v2

    const-wide/16 v4, 0x4b

    add-long v0, v2, v4

    :cond_2c
    :goto_2c
    long-to-int v2, v0

    return v2
.end method

.method private turnMillSecondsToHour(J)Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0x36ee80

    div-long v3, p1, v1

    long-to-int v3, v3

    rem-long v1, p1, v1

    long-to-int v1, v1

    const v2, 0xea60

    div-int v4, v1, v2

    rem-int/2addr v1, v2

    div-int/lit16 v2, v1, 0x3e8

    const-string v5, ":"

    const-string v6, "0"

    const/16 v7, 0xa

    if-lez v3, :cond_29

    if-ge v3, v7, :cond_23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    if-ge v4, v7, :cond_2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v7, :cond_39

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private updateRadioGroup()V
    .registers 4

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    const v1, 0x11090098

    goto :goto_18

    :cond_15
    const v1, 0x11090099

    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/RingerModeLayout;->changeSilenceModeTitle(Z)V

    :cond_1f
    return-void
.end method

.method private updateRemainText(Z)V
    .registers 7

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const-string v0, "RingerModeLayout"

    const-string v1, "updateRemainText..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    if-eqz p1, :cond_14

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_17
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lmiui/view/RingerModeLayout$7;

    invoke-direct {v3, p0}, Lmiui/view/RingerModeLayout$7;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateRemainTimeSeekbar()V
    .registers 12

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-lez v2, :cond_76

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v2, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-direct {p0, v2}, Lmiui/view/RingerModeLayout;->updateRemainText(Z)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    const-wide/16 v5, 0x3e8

    div-long v7, v0, v5

    invoke-direct {p0, v7, v8}, Lmiui/view/RingerModeLayout;->timeToProgress(J)I

    move-result v7

    invoke-virtual {v2, v7}, Lmiui/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    iget-object v7, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    const v8, 0x110e0125

    new-array v9, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lmiui/view/RingerModeLayout;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lmiui/view/RingerModeLayout;->turnMillSecondsToHour(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    invoke-direct {p0, v4}, Lmiui/view/RingerModeLayout;->getXPosition(Lmiui/widget/SeekBar;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v4, v3}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v4, v3}, Lmiui/view/RingerModeLayout$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3, v5, v6}, Lmiui/view/RingerModeLayout$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_88

    :cond_76
    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v4}, Lmiui/view/RingerModeLayout;->updateRemainText(Z)V

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    invoke-virtual {v2, v4}, Lmiui/widget/SeekBar;->setProgress(I)V

    :goto_88
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 10

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x7530

    iget-wide v4, p0, Lmiui/view/RingerModeLayout;->mOrignalRemain:J

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-gez v4, :cond_29

    iget v4, p0, Lmiui/view/RingerModeLayout;->mOrignalMode:I

    if-eq v4, v2, :cond_3e

    :cond_29
    invoke-direct {p0, v0, v1}, Lmiui/view/RingerModeLayout;->timeToMinute(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "silence_DND"

    invoke-static {v8, v5, v4, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_3e
    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-virtual {v4}, Lmiui/view/RingerModeLayout$SilenceModeObserver;->unregister()V

    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    iput-object v4, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    iput-object v4, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    return-void
.end method

.method public expandSilenceModeContent(Z)V
    .registers 8

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiui/view/RingerModeLayout;->changeSilenceModeTitle(Z)V

    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eq v0, p1, :cond_70

    if-eqz p1, :cond_26

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_26
    iget-boolean v0, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    if-nez v0, :cond_2b

    :cond_2a
    goto :goto_70

    :cond_2b
    iput-boolean p1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    if-eqz p1, :cond_33

    const/4 v0, 0x0

    iget v3, p0, Lmiui/view/RingerModeLayout;->ContentHeight:I

    goto :goto_3a

    :cond_33
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    :goto_3a
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v0, v4, v1

    aput v3, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v4, Lmiui/view/RingerModeLayout$8;

    invoke-direct {v4, p0}, Lmiui/view/RingerModeLayout$8;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lmiui/view/RingerModeLayout$9;

    invoke-direct {v4, p0}, Lmiui/view/RingerModeLayout$9;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v4, v2}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    iget-object v4, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    invoke-virtual {v4, v2}, Lmiui/view/RingerModeLayout$H;->sendEmptyMessage(I)Z

    return-void

    :cond_70
    :goto_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Silence mode content is alread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RingerModeLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lmiui/view/RingerModeLayout;->mAnimating:Z

    return-void
.end method

.method public init()V
    .registers 5

    const-string v0, "RingerModeLayout"

    const-string v1, "init..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x110900b4

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeContent:Landroid/widget/RelativeLayout;

    const v0, 0x110900b5

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    const v0, 0x110900b6

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v0, 0x110900cb

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SeekBar;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    const v0, 0x11090097

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x11090098

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    const v0, 0x11090099

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    const v0, 0x1109005e

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    const v0, 0x110900b7

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    const v0, 0x1109009c

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_1:Landroid/widget/TextView;

    const v0, 0x1109009d

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mRemainTime_2:Landroid/widget/TextView;

    const v0, 0x110900ca

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeLabel:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v1, 0x11090007

    invoke-virtual {p0, v1}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v1, 0x11090087

    invoke-virtual {p0, v1}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v1, 0x110900d6

    invoke-virtual {p0, v1}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v1, 0x11090057

    invoke-virtual {p0, v1}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const v1, 0x11090055

    invoke-virtual {p0, v1}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mTimeLabelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_dc

    :cond_ee
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/view/RingerModeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1105008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSelectedText:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1, v1}, Landroid/widget/RadioGroup;->measure(II)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x110900b1

    invoke-virtual {p0, v0}, Lmiui/view/RingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lmiui/view/RingerModeLayout;->ContentHeight:I

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mHelpBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mHelpButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v3, p0, Lmiui/view/RingerModeLayout;->mShowing:Z

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeObserver:Lmiui/view/RingerModeLayout$SilenceModeObserver;

    invoke-virtual {v0}, Lmiui/view/RingerModeLayout$SilenceModeObserver;->register()V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeContent:Landroid/widget/RelativeLayout;

    new-instance v2, Lmiui/view/RingerModeLayout$6;

    invoke-direct {v2, p0}, Lmiui/view/RingerModeLayout$6;-><init>(Lmiui/view/RingerModeLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRadioGroup()V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSlidingButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mSilenceButtonChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTimeSeekbar:Lmiui/widget/SeekBar;

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mTimeSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Lmiui/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mTotalBtn:Landroid/widget/RadioButton;

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mStandardBtn:Landroid/widget/RadioButton;

    iget-object v2, p0, Lmiui/view/RingerModeLayout;->mRadioButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpandContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput-boolean v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeExpanded:Z

    iput-boolean v1, p0, Lmiui/view/RingerModeLayout;->mRemainTextShown:Z

    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->isSilenceModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1bc

    iget v0, p0, Lmiui/view/RingerModeLayout;->mCurrentMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b3

    const v0, 0x110e015c

    goto :goto_1b6

    :cond_1b3
    const v0, 0x110e019b

    :goto_1b6
    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1c4

    :cond_1bc
    iget-object v0, p0, Lmiui/view/RingerModeLayout;->mSilenceModeTitle:Landroid/widget/TextView;

    const v1, 0x110e014e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1c4
    invoke-direct {p0}, Lmiui/view/RingerModeLayout;->updateRemainTimeSeekbar()V

    return-void
.end method

.method public setLooper(Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mLooper:Landroid/os/Looper;

    new-instance v0, Lmiui/view/RingerModeLayout$H;

    iget-object v1, p0, Lmiui/view/RingerModeLayout;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lmiui/view/RingerModeLayout$H;-><init>(Lmiui/view/RingerModeLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/view/RingerModeLayout;->mHandler:Lmiui/view/RingerModeLayout$H;

    return-void
.end method

.method public setParentDialog(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mDialogView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setVolumeDialog(Lmiui/view/VolumeDialog;)V
    .registers 2

    iput-object p1, p0, Lmiui/view/RingerModeLayout;->mVolumeDialog:Lmiui/view/VolumeDialog;

    return-void
.end method
