.class public final Landroid/content/rollback/RollbackInfo;
.super Ljava/lang/Object;
.source "RollbackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCausePackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mCommittedSessionId:I

.field private final mIsStaged:Z

.field private final mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRollbackId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/rollback/RollbackInfo$1;

    invoke-direct {v0}, Landroid/content/rollback/RollbackInfo$1;-><init>()V

    sput-object v0, Landroid/content/rollback/RollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ZLjava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;Z",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    iput-object p2, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    iput-boolean p3, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    iput-object p4, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    iput p5, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    sget-object v0, Landroid/content/rollback/PackageRollbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    sget-object v0, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/rollback/RollbackInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/rollback/RollbackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCausePackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    return-object v0
.end method

.method public getCommittedSessionId()I
    .registers 2

    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return v0
.end method

.method public getPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    return-object v0
.end method

.method public getRollbackId()I
    .registers 2

    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    return v0
.end method

.method public isStaged()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    return v0
.end method

.method public setCommittedSessionId(I)V
    .registers 2

    iput p1, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mRollbackId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/content/rollback/RollbackInfo;->mIsStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/rollback/RollbackInfo;->mCausePackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Landroid/content/rollback/RollbackInfo;->mCommittedSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
