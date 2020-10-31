.class public final Landroid/net/CaptivePortalData;
.super Ljava/lang/Object;
.source "CaptivePortalData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/CaptivePortalData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mByteLimit:J

.field private final mCaptive:Z

.field private final mExpiryTimeMillis:J

.field private final mIsSessionExtendable:Z

.field private final mRefreshTimeMillis:J

.field private final mUserPortalUrl:Landroid/net/Uri;

.field private final mVenueInfoUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/CaptivePortalData$1;

    invoke-direct {v0}, Landroid/net/CaptivePortalData$1;-><init>()V

    sput-object v0, Landroid/net/CaptivePortalData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    iput-object p3, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    iput-object p4, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    iput-boolean p5, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    iput-wide p6, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    iput-wide p8, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    iput-boolean p10, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    return-void
.end method

.method synthetic constructor <init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZLandroid/net/CaptivePortalData$1;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/net/CaptivePortalData;-><init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 13

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/net/CaptivePortalData;-><init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/CaptivePortalData$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/CaptivePortalData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/CaptivePortalData;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/CaptivePortalData;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/net/CaptivePortalData;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/net/CaptivePortalData;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/CaptivePortalData;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/CaptivePortalData;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/CaptivePortalData;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/net/CaptivePortalData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/CaptivePortalData;

    iget-wide v2, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    iget-wide v4, v0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-object v2, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    iget-object v3, v0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    iget-object v3, v0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-boolean v2, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    iget-boolean v3, v0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    iget-wide v4, v0, Landroid/net/CaptivePortalData;->mByteLimit:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-wide v2, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    iget-wide v4, v0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-boolean v2, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    iget-boolean v3, v0, Landroid/net/CaptivePortalData;->mCaptive:Z

    if-ne v2, v3, :cond_43

    const/4 v1, 0x1

    goto :goto_44

    :cond_43
    nop

    :goto_44
    return v1
.end method

.method public getByteLimit()J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    return-wide v0
.end method

.method public getExpiryTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method public getRefreshTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    return-wide v0
.end method

.method public getUserPortalUrl()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getVenueInfoUrl()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCaptive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    return v0
.end method

.method public isSessionExtendable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptivePortalData {refreshTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userPortalUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", venueInfoUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSessionExtendable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", byteLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expiryTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", captive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mByteLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/net/CaptivePortalData;->mCaptive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
