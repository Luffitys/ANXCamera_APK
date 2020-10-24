.class public Lcom/android/camera/dualvideo/render/MiscTextureManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TEX_BACK_BLUR:I = 0xb

.field public static final TEX_DARK_CORNER_BOTTOM:I = 0xa

.field public static final TEX_DARK_CORNER_TOP:I = 0x9

.field public static final TEX_EXPAND:I = 0x10

.field public static final TEX_FRONT_BLUR:I = 0xc

.field public static final TEX_ROUND_CORNER_BOTTOM:I = 0xf

.field public static final TEX_ROUND_CORNER_TOP:I = 0xe

.field public static final TEX_SELECTED_BG:I = 0xd

.field public static final TEX_SELECTED_FIRST:I = 0x7

.field public static final TEX_SELECTED_SECOND:I = 0x8

.field public static final TEX_SHRINK:I = 0x11

.field public static final TEX_TAG_06X:I = 0x1

.field public static final TEX_TAG_10X:I = 0x5

.field public static final TEX_TAG_1X:I = 0x2

.field public static final TEX_TAG_2X:I = 0x3

.field public static final TEX_TAG_5X:I = 0x4

.field public static final TEX_TAG_FRONT:I = 0x6


# instance fields
.field private final mAnimTexTransMatrix:[F

.field private final mMiscRenderList:Ljava/util/ArrayList;

.field private mTexOrientation:I

.field private final mTexTransMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method static synthetic OooO00o(ILcom/android/camera/dualvideo/render/MiscRenderItem;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getTexType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic OooO0O0(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscRenderItem;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    return-void
.end method

.method static synthetic OooO0OO(Lcom/android/camera/dualvideo/render/MiscRenderItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/MiscRenderItem;->getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/dualvideo/render/MiscTextureManager;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera/dualvideo/render/MiscTextureManager;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F

    return-object p0
.end method

.method private animTexTransMatrix(I)V
    .locals 6

    iget v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    sub-int/2addr p1, v0

    const/16 v0, -0xb4

    if-ge p1, v0, :cond_0

    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit16 p1, p1, -0x168

    :goto_0
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x43960000    # 300.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager$1;-><init>(Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    new-array p0, v2, [Lmiuix/animation/listener/TransitionListener;

    aput-object v1, p0, v5

    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "animTexTrans"

    aput-object p1, p0, v5

    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v1, v5

    invoke-interface {p0, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public declared-synchronized gemAnimTexTransMatrix()[F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mAnimTexTransMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexOrientation()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTexTransMatrix()[F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTexture(I)Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/camera/dualvideo/render/Oooo;

    invoke-direct {v0, p1}, Lcom/android/camera/dualvideo/render/Oooo;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/camera/dualvideo/render/o0ooOoO;->OooO00o:Lcom/android/camera/dualvideo/render/o0ooOoO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/ui/BasicTexture;

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/GLCanvas;Landroid/content/res/Resources;)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const-string v3, "0.5X"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const-string v6, "1X"

    invoke-static {v6, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/4 v6, 0x2

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const-string v6, "2X"

    invoke-static {v6, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/4 v6, 0x3

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const-string v6, "5X"

    invoke-static {v6, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/4 v6, 0x4

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const-string v6, "10X"

    invoke-static {v6, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/4 v6, 0x5

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f100630

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->textAsBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/4 v4, 0x6

    invoke-direct {v1, v4, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v4, 0x7f080228

    invoke-static {p2, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 v4, 0xd

    invoke-direct {v1, v4, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v4, 0x7f080226

    invoke-static {p2, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/4 v4, 0x7

    invoke-direct {v1, v4, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v4, 0x7f080227

    invoke-static {p2, v4}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v4, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 v4, 0x8

    invoke-direct {v1, v4, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f080224

    invoke-static {p2, v6}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 v6, 0xe

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f080223

    invoke-static {p2, v6}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 v6, 0xf

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f08021e

    invoke-static {p2, v6}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 v6, 0x9

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f08021d

    invoke-static {p2, v6}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 v6, 0xa

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f08021f

    invoke-static {p2, v6}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v2, v6, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 v6, 0x10

    invoke-direct {v1, v6, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    const v6, 0x7f080220

    invoke-static {p2, v6}, Lcom/android/camera/dualvideo/render/RenderUtil;->getBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v2, p2, v5, v5}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    const/16 p2, 0x11

    invoke-direct {v1, p2, v2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/android/gallery3d/ui/RawTexture;

    sget-object v0, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    div-int/2addr v0, v4

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/2addr v1, v4

    invoke-direct {p2, v0, v1, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    sget-object v1, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/2addr v1, v4

    sget-object v2, Lcom/android/camera/dualvideo/render/RenderUtil;->FRONT_PREVIEW:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v2, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    const/16 v3, 0xb

    invoke-direct {v2, v3, p2}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v0}, Lcom/android/camera/dualvideo/render/MiscRenderItem;-><init>(ILcom/android/gallery3d/ui/BasicTexture;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/camera/dualvideo/render/Oooo0oO;

    invoke-direct {p2, p1}, Lcom/android/camera/dualvideo/render/Oooo0oO;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/dualvideo/render/Oooo0oo;->OooO00o:Lcom/android/camera/dualvideo/render/Oooo0oo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mMiscRenderList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public declared-synchronized rotateTexTransMatrix([FI)V
    .locals 9

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2, v1, v1, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v4, 0x0

    int-to-float v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 p2, -0x41000000    # -0.5f

    invoke-static {p1, v2, p2, p2, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTexTransDegree(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTexTransDegree: src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->animTexTransMatrix(I)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexTransMatrix:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->rotateTexTransMatrix([FI)V

    iput p1, p0, Lcom/android/camera/dualvideo/render/MiscTextureManager;->mTexOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
