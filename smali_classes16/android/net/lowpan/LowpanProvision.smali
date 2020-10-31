.class public Landroid/net/lowpan/LowpanProvision;
.super Ljava/lang/Object;
.source "LowpanProvision.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanProvision$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanProvision;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCredential:Landroid/net/lowpan/LowpanCredential;

.field private mIdentity:Landroid/net/lowpan/LowpanIdentity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/lowpan/LowpanProvision$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanProvision$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/lowpan/LowpanIdentity;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanProvision$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/lowpan/LowpanProvision;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/net/lowpan/LowpanProvision;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/lowpan/LowpanProvision;Landroid/net/lowpan/LowpanCredential;)Landroid/net/lowpan/LowpanCredential;
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/lowpan/LowpanProvision;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanProvision;

    iget-object v2, p0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    iget-object v3, v0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v2, v3}, Landroid/net/lowpan/LowpanIdentity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    :cond_14
    iget-object v2, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    iget-object v3, v0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    const/4 v1, 0x1

    return v1
.end method

.method public getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    return-object v0
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "LowpanProvision { identity => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    if-eqz v1, :cond_25

    const-string v1, ", credential => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanCredential;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0, p1, p2}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_17

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision;->mCredential:Landroid/net/lowpan/LowpanCredential;

    invoke-virtual {v0, p1, p2}, Landroid/net/lowpan/LowpanCredential;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    return-void
.end method
