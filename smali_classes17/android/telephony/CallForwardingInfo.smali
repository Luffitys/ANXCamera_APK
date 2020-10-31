.class public final Landroid/telephony/CallForwardingInfo;
.super Ljava/lang/Object;
.source "CallForwardingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallForwardingInfo$CallForwardingReason;,
        Landroid/telephony/CallForwardingInfo$CallForwardingStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallForwardingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_ALL:I = 0x4

.field public static final REASON_ALL_CONDITIONAL:I = 0x5

.field public static final REASON_BUSY:I = 0x1

.field public static final REASON_NOT_REACHABLE:I = 0x3

.field public static final REASON_NO_REPLY:I = 0x2

.field public static final REASON_UNCONDITIONAL:I = 0x0

.field public static final STATUS_ACTIVE:I = 0x1

.field public static final STATUS_FDN_CHECK_FAILURE:I = 0x2

.field public static final STATUS_INACTIVE:I = 0x0

.field public static final STATUS_NOT_SUPPORTED:I = 0x4

.field public static final STATUS_UNKNOWN_ERROR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CallForwardingInfo"


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mReason:I

.field private mStatus:I

.field private mTimeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/CallForwardingInfo$1;

    invoke-direct {v0}, Landroid/telephony/CallForwardingInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CallForwardingInfo;->mStatus:I

    iput p2, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    iput-object p3, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallForwardingInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CallForwardingInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CallForwardingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/telephony/CallForwardingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CallForwardingInfo;

    iget v3, p0, Landroid/telephony/CallForwardingInfo;->mStatus:I

    iget v4, v1, Landroid/telephony/CallForwardingInfo;->mStatus:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget v3, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    iget v4, v1, Landroid/telephony/CallForwardingInfo;->mReason:I

    if-ne v3, v4, :cond_26

    iget v3, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    iget v4, v1, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mStatus:I

    return v0
.end method

.method public getTimeoutSeconds()I
    .registers 2

    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CallForwardingInfo: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSec= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    const-string v2, "CallForwardingInfo"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
