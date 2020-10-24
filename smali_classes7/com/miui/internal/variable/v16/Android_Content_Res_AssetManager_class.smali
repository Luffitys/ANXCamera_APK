.class public Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;
.super Lcom/miui/internal/util/ClassProxy;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final mAddAssetPath:Lmiui/reflect/Method;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mAddAssetPath:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    return-void
.end method


# virtual methods
.method public addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mAddAssetPath:Lmiui/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, p0

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method

.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    :try_start_0
    const-string v0, "addAssetPath"

    const-string v1, "(Ljava/lang/String;)I"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {v0, v1, p0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected callOriginalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected handle()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    return-void
.end method

.method protected handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->callOriginalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->callOriginalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public newInstance()Landroid/content/res/AssetManager;
    .locals 1

    const-class p0, Landroid/content/res/AssetManager;

    const-string v0, "()V"

    invoke-static {p0, v0}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/AssetManager;

    return-object p0
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v16.Android_Content_Res_AssetManager_class.originalAddAssetPath(long, AssetManager, String)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
