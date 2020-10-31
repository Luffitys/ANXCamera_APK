.class public abstract Landroid/net/PlatformVpnProfile;
.super Ljava/lang/Object;
.source "PlatformVpnProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PlatformVpnProfile$PlatformVpnType;
    }
.end annotation


# static fields
.field public static final MAX_MTU_DEFAULT:I = 0x550

.field public static final TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6


# instance fields
.field protected final mType:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/PlatformVpnProfile;->mType:I

    return-void
.end method

.method public static fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/PlatformVpnProfile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    const/4 v1, 0x7

    if-eq v0, v1, :cond_15

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    goto :goto_15

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown VPN Profile type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    invoke-static {p0}, Landroid/net/Ikev2VpnProfile;->fromVpnProfile(Lcom/android/internal/net/VpnProfile;)Landroid/net/Ikev2VpnProfile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getType()I
    .registers 2

    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    return v0
.end method

.method public final getTypeString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/net/PlatformVpnProfile;->mType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_15

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    const-string v0, "Unknown VPN profile type"

    return-object v0

    :cond_f
    const-string v0, "IKEv2/IPsec RSA Digital Signature"

    return-object v0

    :cond_12
    const-string v0, "IKEv2/IPsec Preshared key"

    return-object v0

    :cond_15
    const-string v0, "IKEv2/IPsec Username/Password"

    return-object v0
.end method

.method public abstract toVpnProfile()Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
