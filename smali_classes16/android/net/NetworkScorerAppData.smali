.class public final Landroid/net/NetworkScorerAppData;
.super Ljava/lang/Object;
.source "NetworkScorerAppData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

.field private final mNetworkAvailableNotificationChannelId:Ljava/lang/String;

.field private final mRecommendationService:Landroid/content/ComponentName;

.field private final mRecommendationServiceLabel:Ljava/lang/String;

.field public final packageUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/NetworkScorerAppData$1;

    invoke-direct {v0}, Landroid/net/NetworkScorerAppData$1;-><init>()V

    sput-object v0, Landroid/net/NetworkScorerAppData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    iput-object p2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    iput-object p5, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

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

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/net/NetworkScorerAppData;

    iget v3, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    iget v4, v2, Landroid/net/NetworkScorerAppData;->packageUid:I

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    :goto_45
    return v0

    :cond_46
    :goto_46
    return v1
.end method

.method public getEnableUseOpenWifiActivity()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNetworkAvailableNotificationChannelId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServiceComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getRecommendationServiceLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServicePackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkScorerAppData{packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendationService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendationServiceLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableUseOpenWifiActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkAvailableNotificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
