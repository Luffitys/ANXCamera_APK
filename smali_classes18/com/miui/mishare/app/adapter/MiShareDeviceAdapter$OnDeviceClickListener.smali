.class public interface abstract Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;
.super Ljava/lang/Object;
.source "MiShareDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDeviceClickListener"
.end annotation


# virtual methods
.method public abstract onCancelTask(Lcom/miui/mishare/app/model/MiShareDevice;)V
.end method

.method public abstract onDeviceTaskRetry(Lcom/miui/mishare/app/model/MiShareDevice;II)V
.end method

.method public abstract onDeviceTaskStart(Lcom/miui/mishare/app/model/MiShareDevice;II)V
.end method
