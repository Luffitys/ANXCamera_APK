.class public Landroid/view/IPinnedStackController$Default;
.super Ljava/lang/Object;
.source "IPinnedStackController.java"

# interfaces
.implements Landroid/view/IPinnedStackController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IPinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayRotation()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
