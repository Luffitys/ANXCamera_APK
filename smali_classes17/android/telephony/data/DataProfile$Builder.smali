.class public final Landroid/telephony/data/DataProfile$Builder;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mApn:Ljava/lang/String;

.field private mAuthType:I

.field private mBearerBitmask:I

.field private mEnabled:Z

.field private mMaxConnections:I

.field private mMaxConnectionsTime:I

.field private mMtuV4:I

.field private mMtuV6:I

.field private mPassword:Ljava/lang/String;

.field private mPersistent:Z

.field private mPreferred:Z

.field private mProfileId:I

.field private mProtocolType:I

.field private mRoamingProtocolType:I

.field private mSupportedApnTypesBitmask:I

.field private mType:I

.field private mUserName:Ljava/lang/String;

.field private mWaitTime:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/data/DataProfile;
    .registers 24

    move-object/from16 v0, p0

    new-instance v21, Landroid/telephony/data/DataProfile;

    move-object/from16 v1, v21

    iget v2, v0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    iget-object v3, v0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    iget v4, v0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    iget v5, v0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    iget-object v6, v0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    iget-object v7, v0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    iget v8, v0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    iget v9, v0, Landroid/telephony/data/DataProfile$Builder;->mMaxConnectionsTime:I

    iget v10, v0, Landroid/telephony/data/DataProfile$Builder;->mMaxConnections:I

    iget v11, v0, Landroid/telephony/data/DataProfile$Builder;->mWaitTime:I

    iget-boolean v12, v0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    iget v13, v0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    iget v14, v0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    iget v15, v0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    move-object/from16 v22, v1

    iget v1, v0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    move/from16 v16, v1

    iget v1, v0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    move/from16 v18, v1

    iget-boolean v1, v0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    move/from16 v19, v1

    const/16 v20, 0x0

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Landroid/telephony/data/DataProfile;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIZIIIIIZZLandroid/telephony/data/DataProfile$1;)V

    return-object v21
.end method

.method public enable(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    return-object p0
.end method

.method public setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    return-object p0
.end method

.method public setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    return-object p0
.end method

.method public setMaxConnections(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMaxConnections:I

    return-object p0
.end method

.method public setMaxConnectionsTime(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMaxConnectionsTime:I

    return-object p0
.end method

.method public setMtu(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    return-object p0
.end method

.method public setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    return-object p0
.end method

.method public setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    return-object p0
.end method

.method public setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    return-object p0
.end method

.method public setProfileId(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    return-object p0
.end method

.method public setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    return-object p0
.end method

.method public setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    return-object p0
.end method

.method public setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    return-object p0
.end method

.method public setType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public setWaitTime(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mWaitTime:I

    return-object p0
.end method
