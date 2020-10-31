.class public Lmiui/process/IForegroundInfoListener$Default;
.super Ljava/lang/Object;
.source "IForegroundInfoListener.java"

# interfaces
.implements Lmiui/process/IForegroundInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/process/IForegroundInfoListener;
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

.method public onForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
