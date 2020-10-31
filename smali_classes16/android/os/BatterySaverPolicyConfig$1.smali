.class Landroid/os/BatterySaverPolicyConfig$1;
.super Ljava/lang/Object;
.source "BatterySaverPolicyConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatterySaverPolicyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/BatterySaverPolicyConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/BatterySaverPolicyConfig;
    .registers 4

    new-instance v0, Landroid/os/BatterySaverPolicyConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/Parcel;Landroid/os/BatterySaverPolicyConfig$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/BatterySaverPolicyConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/BatterySaverPolicyConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/BatterySaverPolicyConfig;
    .registers 3

    new-array v0, p1, [Landroid/os/BatterySaverPolicyConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/BatterySaverPolicyConfig$1;->newArray(I)[Landroid/os/BatterySaverPolicyConfig;

    move-result-object p1

    return-object p1
.end method
