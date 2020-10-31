.class public Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;
.super Lcom/miui/internal/variable/Android_App_ResourcesManager_class;
.source "Android_App_ResourcesManager_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/Android_App_ResourcesManager_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final AssetManagerClass:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

.field private static final ResourcesImplClass:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->AssetManagerClass:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->ResourcesImplClass:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class$1;-><init>(Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    :try_start_a
    const-string v0, "android.app.ResourcesManager"

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_18} :catch_1a

    nop

    return-void

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->bind(Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "createResourcesImpl"

    const-string v1, "(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;->createResourcesImpl(Ljava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->originalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method

.method protected handle()V
    .registers 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->handleCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    return-void
.end method

.method protected handleCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 10

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->callOriginalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v0

    :cond_7
    sget-object v1, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mAppendedAssetPaths:Ljava/util/List;

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    sget-object v1, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->ResourcesImplClass:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    invoke-virtual {v1, v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;->getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mAppendedAssetPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->AssetManagerClass:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    invoke-interface {v4, v1, v3}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_18

    :cond_2a
    return-object v0
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v24.Android_App_ResourcesManager_class.originalCreateResourcesImpl(long, Object, ResourcesKey)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
