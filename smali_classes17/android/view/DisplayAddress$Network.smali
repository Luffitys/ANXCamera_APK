.class public final Landroid/view/DisplayAddress$Network;
.super Landroid/view/DisplayAddress;
.source "DisplayAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Network"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayAddress$Network;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/DisplayAddress$Network$1;

    invoke-direct {v0}, Landroid/view/DisplayAddress$Network$1;-><init>()V

    sput-object v0, Landroid/view/DisplayAddress$Network;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/view/DisplayAddress$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/DisplayAddress$Network;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/view/DisplayAddress$Network;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayAddress$Network;

    iget-object v1, v1, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/view/DisplayAddress$Network;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
