.class public interface abstract Lmiui/app/backup/IMiuiRestoreManager;
.super Ljava/lang/Object;
.source "IMiuiRestoreManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IMiuiRestoreManager$Stub;,
        Lmiui/app/backup/IMiuiRestoreManager$Default;
    }
.end annotation


# virtual methods
.method public abstract moveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterRestoreListener(Lmiui/app/backup/IRestoreListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
