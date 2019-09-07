.class Landroid/support/v4/media/MediaPlayer2Impl$9;
.super Landroid/support/v4/media/MediaPlayer2Impl$Task;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaPlayer2Impl;->setNextDataSources(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaPlayer2Impl;

.field final synthetic val$dsds:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaPlayer2Impl;IZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaPlayer2Impl$9;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    iput-object p4, p0, Landroid/support/v4/media/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/MediaPlayer2Impl$Task;-><init>(Landroid/support/v4/media/MediaPlayer2Impl;IZ)V

    return-void
.end method


# virtual methods
.method process()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/DataSourceDesc;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DataSourceDesc in the source list cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/MediaPlayer2Impl$9;->this$0:Landroid/support/v4/media/MediaPlayer2Impl;

    invoke-static {v0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$100(Landroid/support/v4/media/MediaPlayer2Impl;)Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;

    move-result-object v1

    iget-object p0, p0, Landroid/support/v4/media/MediaPlayer2Impl$9;->val$dsds:Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/MediaPlayer2Impl$MediaPlayerSourceQueue;->setNextMultiple(Ljava/util/List;)Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/support/v4/media/MediaPlayer2Impl;->access$200(Landroid/support/v4/media/MediaPlayer2Impl;Landroid/support/v4/media/MediaPlayer2Impl$DataSourceError;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data source list cannot be null or empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
