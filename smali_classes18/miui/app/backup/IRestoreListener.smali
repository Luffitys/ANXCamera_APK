.class public interface abstract Lmiui/app/backup/IRestoreListener;
.super Ljava/lang/Object;
.source "IRestoreListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IRestoreListener$Stub;,
        Lmiui/app/backup/IRestoreListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onRestoreEnd(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
