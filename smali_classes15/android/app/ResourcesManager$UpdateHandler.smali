.class Landroid/app/ResourcesManager$UpdateHandler;
.super Ljava/lang/Object;
.source "ResourcesManager.java"

# interfaces
.implements Landroid/content/res/Resources$UpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ResourcesManager;


# direct methods
.method private constructor <init>(Landroid/app/ResourcesManager;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;)V

    return-void
.end method


# virtual methods
.method public onLoaderUpdated(Landroid/content/res/loader/ResourcesLoader;)V
    .registers 8

    iget-object v0, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    # getter for: Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;
    invoke-static {v2}, Landroid/app/ResourcesManager;->access$400(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_54

    iget-object v3, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    # getter for: Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;
    invoke-static {v3}, Landroid/app/ResourcesManager;->access$400(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    iget-object v4, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    # getter for: Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;
    invoke-static {v4}, Landroid/app/ResourcesManager;->access$400(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_51

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_51

    iget-object v5, v3, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto :goto_51

    :cond_3f
    iget-object v5, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    # getter for: Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;
    invoke-static {v5}, Landroid/app/ResourcesManager;->access$400(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    :goto_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_54
    iget-object v2, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    # invokes: Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    invoke-static {v2, v1}, Landroid/app/ResourcesManager;->access$500(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-void

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    # invokes: Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    invoke-static {v1, v2}, Landroid/app/ResourcesManager;->access$200(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v1

    if-eqz v1, :cond_39

    new-instance v11, Landroid/content/res/ResourcesKey;

    iget-object v3, v1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v5, v1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v6, v1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v7, v1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v8, v1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v9, v1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/res/loader/ResourcesLoader;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Landroid/content/res/loader/ResourcesLoader;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    move-object v2, v11

    iget-object v3, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    # invokes: Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    invoke-static {v3, v2}, Landroid/app/ResourcesManager;->access$300(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    monitor-exit v0

    return-void

    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot modify resource loaders of ResourcesImpl not registered with ResourcesManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method
