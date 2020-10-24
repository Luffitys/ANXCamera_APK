.class public Lcom/miui/internal/hybrid/HybridProgressView;
.super Landroid/widget/ImageView;
.source ""


# static fields
.field private static final DELAY:I = 0x28

.field private static final MAX_CUR_PROGRESS:I = 0x251c

.field private static final MAX_PROGRESS:I = 0x2710

.field private static final MIN_CUR_PROGRESS:I = 0x320

.field private static final MSG_UPDATE:I = 0x2a

.field private static final STEPS:I = 0xa


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mHandler:Landroid/os/Handler;

.field private mIncrement:I

.field private mReverseBounds:Landroid/graphics/Rect;

.field private mReverseDrawable:Landroid/graphics/drawable/Drawable;

.field private mTargetProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/internal/hybrid/HybridProgressView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .locals 0

    iget p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mIncrement:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/miui/internal/R$drawable;->hybrid_progress_reverse:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lcom/miui/internal/hybrid/HybridProgressView$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/hybrid/HybridProgressView$1;-><init>(Lcom/miui/internal/hybrid/HybridProgressView;)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 0

    const/16 p0, 0x64

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    iget p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    mul-int/2addr p4, p0

    div-int/lit16 p4, p4, 0x2710

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x64

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    const/16 v1, 0x320

    if-gt v0, v1, :cond_0

    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    :cond_0
    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mIncrement:I

    iget-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
