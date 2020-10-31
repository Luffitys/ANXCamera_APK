.class public Landroid/net/CaptivePortalData$Builder;
.super Ljava/lang/Object;
.source "CaptivePortalData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBytesRemaining:J

.field private mCaptive:Z

.field private mExpiryTime:J

.field private mIsSessionExtendable:Z

.field private mRefreshTime:J

.field private mUserPortalUrl:Landroid/net/Uri;

.field private mVenueInfoUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    return-void
.end method

.method public constructor <init>(Landroid/net/CaptivePortalData;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    if-nez p1, :cond_c

    return-void

    :cond_c
    # getter for: Landroid/net/CaptivePortalData;->mRefreshTimeMillis:J
    invoke-static {p1}, Landroid/net/CaptivePortalData;->access$600(Landroid/net/CaptivePortalData;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/CaptivePortalData$Builder;->setRefreshTime(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    # getter for: Landroid/net/CaptivePortalData;->mUserPortalUrl:Landroid/net/Uri;
    invoke-static {p1}, Landroid/net/CaptivePortalData;->access$500(Landroid/net/CaptivePortalData;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setUserPortalUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    # getter for: Landroid/net/CaptivePortalData;->mVenueInfoUrl:Landroid/net/Uri;
    invoke-static {p1}, Landroid/net/CaptivePortalData;->access$400(Landroid/net/CaptivePortalData;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setVenueInfoUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    # getter for: Landroid/net/CaptivePortalData;->mIsSessionExtendable:Z
    invoke-static {p1}, Landroid/net/CaptivePortalData;->access$300(Landroid/net/CaptivePortalData;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setSessionExtendable(Z)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    # getter for: Landroid/net/CaptivePortalData;->mByteLimit:J
    invoke-static {p1}, Landroid/net/CaptivePortalData;->access$200(Landroid/net/CaptivePortalData;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/CaptivePortalData$Builder;->setBytesRemaining(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    # getter for: Landroid/net/CaptivePortalData;->mExpiryTimeMillis:J
    invoke-static {p1}, Landroid/net/CaptivePortalData;->access$100(Landroid/net/CaptivePortalData;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/CaptivePortalData$Builder;->setExpiryTime(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    # getter for: Landroid/net/CaptivePortalData;->mCaptive:Z
    invoke-static {p1}, Landroid/net/CaptivePortalData;->access$000(Landroid/net/CaptivePortalData;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setCaptive(Z)Landroid/net/CaptivePortalData$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/CaptivePortalData;
    .registers 14

    new-instance v12, Landroid/net/CaptivePortalData;

    iget-wide v1, p0, Landroid/net/CaptivePortalData$Builder;->mRefreshTime:J

    iget-object v3, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrl:Landroid/net/Uri;

    iget-object v4, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrl:Landroid/net/Uri;

    iget-boolean v5, p0, Landroid/net/CaptivePortalData$Builder;->mIsSessionExtendable:Z

    iget-wide v6, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    iget-wide v8, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    iget-boolean v10, p0, Landroid/net/CaptivePortalData$Builder;->mCaptive:Z

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/net/CaptivePortalData;-><init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZLandroid/net/CaptivePortalData$1;)V

    return-object v12
.end method

.method public setBytesRemaining(J)Landroid/net/CaptivePortalData$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    return-object p0
.end method

.method public setCaptive(Z)Landroid/net/CaptivePortalData$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/net/CaptivePortalData$Builder;->mCaptive:Z

    return-object p0
.end method

.method public setExpiryTime(J)Landroid/net/CaptivePortalData$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    return-object p0
.end method

.method public setRefreshTime(J)Landroid/net/CaptivePortalData$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/net/CaptivePortalData$Builder;->mRefreshTime:J

    return-object p0
.end method

.method public setSessionExtendable(Z)Landroid/net/CaptivePortalData$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/net/CaptivePortalData$Builder;->mIsSessionExtendable:Z

    return-object p0
.end method

.method public setUserPortalUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public setVenueInfoUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;
    .registers 2

    iput-object p1, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrl:Landroid/net/Uri;

    return-object p0
.end method
