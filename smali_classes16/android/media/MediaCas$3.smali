.class Landroid/media/MediaCas$3;
.super Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method constructor <init>(Landroid/media/MediaCas;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReclaimResources()V
    .registers 5

    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;
    invoke-static {v0}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;
    invoke-static {v2}, Landroid/media/MediaCas;->access$600(Landroid/media/MediaCas;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaCas$Session;

    invoke-virtual {v3}, Landroid/media/MediaCas$Session;->close()V

    goto :goto_1a

    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_40

    iget-object v0, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;
    invoke-static {v0}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$3;->this$0:Landroid/media/MediaCas;

    # getter for: Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;
    invoke-static {v1}, Landroid/media/MediaCas;->access$500(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaCas$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCas$EventHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method
