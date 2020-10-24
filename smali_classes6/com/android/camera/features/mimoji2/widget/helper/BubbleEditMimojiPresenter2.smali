.class public Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INVISIBLE_STATE:I = -0x1

.field public static final RESET_STATE:I = -0x2

.field private static final TAG:Ljava/lang/String; = "BubbleEditMimojiPresenter2"

.field private static final VISIBLE_STATE:I = 0x1


# instance fields
.field bubblePop1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

.field private downMove:I

.field private isAnimationingDele:Z

.field private isAnimationingEdit:Z

.field private isAnimationingEmoticon:Z

.field private leftMove:D

.field mContext:Landroid/content/Context;

.field private mHashCodeBubble:I

.field private mIsRTL:Z

.field public mShowBubbleState:[I

.field public mTargetView:Landroid/view/View;

.field private rightMove:D

.field private topMove:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingEmoticon:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingDele:Z

    iput-boolean v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingEdit:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mShowBubbleState:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mHashCodeBubble:I

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mIsRTL:Z

    new-instance p1, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;-><init>(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/widget/RelativeLayout;)V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->bubblePop1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingEdit:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingEdit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingDele:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->downMove:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingDele:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mIsRTL:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->rightMove:D

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->leftMove:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->topMove:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->isAnimationingEmoticon:Z

    return p1
.end method


# virtual methods
.method public getBubblePop()Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->bubblePop1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    return-object p0
.end method

.method public processBubbleAni(IILandroid/view/View;)V
    .locals 4

    const/4 v0, -0x2

    if-ne v0, p1, :cond_1

    if-ne v0, p2, :cond_1

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->bubblePop1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-virtual {p3}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->getProcessState()I

    move-result p3

    const/16 v0, 0x67

    if-ne p3, v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->bubblePop1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->processBubbleAni(III)V

    :cond_0
    return-void

    :cond_1
    iput-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mTargetView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    iget-object p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07033e

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-double v0, p3

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->rightMove:D

    neg-double v0, v0

    iput-wide v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->leftMove:D

    neg-int v0, p3

    iput v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->topMove:I

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->downMove:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculate vector leftMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->leftMove:D

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " rightMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->rightMove:D

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "  topMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->topMove:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  downMove:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->downMove:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BubbleEditMimojiPresenter2"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->bubblePop1:Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2$BubblePop;->processBubbleAni(III)V

    return-void
.end method

.method public setmHashCodeBubble(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/widget/helper/BubbleEditMimojiPresenter2;->mHashCodeBubble:I

    return-void
.end method
