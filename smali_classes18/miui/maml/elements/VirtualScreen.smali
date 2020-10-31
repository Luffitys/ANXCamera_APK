.class public Lmiui/maml/elements/VirtualScreen;
.super Lmiui/maml/elements/ElementGroup;
.source "VirtualScreen.java"

# interfaces
.implements Lmiui/maml/elements/BitmapProvider$IBitmapHolder;


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenCanvas:Landroid/graphics/Canvas;

.field private mTicked:Z

.field private mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 5

    iget-boolean v0, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    iget-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    :cond_2b
    return-void
.end method

.method protected doTick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTick(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VirtualScreen;->mTicked:Z

    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/VirtualScreen;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method public init()V
    .registers 6

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1a

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "screen_width"

    invoke-static {v3, v2}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/VirtualScreen;->scale(D)F

    move-result v0

    :cond_1a
    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getHeight()F

    move-result v2

    cmpg-float v1, v2, v1

    if-gez v1, :cond_30

    invoke-virtual {p0}, Lmiui/maml/elements/VirtualScreen;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string v3, "screen_height"

    invoke-static {v3, v1}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiui/maml/elements/VirtualScreen;->scale(D)F

    move-result v2

    :cond_30
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getTargetDensity()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mScreenCanvas:Landroid/graphics/Canvas;

    new-instance v1, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v3, p0, Lmiui/maml/elements/VirtualScreen;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiui/maml/elements/VirtualScreen;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-void
.end method
