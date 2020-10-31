.class public Lmiui/maml/shader/BitmapShaderElement;
.super Lmiui/maml/shader/ShaderElement;
.source "BitmapShaderElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapShader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lmiui/maml/shader/ShaderElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iget-object v0, p0, Lmiui/maml/shader/BitmapShaderElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    const-string v1, "src"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lmiui/maml/shader/BitmapShaderElement;->resolveTileMode(Lorg/w3c/dom/Element;)V

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lmiui/maml/shader/BitmapShaderElement;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lmiui/maml/shader/BitmapShaderElement;->mShader:Landroid/graphics/Shader;

    return-void
.end method

.method private resolveTileMode(Lorg/w3c/dom/Element;)V
    .registers 6

    const-string v0, "tile"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_17

    iget-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileMode:Landroid/graphics/Shader$TileMode;

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-void

    :cond_17
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lmiui/maml/shader/BitmapShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeX:Landroid/graphics/Shader$TileMode;

    aget-object v2, v1, v3

    invoke-static {v2}, Lmiui/maml/shader/BitmapShaderElement;->getTileMode(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/shader/BitmapShaderElement;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public onGradientStopsChanged()V
    .registers 1

    return-void
.end method

.method public updateShader()V
    .registers 1

    return-void
.end method

.method public updateShaderMatrix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
