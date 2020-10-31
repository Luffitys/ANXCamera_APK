.class public interface abstract Lmiui/process/IMiuiApplicationThread;
.super Ljava/lang/Object;
.source "IMiuiApplicationThread.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/IMiuiApplicationThread$Stub;,
        Lmiui/process/IMiuiApplicationThread$Default;
    }
.end annotation


# virtual methods
.method public abstract dumpMessage()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract longScreenshot(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
