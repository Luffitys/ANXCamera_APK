.class Lmiui/hareware/display/DisplayFeatureServiceProxy;
.super Ljava/lang/Object;
.source "DisplayFeatureServiceProxy.java"


# static fields
.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IDisplayFeatureService"

.field private static final TRANSACTION_setAd:I = 0x3

.field private static final TRANSACTION_setCABC:I = 0x5

.field private static final TRANSACTION_setCE:I = 0x4

.field private static final TRANSACTION_setColorPrefer:I = 0x1

.field private static final TRANSACTION_setEyeCare:I = 0x2

.field private static final TRANSACTION_setFeature:I = 0x64

.field private static final TRANSACTION_setGamutMode:I = 0x6


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mService:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    :try_start_5
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "miui.hardware.display.IDisplayFeatureService"

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    :cond_15
    goto :goto_17

    :catch_16
    move-exception v0

    :goto_17
    return-void
.end method

.method private varargs callTransact(I[I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_9
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_1b

    aget v6, p2, v5

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1b
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    invoke-interface {v3, p1, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_33

    move v2, v3

    :cond_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return v2

    :catchall_33
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method


# virtual methods
.method setAd(III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setCABC(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setCE(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setColorPrefer(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setEyeCare(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setFeature(IIII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    const/16 v1, 0x64

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setGamutMode(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method
