.class public interface abstract Lmiui/maml/elements/MusicController$OnClientUpdateListener;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClientUpdateListener"
.end annotation


# virtual methods
.method public abstract onClientChange()V
.end method

.method public abstract onClientMetadataUpdate(Landroid/media/MediaMetadata;)V
.end method

.method public abstract onClientPlaybackActionUpdate(J)V
.end method

.method public abstract onClientPlaybackStateUpdate(I)V
.end method

.method public abstract onSessionDestroyed()V
.end method
