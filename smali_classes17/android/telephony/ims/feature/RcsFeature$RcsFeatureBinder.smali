.class final Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;
.super Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;
.source "RcsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/RcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RcsFeatureBinder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mReference:Landroid/telephony/ims/feature/RcsFeature;


# direct methods
.method constructor <init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$BKNRXehVxeScxlIdApDhMRQovpo;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$BKNRXehVxeScxlIdApDhMRQovpo;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsFeatureBinder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsFeature"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$Ca-Lrg0AjuEm0MywLfQlW_OLbac;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$Ca-Lrg0AjuEm0MywLfQlW_OLbac;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :try_start_b
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_f} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RcsFeatureBinder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RcsFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$executeMethodAsync$10(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$executeMethodAsyncForResult$11(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$FP3fQsjEKVwpq4qlvcr28BKvPZ8;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$FP3fQsjEKVwpq4qlvcr28BKvPZ8;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "addCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KzhM6fJ3lOKAUZU1vw70hi3DCU4;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KzhM6fJ3lOKAUZU1vw70hi3DCU4;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "changeCapabilitiesConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public getFeatureState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/feature/-$$Lambda$45UAFJHVNK8x4IbCIjJCvNdDYHU;

    invoke-direct {v1, v0}, Landroid/telephony/ims/feature/-$$Lambda$45UAFJHVNK8x4IbCIjJCvNdDYHU;-><init>(Landroid/telephony/ims/feature/RcsFeature;)V

    const-string v0, "getFeatureState"

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$addCapabilityCallback$1$RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public synthetic lambda$changeCapabilitiesConfiguration$3$RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature;->requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public synthetic lambda$queryCapabilityConfiguration$4$RcsFeature$RcsFeatureBinder(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public synthetic lambda$queryCapabilityStatus$0$RcsFeature$RcsFeatureBinder()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->mCapabilities:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$removeCapabilityCallback$2$RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public synthetic lambda$requestCapabilities$5$RcsFeature$RcsFeatureBinder(Ljava/util/List;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    # invokes: Landroid/telephony/ims/feature/RcsFeature;->getPresenceExchangeInternal()Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;
    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->access$200(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->requestCapabilities(Ljava/util/List;I)V

    return-void
.end method

.method public synthetic lambda$respondToCapabilityRequest$8$RcsFeature$RcsFeatureBinder(Ljava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    # invokes: Landroid/telephony/ims/feature/RcsFeature;->getOptionsExchangeInternal()Landroid/telephony/ims/stub/RcsSipOptionsImplBase;
    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->access$100(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->respondToCapabilityRequest(Ljava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V

    return-void
.end method

.method public synthetic lambda$respondToCapabilityRequestWithError$9$RcsFeature$RcsFeatureBinder(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    # invokes: Landroid/telephony/ims/feature/RcsFeature;->getOptionsExchangeInternal()Landroid/telephony/ims/stub/RcsSipOptionsImplBase;
    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->access$100(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->respondToCapabilityRequestWithError(Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$sendCapabilityRequest$7$RcsFeature$RcsFeatureBinder(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    # invokes: Landroid/telephony/ims/feature/RcsFeature;->getOptionsExchangeInternal()Landroid/telephony/ims/stub/RcsSipOptionsImplBase;
    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->access$100(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsSipOptionsImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/RcsSipOptionsImplBase;->sendCapabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V

    return-void
.end method

.method public synthetic lambda$updateCapabilities$6$RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    # invokes: Landroid/telephony/ims/feature/RcsFeature;->getPresenceExchangeInternal()Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;
    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->access$200(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/RcsPresenceExchangeImplBase;->updateCapabilities(Landroid/telephony/ims/RcsContactUceCapability;I)V

    return-void
.end method

.method public queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$MVZfrdsQjdvMg2JJ3V1ZgyNoaXs;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "queryCapabilityConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public queryCapabilityStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$M_Xsfh7yLPmebDSvMzAvEPPUmE0;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$M_Xsfh7yLPmebDSvMzAvEPPUmE0;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)V

    const-string/jumbo v1, "queryCapabilityStatus"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$xfOc6cnT5pzpCqMa06Osbyq4DSg;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$xfOc6cnT5pzpCqMa06Osbyq4DSg;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "removeCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public requestCapabilities(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$dDflkKfpW9nVgt1b4_Uw-_AF8m8;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;I)V

    const-string/jumbo v1, "requestCapabilities"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public respondToCapabilityRequest(Ljava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$uINaboXBbmj01kSBzEjvFkkEyrQ;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/lang/String;Landroid/telephony/ims/RcsContactUceCapability;I)V

    const-string/jumbo v1, "respondToCapabilityRequest"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public respondToCapabilityRequestWithError(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KfGHlTIPDjp_wBV1DAurP8YpIZw;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    const-string/jumbo v0, "respondToCapabilityRequestWithError"

    invoke-direct {p0, v6, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendCapabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$KBfbIAfuyQhgeV5OXetqYAOMpDE;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/net/Uri;Landroid/telephony/ims/RcsContactUceCapability;I)V

    const-string/jumbo v1, "sendCapabilityRequest"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IRcsFeatureListener;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    # invokes: Landroid/telephony/ims/feature/RcsFeature;->setListener(Landroid/telephony/ims/aidl/IRcsFeatureListener;)V
    invoke-static {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->access$000(Landroid/telephony/ims/feature/RcsFeature;Landroid/telephony/ims/aidl/IRcsFeatureListener;)V

    return-void
.end method

.method public updateCapabilities(Landroid/telephony/ims/RcsContactUceCapability;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/-$$Lambda$RcsFeature$RcsFeatureBinder$mMh1klMwhxUYl0X2ql2T5uAS8oY;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/RcsContactUceCapability;I)V

    const-string/jumbo v1, "updateCapabilities"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
