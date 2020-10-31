.class public Landroid/telephony/ims/RcsContactUceCapability$Builder;
.super Ljava/lang/Object;
.source "RcsContactUceCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsContactUceCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability;

    invoke-direct {v0, p1}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-void
.end method


# virtual methods
.method public add(J)Landroid/telephony/ims/RcsContactUceCapability$Builder;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    # |= operator for: Landroid/telephony/ims/RcsContactUceCapability;->mCapabilities:J
    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsContactUceCapability;->access$078(Landroid/telephony/ims/RcsContactUceCapability;J)J

    return-object p0
.end method

.method public add(JLandroid/net/Uri;)Landroid/telephony/ims/RcsContactUceCapability$Builder;
    .registers 12

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    # |= operator for: Landroid/telephony/ims/RcsContactUceCapability;->mCapabilities:J
    invoke-static {v0, p1, p2}, Landroid/telephony/ims/RcsContactUceCapability;->access$078(Landroid/telephony/ims/RcsContactUceCapability;J)J

    const-wide/16 v0, 0x0

    :goto_7
    const-wide/16 v2, 0x20

    cmp-long v2, v0, v2

    if-gez v2, :cond_30

    const/4 v2, 0x1

    long-to-int v3, v0

    shl-int/2addr v2, v3

    int-to-long v2, v2

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_27

    iget-object v6, p0, Landroid/telephony/ims/RcsContactUceCapability$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    # getter for: Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;
    invoke-static {v6}, Landroid/telephony/ims/RcsContactUceCapability;->access$100(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    not-long v6, v2

    and-long/2addr p1, v6

    :cond_27
    cmp-long v4, p1, v4

    if-nez v4, :cond_2c

    goto :goto_30

    :cond_2c
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_7

    :cond_30
    :goto_30
    return-object p0
.end method

.method public add(Ljava/lang/String;)Landroid/telephony/ims/RcsContactUceCapability$Builder;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    # getter for: Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;
    invoke-static {v0}, Landroid/telephony/ims/RcsContactUceCapability;->access$200(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability$Builder;->mCapabilities:Landroid/telephony/ims/RcsContactUceCapability;

    return-object v0
.end method
