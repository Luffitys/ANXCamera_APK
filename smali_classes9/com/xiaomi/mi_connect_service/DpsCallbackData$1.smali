.class final Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mi_connect_service/DpsCallbackData;
    .locals 0

    new-instance p0, Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    invoke-direct {p0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/xiaomi/mi_connect_service/DpsCallbackData;
    .locals 0

    new-array p0, p1, [Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mi_connect_service/DpsCallbackData$1;->newArray(I)[Lcom/xiaomi/mi_connect_service/DpsCallbackData;

    move-result-object p0

    return-object p0
.end method
