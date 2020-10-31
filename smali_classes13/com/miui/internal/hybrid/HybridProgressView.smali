.class public Lcom/miui/internal/hybrid/HybridProgressView;
.super Landroid/widget/ImageView;
.source "HybridProgressView.java"


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
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/internal/hybrid/HybridProgressView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/internal/hybrid/HybridProgressView;I)I
    .registers 2

    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/internal/hybrid/HybridProgressView;)I
    .registers 2

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mIncrement:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/hybrid/HybridProgressView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    iput v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    iput v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/miui/internal/R$drawable;->hybrid_progress_reverse:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/miui/internal/hybrid/HybridProgressView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/hybrid/HybridProgressView$1;-><init>(Lcom/miui/internal/hybrid/HybridProgressView;)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getMax()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/internal/hybrid/HybridProgressView;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mReverseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    sub-int v2, p4, p2

    iget v3, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x2710

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mBounds:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setProgress(I)V
    .registers 4

    mul-int/lit8 p1, p1, 0x64

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    const/16 v1, 0x320

    if-gt v0, v1, :cond_a

    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    :cond_a
    iput p1, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mTargetProgress:I

    iget v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mCurrentProgress:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mIncrement:I

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridProgressView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
