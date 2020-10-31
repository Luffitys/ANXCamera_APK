.class public Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;
.super Lcom/miui/internal/variable/Android_Content_Res_Resources_class;
.source "Android_Content_Res_Resources_class.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .registers 3

    const-string v0, "loadDrawable"

    const-string v1, "(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected handle()V
    .registers 7

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->handleLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected handleLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->originalLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v1, v0, p5}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->setId(Landroid/graphics/drawable/Drawable;I)V

    :cond_11
    return-object v0
.end method

.method protected originalLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Content_Res_Resources_class.originalLoadDrawable(long, Resources, TypedValue, int)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .registers 6

    const-string v0, "mAssets"

    :try_start_2
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    if-nez v1, :cond_10

    const-class v1, Landroid/content/res/Resources;

    const-string v2, "Landroid/content/res/AssetManager;"

    invoke-static {v1, v0, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    :cond_10
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    invoke-virtual {v1, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method
