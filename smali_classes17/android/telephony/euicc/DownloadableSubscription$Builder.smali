.class public final Landroid/telephony/euicc/DownloadableSubscription$Builder;
.super Ljava/lang/Object;
.source "DownloadableSubscription.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/euicc/DownloadableSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field accessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private carrierName:Ljava/lang/String;

.field private confirmationCode:Ljava/lang/String;

.field private encodedActivationCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/euicc/DownloadableSubscription;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getEncodedActivationCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->encodedActivationCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getConfirmationCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->confirmationCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->carrierName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/euicc/DownloadableSubscription;->getAccessRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->accessRules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/euicc/DownloadableSubscription;
    .registers 8

    new-instance v6, Landroid/telephony/euicc/DownloadableSubscription;

    iget-object v1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->encodedActivationCode:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->confirmationCode:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->carrierName:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->accessRules:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/euicc/DownloadableSubscription$1;)V

    return-object v6
.end method

.method public setAccessRules(Ljava/util/List;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;)",
            "Landroid/telephony/euicc/DownloadableSubscription$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->accessRules:Ljava/util/List;

    return-object p0
.end method

.method public setCarrierName(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->carrierName:Ljava/lang/String;

    return-object p0
.end method

.method public setConfirmationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->confirmationCode:Ljava/lang/String;

    return-object p0
.end method

.method public setEncodedActivationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription$Builder;->encodedActivationCode:Ljava/lang/String;

    return-object p0
.end method
