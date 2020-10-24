.class public abstract Lcom/miui/internal/server/IDropBoxManagerService$Stub;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/miui/internal/server/IDropBoxManagerService;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.internal.server.IDropBoxManagerService"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_getNextEntry:I = 0x3

.field static final TRANSACTION_isTagEnabled:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.internal.server.IDropBoxManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/internal/server/IDropBoxManagerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.internal.server.IDropBoxManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/internal/server/IDropBoxManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/internal/server/IDropBoxManagerService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/internal/server/IDropBoxManagerService;
    .locals 1

    sget-object v0, Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/server/IDropBoxManagerService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/internal/server/IDropBoxManagerService;)Z
    .locals 1

    sget-object v0, Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/server/IDropBoxManagerService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/internal/server/IDropBoxManagerService$Stub$Proxy;->sDefaultImpl:Lcom/miui/internal/server/IDropBoxManagerService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.miui.internal.server.IDropBoxManagerService"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Lcom/miui/internal/server/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Lmiui/os/DropBoxManager$Entry;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v0}, Lmiui/os/DropBoxManager$Entry;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/internal/server/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lmiui/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/os/DropBoxManager$Entry;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, p1}, Lcom/miui/internal/server/IDropBoxManagerService;->add(Lmiui/os/DropBoxManager$Entry;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
