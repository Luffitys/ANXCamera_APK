.class public Landroid/content/integrity/AppIntegrityManager;
.super Ljava/lang/Object;
.source "AppIntegrityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.content.integrity.extra.STATUS"

.field public static final STATUS_FAILURE:I = 0x1

.field public static final STATUS_SUCCESS:I


# instance fields
.field mManager:Landroid/content/integrity/IAppIntegrityManager;


# direct methods
.method public constructor <init>(Landroid/content/integrity/IAppIntegrityManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    return-void
.end method


# virtual methods
.method public getCurrentRuleSet()Landroid/content/integrity/RuleSet;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v1}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/integrity/RuleSet$Builder;

    invoke-direct {v2}, Landroid/content/integrity/RuleSet$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/integrity/RuleSet$Builder;->setVersion(Ljava/lang/String;)Landroid/content/integrity/RuleSet$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/integrity/RuleSet$Builder;->addRules(Ljava/util/List;)Landroid/content/integrity/RuleSet$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/integrity/RuleSet$Builder;->build()Landroid/content/integrity/RuleSet;

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v2

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentRuleSetProvider()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentRuleSetVersion()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWhitelistedRuleProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getWhitelistedRuleProviders()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateRuleSet(Landroid/content/integrity/RuleSet;Landroid/content/IntentSender;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-virtual {p1}, Landroid/content/integrity/RuleSet;->getVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1}, Landroid/content/integrity/RuleSet;->getRules()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2, p2}, Landroid/content/integrity/IAppIntegrityManager;->updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
