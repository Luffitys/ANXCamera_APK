.class public Lmiui/mqsas/sdk/event/KillProcessEvent;
.super Ljava/lang/Object;
.source "KillProcessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final POLICY_KILL_SELF:Ljava/lang/String; = "killself"

.field public static final POLICY_LMK:Ljava/lang/String; = "lowmemorykiller"

.field public static final POLICY_OTHER:Ljava/lang/String; = "other"

.field public static final POLICY_POWERKEEPER:Ljava/lang/String; = "powerkeeper"

.field public static final POLICY_SECURITY:Ljava/lang/String; = "securitycenter"

.field public static final POLICY_SYSTEM:Ljava/lang/String; = "system"

.field public static final POLICY_SYSTEMUI:Ljava/lang/String; = "systemui"

.field public static final POLICY_UNUSE:Ljava/lang/String; = "userunused"

.field public static final POLICY_WHETSTONE:Ljava/lang/String; = "whetstone"

.field public static final PROCESS_STATE_NONEXISTENT:I = -0x1

.field public static final UNKNOWN_ADJ:I = 0x7fffffff


# instance fields
.field private isInterestingToUser:Z

.field private killedProc:Ljava/lang/String;

.field private killedReason:Ljava/lang/String;

.field private killedTime:J

.field private policy:Ljava/lang/String;

.field private procAdj:I

.field private procState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/KillProcessEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/KillProcessEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/KillProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    const v0, 0x7fffffff

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :goto_30
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/KillProcessEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getKilledProc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    return-object v0
.end method

.method public getKilledReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getKilledTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    return-wide v0
.end method

.method public getPolicy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getProcAdj()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    return v0
.end method

.method public getProcState()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    return v0
.end method

.method public isInterestingToUser()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    return v0
.end method

.method public setInterestingToUser(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    return-void
.end method

.method public setKilledProc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    return-void
.end method

.method public setKilledReason(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    return-void
.end method

.method public setKilledTime(J)V
    .registers 3

    iput-wide p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    return-void
.end method

.method public setProcAdj(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    return-void
.end method

.method public setProcState(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KillProcessEvent { policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " killedProcess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " processState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processAdj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " killedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " isInterestingToUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->policy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->procAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->killedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/KillProcessEvent;->isInterestingToUser:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
