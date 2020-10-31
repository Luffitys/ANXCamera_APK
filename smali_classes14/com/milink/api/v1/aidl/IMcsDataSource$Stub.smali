.class public abstract Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;
.super Landroid/os/Binder;
.source "IMcsDataSource.java"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcsDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcsDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.api.v1.aidl.IMcsDataSource"

.field static final TRANSACTION_getNextPhoto:I = 0x2

.field static final TRANSACTION_getPrevPhoto:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.api.v1.aidl.IMcsDataSource"

    invoke-virtual {p0, p0, v0}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.milink.api.v1.aidl.IMcsDataSource"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/milink/api/v1/aidl/IMcsDataSource;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/milink/api/v1/aidl/IMcsDataSource;

    return-object v1

    :cond_14
    new-instance v1, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/milink/api/v1/aidl/IMcsDataSource;
    .registers 1

    sget-object v0, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsDataSource;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/api/v1/aidl/IMcsDataSource;)Z
    .registers 3

    sget-object v0, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsDataSource;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsDataSource;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.milink.api.v1.aidl.IMcsDataSource"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_30

    const/4 v3, 0x2

    if-eq p1, v3, :cond_17

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_13

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    move v1, v2

    :cond_25
    invoke-virtual {p0, v3, v1}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    move v1, v2

    :cond_3e
    invoke-virtual {p0, v3, v1}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2
.end method
