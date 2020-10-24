.class public Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;
.super Lcom/miui/internal/variable/Android_App_ResourcesManager_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final AssetManagerClass:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

.field private static final ResourcesImplClass:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    .locals 2

    invoke-direct {p0}, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class$1;-><init>(Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    :try_start_0
    const-string v0, "android.app.ResourcesManager"

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->bind(Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "createResourcesImpl"

    const-string v1, "(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p4}, Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;->createResourcesImpl(Ljava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->originalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    return-object p0
.end method

.method protected handle()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->handleCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    return-void
.end method

.method protected handleCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->callOriginalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    sget-object p1, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;->mAppendedAssetPaths:Ljava/util/List;

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    sget-object p1, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->ResourcesImplClass:Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    invoke-virtual {p1, p0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;->getAssets(Landroid/content/res/ResourcesImpl;)Landroid/content/res/AssetManager;

    move-result-object p1

    sget-object p2, Lcom/miui/internal/variable/Android_App_ResourcesManager_class;->mAppendedAssetPaths:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Lcom/miui/internal/variable/v24/Android_App_ResourcesManager_class;->AssetManagerClass:Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;

    invoke-interface {p4, p1, p3}, Lcom/miui/internal/variable/Android_Content_Res_AssetManager_class;->addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalCreateResourcesImpl(JLjava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v24.Android_App_ResourcesManager_class.originalCreateResourcesImpl(long, Object, ResourcesKey)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
