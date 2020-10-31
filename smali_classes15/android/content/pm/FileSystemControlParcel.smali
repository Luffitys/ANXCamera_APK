.class public Landroid/content/pm/FileSystemControlParcel;
.super Ljava/lang/Object;
.source "FileSystemControlParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/FileSystemControlParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

.field public incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

.field public service:Landroid/os/incremental/IIncrementalServiceConnector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/FileSystemControlParcel$1;

    invoke-direct {v0}, Landroid/content/pm/FileSystemControlParcel$1;-><init>()V

    sput-object v0, Landroid/content/pm/FileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-gez v1, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    iput-object v2, p0, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    goto :goto_1f

    :cond_1c
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_61

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2c

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/incremental/IIncrementalServiceConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalServiceConnector;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/FileSystemControlParcel;->service:Landroid/os/incremental/IIncrementalServiceConnector;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_61

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_43

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_43
    :try_start_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_61

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5a

    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_5a
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    nop

    return-void

    :catchall_61
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/pm/FileSystemControlParcel;->incremental:Landroid/os/incremental/IncrementalFileSystemControlParcel;

    invoke-virtual {v2, p1, v1}, Landroid/os/incremental/IncrementalFileSystemControlParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    :cond_16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_19
    iget-object v1, p0, Landroid/content/pm/FileSystemControlParcel;->service:Landroid/os/incremental/IIncrementalServiceConnector;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/os/incremental/IIncrementalServiceConnector;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_24

    :cond_23
    move-object v1, v2

    :goto_24
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
