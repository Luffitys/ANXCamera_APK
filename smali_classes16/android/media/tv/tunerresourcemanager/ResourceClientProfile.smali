.class public final Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
.super Ljava/lang/Object;
.source "ResourceClientProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "ResourceClientProfile"


# instance fields
.field private final mTvInputSessionId:Ljava/lang/String;

.field private final mUseCase:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile$1;

    invoke-direct {v0}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile$1;-><init>()V

    sput-object v0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mUseCase:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mTvInputSessionId:Ljava/lang/String;

    iput p2, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mUseCase:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTvInputSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mTvInputSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCase()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mUseCase:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ResourceClientProfile {tvInputSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mUseCase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mTvInputSessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->mUseCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
