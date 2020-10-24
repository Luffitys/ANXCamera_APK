.class public Lcom/xiaomi/mi_connect_service/DpsCallbackData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final INVALID_MESSAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DpsCallbackData"

.field public static final VALID_MESSAGE:I


# instance fields
.field private mCode:I

.field private mMessage:[B

.field private mPartition:Ljava/lang/String;

.field private mTopicName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;

    invoke-direct {v0}, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;-><init>()V

    sput-object v0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    iput-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "DpsCallbackData"

    const-string p1, "readFromParcel: invalid message ..."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    return p0
.end method

.method public getMessage()[B
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    return-object p0
.end method

.method public getPartition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    return-object p0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mTopicName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mPartition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;->mMessage:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    :goto_0
    return-void
.end method
