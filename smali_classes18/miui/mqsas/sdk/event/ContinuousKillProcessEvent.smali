.class public Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;
.super Ljava/lang/Object;
.source "ContinuousKillProcessEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROCESS_STATE_NONEXISTENT:I = -0x1

.field public static final UNKNOWN_ADJ:I = 0x7fffffff


# instance fields
.field private callerPackage:Ljava/lang/String;

.field private killedProc:Ljava/lang/String;

.field private killedReason:Ljava/lang/String;

.field private procAdj:I

.field private procState:I

.field private startReason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    const v0, 0x7fffffff

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCallerPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getKilledProc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    return-object v0
.end method

.method public getKilledReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    return-object v0
.end method

.method public getProcAdj()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    return v0
.end method

.method public getProcState()I
    .registers 2

    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    return v0
.end method

.method public getStartReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    return-object v0
.end method

.method public setCallerPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    return-void
.end method

.method public setKilledProc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    return-void
.end method

.method public setKilledReason(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    return-void
.end method

.method public setProcAdj(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    return-void
.end method

.method public setProcState(I)V
    .registers 2

    iput p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    return-void
.end method

.method public setStartReason(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContinuousKillProcessEvent { killedProcess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " killedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callerPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " processAdj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " procState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .registers 4

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedProc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->killedReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->startReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmiui/mqsas/sdk/event/ContinuousKillProcessEvent;->procAdj:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
