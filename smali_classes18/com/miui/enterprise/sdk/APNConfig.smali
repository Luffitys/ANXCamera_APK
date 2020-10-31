.class public Lcom/miui/enterprise/sdk/APNConfig;
.super Ljava/lang/Object;
.source "APNConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApn:Ljava/lang/String;

.field public mAuthType:I

.field public mBearer:I

.field public mCarrier_enabled:I

.field public mCurrent:I

.field public mDialNumber:Ljava/lang/String;

.field public mMcc:Ljava/lang/String;

.field public mMmsc:Ljava/lang/String;

.field public mMmsport:Ljava/lang/String;

.field public mMmsproxy:Ljava/lang/String;

.field public mMnc:Ljava/lang/String;

.field public mMvno_match_data:Ljava/lang/String;

.field public mMvno_type:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNumeric:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:Ljava/lang/String;

.field public mProtocol:Ljava/lang/String;

.field public mProxy:Ljava/lang/String;

.field public mRoaming_protocol:Ljava/lang/String;

.field public mServer:Ljava/lang/String;

.field public mSub_id:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/enterprise/sdk/APNConfig$1;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/APNConfig$1;-><init>()V

    sput-object v0, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/enterprise/sdk/APNConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    iput p5, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    iput-object p6, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    iput p7, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isValidate()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APNConfig{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mApn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUser=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPassword=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAuthType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mBearer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
