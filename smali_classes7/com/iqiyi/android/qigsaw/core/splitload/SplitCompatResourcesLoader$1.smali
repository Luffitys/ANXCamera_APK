.class Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resources:Landroid/content/res/Resources;

.field final synthetic val$splitResPaths:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$splitResPaths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$resources:Landroid/content/res/Resources;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;->val$splitResPaths:Ljava/util/List;

    invoke-static {v1, v2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$V14;->access$100(Landroid/content/Context;Landroid/content/res/Resources;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader;->access$200()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
