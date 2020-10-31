.class public abstract Landroid/media/tv/TvView$TvInputCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    return-void
.end method

.method public onConnectionFailed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onContentAllowed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V
    .registers 3

    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onTracksChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onVideoAvailable(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onVideoUnavailable(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
