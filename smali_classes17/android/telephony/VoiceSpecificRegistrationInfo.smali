.class public Landroid/telephony/VoiceSpecificRegistrationInfo;
.super Ljava/lang/Object;
.source "VoiceSpecificRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VoiceSpecificRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cssSupported:Z

.field public final defaultRoamingIndicator:I

.field public final roamingIndicator:I

.field public final systemIsInPrl:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/VoiceSpecificRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/VoiceSpecificRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/VoiceSpecificRegistrationInfo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/VoiceSpecificRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/telephony/VoiceSpecificRegistrationInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    iput-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    iget v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    iget v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    iget v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    return-void
.end method

.method constructor <init>(ZIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    iput p2, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    iput p3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    iput p4, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

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
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    instance-of v2, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;

    if-nez v2, :cond_c

    goto :goto_2a

    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-boolean v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    iget-boolean v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceSpecificRegistrationInfo { mCssSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSystemIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
