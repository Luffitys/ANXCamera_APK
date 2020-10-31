.class public interface abstract Lcom/miui/enterprise/IEnterpriseManager;
.super Ljava/lang/Object;
.source "IEnterpriseManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IEnterpriseManager$Stub;,
        Lcom/miui/enterprise/IEnterpriseManager$Default;
    }
.end annotation


# virtual methods
.method public abstract getService(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
