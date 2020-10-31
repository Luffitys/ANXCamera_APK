.class public final Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
.super Ljava/lang/Object;
.source "TunerFrontendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "TunerFrontendInfo"


# instance fields
.field private final mExclusiveGroupId:I

.field private final mFrontendType:I

.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo$1;

    invoke-direct {v0}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mId:I

    iput p2, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mFrontendType:I

    iput p3, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mExclusiveGroupId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mFrontendType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mExclusiveGroupId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExclusiveGroupId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mExclusiveGroupId:I

    return v0
.end method

.method public getFrontendType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mFrontendType:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TunerFrontendInfo {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frontendType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mFrontendType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exclusiveGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mExclusiveGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mFrontendType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->mExclusiveGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
