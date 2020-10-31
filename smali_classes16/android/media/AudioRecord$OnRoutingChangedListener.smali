.class public interface abstract Landroid/media/AudioRecord$OnRoutingChangedListener;
.super Ljava/lang/Object;
.source "AudioRecord.java"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRoutingChangedListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onRoutingChanged(Landroid/media/AudioRecord;)V
.end method

.method public onRoutingChanged(Landroid/media/AudioRouting;)V
    .registers 3

    instance-of v0, p1, Landroid/media/AudioRecord;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/media/AudioRecord;

    invoke-interface {p0, v0}, Landroid/media/AudioRecord$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioRecord;)V

    :cond_a
    return-void
.end method
