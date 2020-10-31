.class public Lcom/android/internal/app/LaunchTimeRecord;
.super Ljava/lang/Object;
.source "LaunchTimeRecord.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field activity:Ljava/lang/String;

.field isColdStart:Z

.field launchEndTime:J

.field launchStartTime:J

.field launchTime:J

.field packageName:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/app/LaunchTimeRecord$1;

    invoke-direct {v0}, Lcom/android/internal/app/LaunchTimeRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/LaunchTimeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/app/LaunchTimeRecord$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    iput-wide p5, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    sub-long v0, p5, p3

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    iput-boolean p7, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchEndTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    return-wide v0
.end method

.method public getLaunchStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    return-wide v0
.end method

.method public getLaunchTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return v0
.end method

.method public isColdStart()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    iput-boolean v1, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    return-void
.end method

.method public setActivity(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-void
.end method

.method public setIsColdStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    return-void
.end method

.method public setLaunchEndTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    return-void
.end method

.method public setLaunchStartTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
