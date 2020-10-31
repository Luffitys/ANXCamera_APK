.class public abstract Landroid/media/IMiuiAudioRecord$Stub;
.super Landroid/os/Binder;
.source "IMiuiAudioRecord.java"

# interfaces
.implements Landroid/media/IMiuiAudioRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMiuiAudioRecord$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMiuiAudioRecord"

.field static final TRANSACTION_fillBuffer:I = 0x4

.field static final TRANSACTION_getMetaData:I = 0x3

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.IMiuiAudioRecord"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMiuiAudioRecord$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IMiuiAudioRecord;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.IMiuiAudioRecord"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMiuiAudioRecord;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/IMiuiAudioRecord;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/IMiuiAudioRecord$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMiuiAudioRecord$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/media/IMiuiAudioRecord;
    .registers 1

    sget-object v0, Landroid/media/IMiuiAudioRecord$Stub$Proxy;->sDefaultImpl:Landroid/media/IMiuiAudioRecord;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "fillBuffer"

    return-object v0

    :cond_11
    const-string v0, "getMetaData"

    return-object v0

    :cond_14
    const-string/jumbo v0, "stop"

    return-object v0

    :cond_18
    const-string/jumbo v0, "start"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/media/IMiuiAudioRecord;)Z
    .registers 3

    sget-object v0, Landroid/media/IMiuiAudioRecord$Stub$Proxy;->sDefaultImpl:Landroid/media/IMiuiAudioRecord;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/media/IMiuiAudioRecord$Stub$Proxy;->sDefaultImpl:Landroid/media/IMiuiAudioRecord;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/IMiuiAudioRecord$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.IMiuiAudioRecord"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_61

    const/4 v2, 0x2

    if-eq p1, v2, :cond_53

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1d

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_19

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/media/IMiuiAudioRecord$Stub;->fillBuffer(II)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_38

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3b

    :cond_38
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b
    return v1

    :cond_3c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4f

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_52

    :cond_4f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_52
    return v1

    :cond_53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/IMiuiAudioRecord$Stub;->stop()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/media/IMiuiAudioRecord$Stub;->start(J)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
