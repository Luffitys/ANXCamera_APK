.class public Lmiui/process/ForegroundInfo;
.super Ljava/lang/Object;
.source "ForegroundInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/process/ForegroundInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FOREGROUND_COLD_START:I = 0x1


# instance fields
.field public mFlags:I

.field public mForegroundPackageName:Ljava/lang/String;

.field public mForegroundPid:I

.field public mForegroundUid:I

.field public mLastForegroundPackageName:Ljava/lang/String;

.field public mLastForegroundPid:I

.field public mLastForegroundUid:I

.field public mMultiWindowForegroundPackageName:Ljava/lang/String;

.field public mMultiWindowForegroundUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/process/ForegroundInfo$1;

    invoke-direct {v0}, Lmiui/process/ForegroundInfo$1;-><init>()V

    sput-object v0, Lmiui/process/ForegroundInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/process/ForegroundInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/process/ForegroundInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lmiui/process/ForegroundInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    iget v0, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    iget v0, p1, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    iget v0, p1, Lmiui/process/ForegroundInfo;->mFlags:I

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .registers 3

    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isColdStart()Z
    .registers 3

    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public resetFlags()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForegroundInfo{mForegroundPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mForegroundUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mForegroundPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastForegroundPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mLastForegroundUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLastForegroundPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMultiWindowForegroundPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiWindowForegroundUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mForegroundPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mLastForegroundPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/process/ForegroundInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
