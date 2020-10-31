.class public final Landroid/telephony/ims/RcsContactUceCapability;
.super Ljava/lang/Object;
.source "RcsContactUceCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/RcsContactUceCapability$Builder;,
        Landroid/telephony/ims/RcsContactUceCapability$CapabilityFlag;
    }
.end annotation


# static fields
.field public static final CAPABILITY_CALL_COMPOSER:I = 0x400000

.field public static final CAPABILITY_CHAT_BOT:I = 0x4000000

.field public static final CAPABILITY_CHAT_BOT_ROLE:I = 0x8000000

.field public static final CAPABILITY_CHAT_SESSION:I = 0x2

.field public static final CAPABILITY_CHAT_SESSION_STORE_FORWARD:I = 0x4

.field public static final CAPABILITY_CHAT_STANDALONE:I = 0x1

.field public static final CAPABILITY_DISCOVERY_VIA_PRESENCE:I = 0x1000

.field public static final CAPABILITY_FILE_TRANSFER:I = 0x8

.field public static final CAPABILITY_FILE_TRANSFER_HTTP:I = 0x40

.field public static final CAPABILITY_FILE_TRANSFER_SMS:I = 0x80

.field public static final CAPABILITY_FILE_TRANSFER_STORE_FORWARD:I = 0x20

.field public static final CAPABILITY_FILE_TRANSFER_THUMBNAIL:I = 0x10

.field public static final CAPABILITY_GEOLOCATION_PULL:I = 0x20000

.field public static final CAPABILITY_GEOLOCATION_PULL_FILE_TRANSFER:I = 0x40000

.field public static final CAPABILITY_GEOLOCATION_PUSH:I = 0x8000

.field public static final CAPABILITY_GEOLOCATION_PUSH_SMS:I = 0x10000

.field public static final CAPABILITY_IMAGE_SHARE:I = 0x100

.field public static final CAPABILITY_IP_VIDEO_CALL:I = 0x4000

.field public static final CAPABILITY_IP_VOICE_CALL:I = 0x2000

.field public static final CAPABILITY_MMTEL_CALL_COMPOSER:I = 0x40000000

.field public static final CAPABILITY_PLUG_IN:I = 0x10000000

.field public static final CAPABILITY_POST_CALL:I = 0x800000

.field public static final CAPABILITY_RCS_VIDEO_CALL:I = 0x100000

.field public static final CAPABILITY_RCS_VIDEO_ONLY_CALL:I = 0x200000

.field public static final CAPABILITY_RCS_VOICE_CALL:I = 0x80000

.field public static final CAPABILITY_SHARED_MAP:I = 0x1000000

.field public static final CAPABILITY_SHARED_SKETCH:I = 0x2000000

.field public static final CAPABILITY_SOCIAL_PRESENCE:I = 0x800

.field public static final CAPABILITY_STANDALONE_CHAT_BOT:I = 0x20000000

.field public static final CAPABILITY_VIDEO_SHARE:I = 0x400

.field public static final CAPABILITY_VIDEO_SHARE_DURING_CS_CALL:I = 0x200

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapabilities:J

.field private final mContactUri:Landroid/net/Uri;

.field private mExtensionTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/ims/RcsContactUceCapability$1;

    invoke-direct {v0}, Landroid/telephony/ims/RcsContactUceCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    iput-object p1, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilities:J

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_4d

    iget-object v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4d
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/ims/RcsContactUceCapability$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsContactUceCapability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$078(Landroid/telephony/ims/RcsContactUceCapability;J)J
    .registers 5

    iget-wide v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilities:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilities:J

    return-wide v0
.end method

.method static synthetic access$100(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCapableExtensionTags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getServiceUri(J)Landroid/net/Uri;
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_1a

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/RcsContactUceCapability;->isCapable(J)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/telephony/ims/RcsContactUceCapability;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    :cond_19
    return-object v2

    :cond_1a
    return-object v0
.end method

.method public isCapable(J)Z
    .registers 7

    iget-wide v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilities:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isCapable(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mContactUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mCapabilities:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mExtensionTags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v5, p0, Landroid/telephony/ims/RcsContactUceCapability;->mServiceMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {p1, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_27

    :cond_4a
    return-void
.end method
