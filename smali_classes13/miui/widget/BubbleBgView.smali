.class public Lmiui/widget/BubbleBgView;
.super Landroid/view/View;
.source "BubbleBgView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/BubbleBgView$Bubble;
    }
.end annotation


# static fields
.field private static final BUBBLE_DATA:[I

.field private static final CNT_DATA_PER:I = 0x8

.field private static final INDEX_COLOR:I = 0x7

.field private static final INDEX_MAXDX:I = 0x4

.field private static final INDEX_MAXDY:I = 0x6

.field private static final INDEX_MINDX:I = 0x3

.field private static final INDEX_MINDY:I = 0x5

.field private static final INDEX_RADIUS:I = 0x2

.field private static final INDEX_X:I = 0x0

.field private static final INDEX_Y:I = 0x1

.field private static final MSG_FLUSH:I = 0x1


# instance fields
.field private mBubbles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/widget/BubbleBgView$Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/miui/internal/util/DeviceHelper;->IS_TABLET:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    goto :goto_17

    :cond_e
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    :goto_17
    return-void

    :array_18
    .array-data 4
        0x6e
        0xc5
        0xc6
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0xa0
        -0x20
        0xe6
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x24f
        0x18
        0x16f
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x325
        0x111
        0xad
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0x146
        -0x44
        0x1a1
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data

    :array_6c
    .array-data 4
        0x27
        0xa1
        0x67
        0x0
        0x1e
        -0x50
        0x14
        -0x25e7
        0x67
        0x27
        0x72
        0x0
        0x1e
        0x0
        0x64
        0x33ff2200
        0x12e
        0x29
        0xd3
        0x0
        0x1e
        -0x32
        0x32
        -0x19000900
        0x19b
        0xa6
        0x77
        -0x1e
        0xa
        -0x50
        0x14
        0x7302c730
        0xab
        0xe2
        0xb5
        -0xf
        0xf
        -0x14
        0x1e
        0x4cf8f8f8
        0x87
        0x21
        0xc3
        0x0
        0x1e
        0x0
        0x32
        -0x2600a600
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/BubbleBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/widget/BubbleBgView;->mBubbles:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lmiui/widget/BubbleBgView$1;

    invoke-direct {v0, p0}, Lmiui/widget/BubbleBgView$1;-><init>(Lmiui/widget/BubbleBgView;)V

    iput-object v0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lmiui/widget/BubbleBgView;->initBubbles()V

    iget-object v0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/BubbleBgView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/widget/BubbleBgView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initBubbles()V
    .registers 22

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/BubbleBgView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    :goto_b
    sget-object v2, Lmiui/widget/BubbleBgView;->BUBBLE_DATA:[I

    array-length v3, v2

    if-ge v1, v3, :cond_5c

    add-int/lit8 v3, v1, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v13, v4

    add-int/lit8 v4, v1, 0x2

    aget v4, v2, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v14, v4

    add-int/lit8 v4, v1, 0x3

    aget v15, v2, v4

    add-int/lit8 v4, v1, 0x4

    aget v16, v2, v4

    add-int/lit8 v4, v1, 0x5

    aget v17, v2, v4

    add-int/lit8 v4, v1, 0x6

    aget v18, v2, v4

    add-int/lit8 v4, v1, 0x7

    aget v2, v2, v4

    move-object/from16 v12, p0

    iget-object v11, v12, Lmiui/widget/BubbleBgView;->mBubbles:Ljava/util/ArrayList;

    new-instance v10, Lmiui/widget/BubbleBgView$Bubble;

    move-object v4, v10

    move v5, v3

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move/from16 v19, v0

    move-object v0, v10

    move/from16 v10, v17

    move/from16 v20, v3

    move-object v3, v11

    move/from16 v11, v18

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lmiui/widget/BubbleBgView$Bubble;-><init>(IIIIIIII)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x8

    move/from16 v0, v19

    goto :goto_b

    :cond_5c
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/widget/BubbleBgView;->mBubbles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/widget/BubbleBgView$Bubble;

    iget-object v2, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    # getter for: Lmiui/widget/BubbleBgView$Bubble;->color:I
    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->access$100(Lmiui/widget/BubbleBgView$Bubble;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    # invokes: Lmiui/widget/BubbleBgView$Bubble;->getCurrentX()F
    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->access$200(Lmiui/widget/BubbleBgView$Bubble;)F

    move-result v2

    # invokes: Lmiui/widget/BubbleBgView$Bubble;->getCurrentY()F
    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->access$300(Lmiui/widget/BubbleBgView$Bubble;)F

    move-result v3

    # getter for: Lmiui/widget/BubbleBgView$Bubble;->radius:I
    invoke-static {v1}, Lmiui/widget/BubbleBgView$Bubble;->access$400(Lmiui/widget/BubbleBgView$Bubble;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lmiui/widget/BubbleBgView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_31
    return-void
.end method
