.class public Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;
.super Lcom/miui/internal/variable/Android_Content_Res_Resources_class;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    const-string v0, "loadDrawable"

    const-string v1, "(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected handle()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->handleLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected handleLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_Content_Res_Resources_class;->originalLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {p1, p0, p5}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->setId(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-object p0
.end method

.method protected originalLoadDrawable(JLandroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Content_Res_Resources_class.originalLoadDrawable(long, Resources, TypedValue, int)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAssetManager(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V
    .locals 2

    const-string p0, "mAssets"

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/res/Resources;

    const-string v1, "Landroid/content/res/AssetManager;"

    invoke-static {v0, p0, v1}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    :cond_0
    sget-object v0, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->mAssets:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
