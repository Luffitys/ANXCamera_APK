.class public interface abstract Lcom/miui/whetstone/watermark/IWatermarkCallback;
.super Ljava/lang/Object;
.source "IWatermarkCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/watermark/IWatermarkCallback$Stub;,
        Lcom/miui/whetstone/watermark/IWatermarkCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onDecodeWatermark(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEncodeWatermark(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
