.class public Lmiui/mqsas/sdk/event/PackageForegroundEvent;
.super Ljava/lang/Object;
.source "PackageForegroundEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private componentName:Ljava/lang/String;

.field private foregroundTime:J

.field private identity:I

.field private isColdStart:Z

.field private lastPackageName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageForegroundEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    iput v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move-object v1, p1

    check-cast v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    iget-object v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    iget v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    iget v3, v1, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    if-ne v2, v3, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    nop

    :goto_2a
    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    return-wide v0
.end method

.method public getIdentity()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    return v0
.end method

.method public getLastPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    return v0
.end method

.method public isColdStart()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return v0
.end method

.method public setColdStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    return-void
.end method

.method public setComponentName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    return-void
.end method

.method public setForegroundTime(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    return-void
.end method

.method public setIdentity(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    return-void
.end method

.method public setLastPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageForegroundEvent{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", componentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foregroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isColdStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->identity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->foregroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->isColdStart:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->lastPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
