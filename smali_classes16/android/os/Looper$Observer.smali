.class public interface abstract Landroid/os/Looper$Observer;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Looper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V
.end method

.method public abstract messageDispatchStarting()Ljava/lang/Object;
.end method

.method public abstract messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V
.end method
