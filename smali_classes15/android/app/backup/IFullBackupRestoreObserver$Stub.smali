.class public abstract Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IFullBackupRestoreObserver.java"

# interfaces
.implements Landroid/app/backup/IFullBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IFullBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IFullBackupRestoreObserver"

.field static final TRANSACTION_onBackupPackage:I = 0x2

.field static final TRANSACTION_onEndBackup:I = 0x3

.field static final TRANSACTION_onEndRestore:I = 0x6

.field static final TRANSACTION_onRestorePackage:I = 0x5

.field static final TRANSACTION_onStartBackup:I = 0x1

.field static final TRANSACTION_onStartRestore:I = 0x4

.field static final TRANSACTION_onTimeout:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.backup.IFullBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.backup.IFullBackupRestoreObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/backup/IFullBackupRestoreObserver;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 1

    sget-object v0, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/backup/IFullBackupRestoreObserver;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "onTimeout"

    return-object v0

    :pswitch_9
    const-string v0, "onEndRestore"

    return-object v0

    :pswitch_c
    const-string v0, "onRestorePackage"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "onStartRestore"

    return-object v0

    :pswitch_13
    const-string v0, "onEndBackup"

    return-object v0

    :pswitch_16
    const-string v0, "onBackupPackage"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "onStartBackup"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static setDefaultImpl(Landroid/app/backup/IFullBackupRestoreObserver;)Z
    .registers 3

    sget-object v0, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/backup/IFullBackupRestoreObserver;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/app/backup/IFullBackupRestoreObserver$Stub$Proxy;->sDefaultImpl:Landroid/app/backup/IFullBackupRestoreObserver;

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

    invoke-static {p1}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.app.backup.IFullBackupRestoreObserver"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_49

    packed-switch p1, :pswitch_data_4e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onTimeout()V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onEndRestore()V

    return v2

    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onRestorePackage(Ljava/lang/String;)V

    return v2

    :pswitch_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onStartRestore()V

    return v2

    :pswitch_30
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onEndBackup()V

    return v2

    :pswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onBackupPackage(Ljava/lang/String;)V

    return v2

    :pswitch_42
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->onStartBackup()V

    return v2

    :cond_49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_42
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method
