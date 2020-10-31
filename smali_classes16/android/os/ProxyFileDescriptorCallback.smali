.class public abstract Landroid/os/ProxyFileDescriptorCallback;
.super Ljava/lang/Object;
.source "ProxyFileDescriptorCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFsync()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EINVAL:I

    const-string/jumbo v2, "onFsync"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public onGetSize()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EBADF:I

    const-string/jumbo v2, "onGetSize"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public onRead(JI[B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EBADF:I

    const-string/jumbo v2, "onRead"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public abstract onRelease()V
.end method

.method public onWrite(JI[B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    new-instance v0, Landroid/system/ErrnoException;

    sget v1, Landroid/system/OsConstants;->EBADF:I

    const-string/jumbo v2, "onWrite"

    invoke-direct {v0, v2, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
