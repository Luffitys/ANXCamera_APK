.class public final Landroid/telephony/PinResult;
.super Ljava/lang/Object;
.source "PinResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PinResult$PinResultType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PinResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIN_RESULT_TYPE_FAILURE:I = 0x2

.field public static final PIN_RESULT_TYPE_INCORRECT:I = 0x1

.field public static final PIN_RESULT_TYPE_SUCCESS:I

.field private static final sFailedResult:Landroid/telephony/PinResult;


# instance fields
.field private final mAttemptsRemaining:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/telephony/PinResult;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/PinResult;-><init>(II)V

    sput-object v0, Landroid/telephony/PinResult;->sFailedResult:Landroid/telephony/PinResult;

    new-instance v0, Landroid/telephony/PinResult$1;

    invoke-direct {v0}, Landroid/telephony/PinResult$1;-><init>()V

    sput-object v0, Landroid/telephony/PinResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/PinResult;->mType:I

    iput p2, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PinResult;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PinResult$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PinResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getDefaultFailedResult()Landroid/telephony/PinResult;
    .registers 1

    sget-object v0, Landroid/telephony/PinResult;->sFailedResult:Landroid/telephony/PinResult;

    return-object v0
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
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/telephony/PinResult;

    iget v3, p0, Landroid/telephony/PinResult;->mType:I

    iget v4, v2, Landroid/telephony/PinResult;->mType:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    iget v4, v2, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0
.end method

.method public getAttemptsRemaining()I
    .registers 2

    iget v0, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/telephony/PinResult;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PinResult;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attempts remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/PinResult;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
