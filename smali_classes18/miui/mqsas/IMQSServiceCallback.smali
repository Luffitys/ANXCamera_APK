.class public interface abstract Lmiui/mqsas/IMQSServiceCallback;
.super Ljava/lang/Object;
.source "IMQSServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSServiceCallback$Stub;,
        Lmiui/mqsas/IMQSServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onReportFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
