.class Landroid/support/v4/media/MediaSession2Stub$22;
.super Ljava/lang/Object;
.source "MediaSession2Stub.java"

# interfaces
.implements Landroid/support/v4/media/MediaSession2Stub$SessionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaSession2Stub;->setPlaylist(Landroid/support/v4/media/IMediaController2;Ljava/util/List;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaSession2Stub;

.field final synthetic val$metadata:Landroid/os/Bundle;

.field final synthetic val$playlist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaSession2Stub;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$22;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iput-object p2, p0, Landroid/support/v4/media/MediaSession2Stub$22;->val$playlist:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v4/media/MediaSession2Stub$22;->val$metadata:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/support/v4/media/MediaSession2$ControllerInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$22;->val$playlist:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPlaylist(): Ignoring null playlist from "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaSession2Stub"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/MediaSession2Stub$22;->this$0:Landroid/support/v4/media/MediaSession2Stub;

    iget-object p1, p1, Landroid/support/v4/media/MediaSession2Stub;->mSession:Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;

    invoke-interface {p1}, Landroid/support/v4/media/MediaSession2$SupportLibraryImpl;->getInstance()Landroid/support/v4/media/MediaSession2;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/media/MediaSession2Stub$22;->val$playlist:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/media/MediaUtils2;->convertBundleListToMediaItem2List(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaSession2Stub$22;->val$metadata:Landroid/os/Bundle;

    invoke-static {p0}, Landroid/support/v4/media/MediaMetadata2;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/MediaMetadata2;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/support/v4/media/MediaSession2;->setPlaylist(Ljava/util/List;Landroid/support/v4/media/MediaMetadata2;)V

    return-void
.end method
