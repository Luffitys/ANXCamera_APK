.class Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;
.super Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;
.source "TunerResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;


# direct methods
.method constructor <init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->this$0:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object p2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReclaimResources$0(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;->onReclaimResources()V

    return-void
.end method


# virtual methods
.method public onReclaimResources()V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    new-instance v4, Landroid/media/tv/tunerresourcemanager/-$$Lambda$TunerResourceManager$1$GH95nzrFtw_d9fH9Hia82564Yrs;

    invoke-direct {v4, v3}, Landroid/media/tv/tunerresourcemanager/-$$Lambda$TunerResourceManager$1$GH95nzrFtw_d9fH9Hia82564Yrs;-><init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
