.class public Lcom/android/camera/ui/VideoTagView;
.super Ljava/lang/Object;
.source "VideoTagView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_TAG_MARGIN_LEFT:I

.field private static final DEFAULT_TAG_MARGIN_RIGHT:I

.field private static final FIRST_TAG_GONE_DELAY:I = 0x65

.field private static final MAX_TAG_MARGIN_LEFT:I

.field private static final TAG:Ljava/lang/String; = "VideoTagView"

.field private static final VERTICAL_TAG:I = 0x64


# instance fields
.field private dataItemGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

.field private isFirstShowTag:Z

.field private isRecordingPause:Z

.field private isShowTagValue:Z

.field private isTagRecording:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultTagWidth:I

.field private mExpandTagWidth:I

.field private mFirstTagTip:Landroid/widget/TextView;

.field private mNeedRemoveTime:J

.field private mPauseRecordingTime:J

.field private mStartRecordingTime:J

.field private mTagContent:Landroid/widget/LinearLayout;

.field private mTagCountValue:Landroid/widget/TextView;

.field private mTagDefaultLayout:Landroid/widget/RelativeLayout;

.field private mTagExpandLayout:Landroid/widget/RelativeLayout;

.field private mTagFullLayout:Landroid/widget/RelativeLayout;

.field private recordingPauseTagCount:I

.field private shapeHideAnimator:Landroid/animation/ValueAnimator;

.field private shapeShowAnimator:Landroid/animation/ValueAnimator;

.field private srtBuilder:Ljava/lang/StringBuilder;

.field private videoTagCount:I

.field private videoTagHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41680000    # 14.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    const v0, 0x4151999a    # 13.1f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    const v0, 0x416e6666    # 14.9f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/VideoTagView;->MAX_TAG_MARGIN_LEFT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    new-instance v0, Lcom/android/camera/ui/VideoTagView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/VideoTagView$1;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    iput-object v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/VideoTagView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/VideoTagView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->shapeHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/VideoTagView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetVerticalTagView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/VideoTagView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mFirstTagTip:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/VideoTagView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->setTagLayoutWidth(I)V

    return-void
.end method

.method private getTime(J)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mStartRecordingTime:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    sub-long/2addr p1, v0

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss,SSS"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "GMT+00:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initTagViewAnimator()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget v2, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    aput v1, v0, v3

    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/VideoTagView;->shapeHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/VideoTagView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/VideoTagView$2;-><init>(Lcom/android/camera/ui/VideoTagView;)V

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->shapeHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private resetVerticalTagView()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    sget v4, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private setTagLayoutWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->mTagContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetVerticalTagView()V

    :goto_0
    return-void
.end method

.method private updateTagValueView(Landroid/widget/TextView;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isFirstShowTag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mFirstTagTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->dataItemGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setVideoTagNote()V

    iput-boolean v1, p0, Lcom/android/camera/ui/VideoTagView;->isFirstShowTag:Z

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagHandler:Landroid/os/Handler;

    const/16 p1, 0x64

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateTagView()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->resetVerticalTagView()V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getVideoTagContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/android/camera/ui/VideoTagView;->mContext:Landroid/content/Context;

    const p2, 0x7f090198

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f09016f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mFirstTagTip:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f090196

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagContent:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f090197

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f090199

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f09019a

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2, p2}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    sget p2, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_RIGHT:I

    add-int/2addr p1, p2

    sget p2, Lcom/android/camera/ui/VideoTagView;->DEFAULT_TAG_MARGIN_LEFT:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/VideoTagView;->mDefaultTagWidth:I

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagExpandLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    sget p2, Lcom/android/camera/ui/VideoTagView;->MAX_TAG_MARGIN_LEFT:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/VideoTagView;->mExpandTagWidth:I

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->initTagViewAnimator()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->shapeShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagDefaultLayout:Landroid/widget/RelativeLayout;

    sget v1, Lcom/android/camera/ui/VideoTagView;->MAX_TAG_MARGIN_LEFT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    if-nez v0, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    iget-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/VideoTagView;->getTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->updateTagValueView(Landroid/widget/TextView;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/VideoTagView;->getTime(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string v0, "%s\n"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->mTagCountValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/VideoTagView;->updateTagValueView(Landroid/widget/TextView;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "VideoTagView"

    const-string v1, "handleTagRecordingPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->recordingPauseTagCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    return-void
.end method

.method public resume()V
    .locals 4

    const-string v0, "VideoTagView"

    const-string v1, "handleTagRecordingResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/VideoTagView;->mPauseRecordingTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2

    const-string p1, "VideoTagView"

    const-string v0, "handleTagRecordingStart: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/global/DataItemGlobal;

    iput-object p1, p0, Lcom/android/camera/ui/VideoTagView;->dataItemGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

    iget-object p1, p0, Lcom/android/camera/ui/VideoTagView;->dataItemGlobal:Lcom/android/camera/data/data/global/DataItemGlobal;

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isFirstShowTag()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isFirstShowTag:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mStartRecordingTime:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/VideoTagView;->mNeedRemoveTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isShowTagValue:Z

    iput-boolean p1, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    invoke-direct {p0}, Lcom/android/camera/ui/VideoTagView;->updateTagView()V

    iget-object v0, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->srtBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "VideoTagView"

    const-string v1, "handleTagRecordingStop: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isRecordingPause:Z

    iput v0, p0, Lcom/android/camera/ui/VideoTagView;->videoTagCount:I

    iput-boolean v0, p0, Lcom/android/camera/ui/VideoTagView;->isTagRecording:Z

    iget-object p0, p0, Lcom/android/camera/ui/VideoTagView;->mTagFullLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
