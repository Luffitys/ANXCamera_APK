.class public final enum Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
.super Ljava/lang/Enum;
.source "VEVideoEncodeProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final enum ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final enum ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

.field public static final enum ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const/4 v1, 0x0

    const-string v2, "ENCODE_PROFILE_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const/4 v2, 0x1

    const-string v3, "ENCODE_PROFILE_BASELINE"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const/4 v3, 0x2

    const-string v4, "ENCODE_PROFILE_MAIN"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const/4 v4, 0x3

    const-string v5, "ENCODE_PROFILE_HIGH"

    invoke-direct {v0, v5, v4}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    sget-object v5, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->$VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    new-instance v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object p0
.end method

.method public static valueOfString(Ljava/lang/String;)Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .locals 2

    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_UNKNOWN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "baseline"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    goto :goto_0

    :cond_0
    const-string v1, "main"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    goto :goto_0

    :cond_1
    const-string v1, "high"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static values()[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->$VALUES:[Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/settings/VEVideoEncodeProfile;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
