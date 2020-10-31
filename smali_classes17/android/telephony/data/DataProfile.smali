.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataProfile$Builder;,
        Landroid/telephony/data/DataProfile$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_3GPP:I = 0x1

.field public static final TYPE_3GPP2:I = 0x2

.field public static final TYPE_COMMON:I


# instance fields
.field private final mApn:Ljava/lang/String;

.field private final mAuthType:I

.field private final mBearerBitmask:I

.field private final mEnabled:Z

.field private final mMaxConnections:I

.field private final mMaxConnectionsTime:I

.field private final mMtuV4:I

.field private final mMtuV6:I

.field private final mPassword:Ljava/lang/String;

.field private final mPersistent:Z

.field private final mPreferred:Z

.field private final mProfileId:I

.field private final mProtocolType:I

.field private final mRoamingProtocolType:I

.field private final mSupportedApnTypesBitmask:I

.field private final mType:I

.field private final mUserName:Ljava/lang/String;

.field private final mWaitTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIZIIIIIZZ)V
    .registers 35

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/data/DataProfile;->mProfileId:I

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    move/from16 v3, p3

    iput v3, v0, Landroid/telephony/data/DataProfile;->mProtocolType:I

    const/4 v4, -0x1

    move/from16 v5, p4

    if-ne v5, v4, :cond_21

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x3

    :goto_1f
    nop

    goto :goto_22

    :cond_21
    move v4, v5

    :goto_22
    iput v4, v0, Landroid/telephony/data/DataProfile;->mAuthType:I

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/data/DataProfile;->mType:I

    move/from16 v8, p8

    iput v8, v0, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    move/from16 v10, p10

    iput v10, v0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    move/from16 v12, p12

    iput v12, v0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    move/from16 v13, p13

    iput v13, v0, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    move/from16 v14, p14

    iput v14, v0, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    move/from16 v15, p15

    iput v15, v0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/data/DataProfile;->mMtuV6:I

    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/telephony/data/DataProfile;->mPersistent:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIZIIIIIZZLandroid/telephony/data/DataProfile$1;)V
    .registers 20

    invoke-direct/range {p0 .. p18}, Landroid/telephony/data/DataProfile;-><init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIZIIIIIZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProtocolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMtuV6:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPersistent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/data/DataProfile$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_91

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_91

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/DataProfile;

    iget v3, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mProfileId:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mProtocolType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mProtocolType:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mAuthType:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mType:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mWaitTime:I

    if-ne v3, v4, :cond_8f

    iget-boolean v3, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    iget-boolean v4, v2, Landroid/telephony/data/DataProfile;->mEnabled:Z

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mMtuV4:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/telephony/data/DataProfile;->mMtuV6:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mMtuV6:I

    if-ne v3, v4, :cond_8f

    iget-boolean v3, p0, Landroid/telephony/data/DataProfile;->mPersistent:Z

    iget-boolean v4, v2, Landroid/telephony/data/DataProfile;->mPersistent:Z

    if-ne v3, v4, :cond_8f

    iget-boolean v3, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    iget-boolean v4, v2, Landroid/telephony/data/DataProfile;->mPreferred:Z

    if-ne v3, v4, :cond_8f

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_90

    :cond_8f
    move v0, v1

    :goto_90
    return v0

    :cond_91
    :goto_91
    return v1
.end method

.method public getApn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    return v0
.end method

.method public getBearerBitmask()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    return v0
.end method

.method public getMaxConnections()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    return v0
.end method

.method public getMaxConnectionsTime()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    return v0
.end method

.method public getMtu()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    return v0
.end method

.method public getMtuV4()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    return v0
.end method

.method public getMtuV6()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtuV6:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return v0
.end method

.method public getProtocolType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProtocolType:I

    return v0
.end method

.method public getRoamingProtocolType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    return v0
.end method

.method public getSupportedApnTypesBitmask()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProtocolType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMtuV6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPersistent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    return v0
.end method

.method public isPersistent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPersistent:Z

    return v0
.end method

.method public isPreferred()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mProtocolType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-eqz v2, :cond_2b

    const-string v2, "***/***/***"

    goto :goto_49

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/data/DataProfile;->mMtuV6:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/telephony/data/DataProfile;->mPersistent:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnectionsTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnections:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtuV4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtuV6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPersistent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
