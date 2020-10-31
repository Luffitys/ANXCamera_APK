.class public Lcom/android/internal/widget/TextProgressBar;
.super Landroid/widget/RelativeLayout;
.source "TextProgressBar.java"

# interfaces
.implements Landroid/widget/Chronometer$OnChronometerTickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field static final CHRONOMETER_ID:I = 0x1020014

.field static final PROGRESSBAR_ID:I = 0x102000d

.field public static final TAG:Ljava/lang/String; = "TextProgressBar"


# instance fields
.field mChronometer:Landroid/widget/Chronometer;

.field mChronometerFollow:Z

.field mChronometerGravity:I

.field mDuration:I

.field mDurationBase:J

.field mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020014

    if-ne v0, v1, :cond_2f

    instance-of v1, p1, Landroid/widget/Chronometer;

    if-eqz v1, :cond_2f

    move-object v1, p1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, p0}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    iget v1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    iget-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->getGravity()I

    move-result v1

    const v2, 0x800007

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    goto :goto_3d

    :cond_2f
    const v1, 0x102000d

    if-ne v0, v1, :cond_3d

    instance-of v1, p1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3d

    move-object v1, p1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    :cond_3d
    :goto_3d
    return-void
.end method

.method public onChronometerTick(Landroid/widget/Chronometer;)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_7f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    iget-object v2, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->stop()V

    :cond_13
    iget-wide v2, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-boolean v3, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerFollow:Z

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v4

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    mul-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v6

    div-int/2addr v5, v6

    iget v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v7}, Landroid/widget/Chronometer;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometerGravity:I

    const v9, 0x800005

    if-ne v8, v9, :cond_58

    neg-int v6, v7

    goto :goto_5e

    :cond_58
    const/4 v9, 0x1

    if-ne v8, v9, :cond_5e

    div-int/lit8 v8, v7, 0x2

    neg-int v6, v8

    :cond_5e
    :goto_5e
    add-int/2addr v5, v6

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int v8, v4, v8

    sub-int/2addr v8, v7

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ge v5, v9, :cond_6b

    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_6e

    :cond_6b
    if-le v5, v8, :cond_6e

    move v5, v8

    :cond_6e
    :goto_6e
    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v9, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v9}, Landroid/widget/Chronometer;->requestLayout()V

    :cond_7e
    return-void

    :cond_7f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting child ProgressBar with id \'android.R.id.progress\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDurationBase(J)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-wide p1, p0, Lcom/android/internal/widget/TextProgressBar;->mDurationBase:J

    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mChronometer:Landroid/widget/Chronometer;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v0

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    if-gtz v0, :cond_18

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    :cond_18
    iget-object v0, p0, Lcom/android/internal/widget/TextProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/internal/widget/TextProgressBar;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting child ProgressBar with id \'android.R.id.progress\' and Chronometer id \'android.R.id.text1\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
