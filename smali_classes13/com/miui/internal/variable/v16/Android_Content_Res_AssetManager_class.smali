.class public Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;
.super Lcom/miui/internal/util/ClassProxy;
.source "Android_Content_Res_AssetManager_class.java"

# interfaces
.implements Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/util/ClassProxy<",
        "Landroid/content/res/AssetManager;",
        ">;",
        "Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final mAddAssetPath:Lmiui/reflect/Method;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const-string v2, "(Ljava/lang/String;)I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mAddAssetPath:Lmiui/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-class v0, Landroid/content/res/AssetManager;

    invoke-direct {p0, v0}, Lcom/miui/internal/util/ClassProxy;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class$1;-><init>(Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    return-void
.end method


# virtual methods
.method public addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mAddAssetPath:Lmiui/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v1, v2, p1, v3}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v1

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v2

    const-string v3, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {v2, v3, v1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 4

    :try_start_0
    const-string v0, "addAssetPath"

    const-string v1, "(Ljava/lang/String;)I"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception v0

    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.content.res.AssetManager.addAssetPath"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method protected callOriginalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected handle()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    return-void
.end method

.method protected handleAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 6

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->callOriginalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_Content_Res_AssetManager_class;->callOriginalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public newInstance()Landroid/content/res/AssetManager;
    .registers 3

    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "()V"

    invoke-static {v0, v1}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    return-object v0
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalAddAssetPath(JLandroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v16.Android_Content_Res_AssetManager_class.originalAddAssetPath(long, AssetManager, String)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
