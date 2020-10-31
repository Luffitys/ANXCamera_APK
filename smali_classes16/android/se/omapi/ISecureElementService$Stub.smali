.class public abstract Landroid/se/omapi/ISecureElementService$Stub;
.super Landroid/os/Binder;
.source "ISecureElementService.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.se.omapi.ISecureElementService"

.field static final TRANSACTION_getReader:I = 0x2

.field static final TRANSACTION_getReaders:I = 0x1

.field static final TRANSACTION_getSpiSignedPK:I = 0x4

.field static final TRANSACTION_isNFCEventAllowed:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.se.omapi.ISecureElementService"

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.se.omapi.ISecureElementService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/se/omapi/ISecureElementService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/se/omapi/ISecureElementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/se/omapi/ISecureElementService;
    .registers 1

    sget-object v0, Landroid/se/omapi/ISecureElementService$Stub$Proxy;->sDefaultImpl:Landroid/se/omapi/ISecureElementService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string v0, "getSpiSignedPK"

    return-object v0

    :cond_11
    const-string v0, "isNFCEventAllowed"

    return-object v0

    :cond_14
    const-string v0, "getReader"

    return-object v0

    :cond_17
    const-string v0, "getReaders"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/se/omapi/ISecureElementService;)Z
    .registers 3

    sget-object v0, Landroid/se/omapi/ISecureElementService$Stub$Proxy;->sDefaultImpl:Landroid/se/omapi/ISecureElementService;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/se/omapi/ISecureElementService$Stub$Proxy;->sDefaultImpl:Landroid/se/omapi/ISecureElementService;

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

    invoke-static {p1}, Landroid/se/omapi/ISecureElementService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.se.omapi.ISecureElementService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_44

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2a

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementService$Stub;->getSpiSignedPK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_2a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/se/omapi/ISecureElementService$Stub;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return v1

    :cond_44
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/se/omapi/ISecureElementService$Stub;->getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_59

    invoke-interface {v3}, Landroid/se/omapi/ISecureElementReader;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_5a

    :cond_59
    const/4 v4, 0x0

    :goto_5a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    :cond_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementService$Stub;->getReaders()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1
.end method
