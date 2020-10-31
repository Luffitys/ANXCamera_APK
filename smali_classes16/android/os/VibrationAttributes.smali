.class public final Landroid/os/VibrationAttributes;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationAttributes$Builder;,
        Landroid/os/VibrationAttributes$Flag;,
        Landroid/os/VibrationAttributes$Usage;,
        Landroid/os/VibrationAttributes$UsageClass;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x1

.field private static final MAX_HAPTIC_FEEDBACK_DURATION:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "VibrationAttributes"

.field public static final USAGE_ALARM:I = 0x11

.field public static final USAGE_CLASS_ALARM:I = 0x1

.field public static final USAGE_CLASS_FEEDBACK:I = 0x2

.field public static final USAGE_CLASS_MASK:I = 0xf

.field public static final USAGE_CLASS_UNKNOWN:I = 0x0

.field public static final USAGE_COMMUNICATION_REQUEST:I = 0x41

.field public static final USAGE_HARDWARE_FEEDBACK:I = 0x32

.field public static final USAGE_NOTIFICATION:I = 0x31

.field public static final USAGE_PHYSICAL_EMULATION:I = 0x22

.field public static final USAGE_RINGTONE:I = 0x21

.field public static final USAGE_TOUCH:I = 0x12

.field public static final USAGE_UNKNOWN:I


# instance fields
.field private final mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mFlags:I

.field private final mUsage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/VibrationAttributes$1;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$1;-><init>()V

    sput-object v0, Landroid/os/VibrationAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILandroid/media/AudioAttributes;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iput p2, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iput-object p3, p0, Landroid/os/VibrationAttributes;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method synthetic constructor <init>(IILandroid/media/AudioAttributes;Landroid/os/VibrationAttributes$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/VibrationAttributes;-><init>(IILandroid/media/AudioAttributes;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    const-class v0, Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/os/VibrationAttributes;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/VibrationAttributes$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100(Landroid/os/VibrationAttributes;)I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method static synthetic access$200(Landroid/os/VibrationAttributes;)I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method static synthetic access$300(Landroid/os/VibrationAttributes;)Landroid/media/AudioAttributes;
    .registers 2

    iget-object v0, p0, Landroid/os/VibrationAttributes;->mAudioAttributes:Landroid/media/AudioAttributes;

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

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/os/VibrationAttributes;

    iget v3, p0, Landroid/os/VibrationAttributes;->mUsage:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mUsage:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Landroid/os/VibrationAttributes;->mFlags:I

    iget v4, v2, Landroid/os/VibrationAttributes;->mFlags:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    :cond_24
    :goto_24
    return v1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/os/VibrationAttributes;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    return v0
.end method

.method public getUsage()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    return v0
.end method

.method public getUsageClass()I
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFlagSet(I)Z
    .registers 3

    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    and-int/2addr v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationAttributes: Usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usageToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_46

    const/16 v0, 0x41

    if-eq p1, v0, :cond_43

    const/16 v0, 0x11

    if-eq p1, v0, :cond_40

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x21

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x22

    if-eq p1, v0, :cond_37

    const/16 v0, 0x31

    if-eq p1, v0, :cond_34

    const/16 v0, 0x32

    if-eq p1, v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    const-string v0, "HARDWARE_FEEDBACK"

    return-object v0

    :cond_34
    const-string v0, "NOTIFICATION"

    return-object v0

    :cond_37
    const-string v0, "PHYSICAL_EMULATION"

    return-object v0

    :cond_3a
    const-string v0, "RIGNTONE"

    return-object v0

    :cond_3d
    const-string v0, "TOUCH"

    return-object v0

    :cond_40
    const-string v0, "ALARM"

    return-object v0

    :cond_43
    const-string v0, "COMMUNICATION_REQUEST"

    return-object v0

    :cond_46
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/VibrationAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/VibrationAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/VibrationAttributes;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
