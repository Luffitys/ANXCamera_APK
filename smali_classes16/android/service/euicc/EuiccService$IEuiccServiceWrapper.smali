.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;
.super Landroid/service/euicc/IEuiccService$Stub;
.source "EuiccService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/EuiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IEuiccServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/euicc/EuiccService;


# direct methods
.method private constructor <init>(Landroid/service/euicc/EuiccService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    invoke-direct {p0}, Landroid/service/euicc/IEuiccService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/euicc/EuiccService;Landroid/service/euicc/EuiccService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;-><init>(Landroid/service/euicc/EuiccService;)V

    return-void
.end method


# virtual methods
.method public deleteSubscription(ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$9;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Landroid/service/euicc/IDeleteSubscriptionCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V
    .registers 18

    move-object v8, p0

    iget-object v0, v8, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v9

    new-instance v10, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$1;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Landroid/service/euicc/IDownloadSubscriptionCallback;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;

    invoke-direct {v1, p0, p1}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$15;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;Landroid/service/euicc/IEuiccServiceDumpResultCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eraseSubscriptions(ILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$12;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public eraseSubscriptionsWithOptions(IILandroid/service/euicc/IEraseSubscriptionsCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$13;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IILandroid/service/euicc/IEraseSubscriptionsCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDefaultDownloadableSubscriptionList(IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$6;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;IZLandroid/service/euicc/IGetDefaultDownloadableSubscriptionListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V
    .registers 13

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$5;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/telephony/euicc/DownloadableSubscription;ZLandroid/service/euicc/IGetDownloadableSubscriptionMetadataCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEid(ILandroid/service/euicc/IGetEidCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$2;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEidCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccInfoCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEuiccProfileInfoList(ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$7;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccProfileInfoListCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getOtaStatus(ILandroid/service/euicc/IGetOtaStatusCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$4;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetOtaStatusCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retainSubscriptionsForFactoryReset(ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$14;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$14;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IRetainSubscriptionsForFactoryResetCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startOtaIfNecessary(ILandroid/service/euicc/IOtaStatusChangedCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$3;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IOtaStatusChangedCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchToSubscription(ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V
    .registers 13

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$10;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;ZLandroid/service/euicc/ISwitchToSubscriptionCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V
    .registers 13

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    # getter for: Landroid/service/euicc/EuiccService;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {v0}, Landroid/service/euicc/EuiccService;->access$100(Landroid/service/euicc/EuiccService;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v7, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$11;-><init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILjava/lang/String;Ljava/lang/String;Landroid/service/euicc/IUpdateSubscriptionNicknameCallback;)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
