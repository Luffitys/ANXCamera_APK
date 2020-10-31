.class public abstract Landroid/view/accessibility/IWindowMagnificationConnection$Stub;
.super Landroid/os/Binder;
.source "IWindowMagnificationConnection.java"

# interfaces
.implements Landroid/view/accessibility/IWindowMagnificationConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IWindowMagnificationConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IWindowMagnificationConnection"

.field static final TRANSACTION_disableWindowMagnification:I = 0x3

.field static final TRANSACTION_enableWindowMagnification:I = 0x1

.field static final TRANSACTION_moveWindowMagnifier:I = 0x4

.field static final TRANSACTION_setConnectionCallback:I = 0x5

.field static final TRANSACTION_setScale:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IWindowMagnificationConnection"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnection;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.accessibility.IWindowMagnificationConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/accessibility/IWindowMagnificationConnection;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IWindowMagnificationConnection;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/view/accessibility/IWindowMagnificationConnection;
    .registers 1

    sget-object v0, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;->sDefaultImpl:Landroid/view/accessibility/IWindowMagnificationConnection;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x0

    return-object v0

    :cond_11
    const-string/jumbo v0, "setConnectionCallback"

    return-object v0

    :cond_15
    const-string/jumbo v0, "moveWindowMagnifier"

    return-object v0

    :cond_19
    const-string v0, "disableWindowMagnification"

    return-object v0

    :cond_1c
    const-string/jumbo v0, "setScale"

    return-object v0

    :cond_20
    const-string v0, "enableWindowMagnification"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/view/accessibility/IWindowMagnificationConnection;)Z
    .registers 3

    sget-object v0, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;->sDefaultImpl:Landroid/view/accessibility/IWindowMagnificationConnection;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/view/accessibility/IWindowMagnificationConnection$Stub$Proxy;->sDefaultImpl:Landroid/view/accessibility/IWindowMagnificationConnection;

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

    invoke-static {p1}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.view.accessibility.IWindowMagnificationConnection"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_41

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1f

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V

    return v1

    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->moveWindowMagnifier(IFF)V

    return v1

    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->disableWindowMagnification(I)V

    return v1

    :cond_4c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->setScale(IF)V

    return v1

    :cond_5b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->enableWindowMagnification(IFFF)V

    return v1
.end method
