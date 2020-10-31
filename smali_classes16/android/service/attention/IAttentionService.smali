.class public interface abstract Landroid/service/attention/IAttentionService;
.super Ljava/lang/Object;
.source "IAttentionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/attention/IAttentionService$Stub;,
        Landroid/service/attention/IAttentionService$Default;
    }
.end annotation


# virtual methods
.method public abstract cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkAttention(Landroid/service/attention/IAttentionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
