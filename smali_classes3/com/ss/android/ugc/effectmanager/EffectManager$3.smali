.class Lcom/ss/android/ugc/effectmanager/EffectManager$3;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/EffectManager;->fetchEffectList(Ljava/lang/String;ZLcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

.field final synthetic val$iFetchEffectChannelListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

.field final synthetic val$whileDownload:Z


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectManager;ZLcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iput-boolean p2, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->val$whileDownload:Z

    iput-object p3, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->val$iFetchEffectChannelListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->val$iFetchEffectChannelListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;)V
    .locals 5

    iget-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->val$whileDownload:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object v0, v0, Lcom/ss/android/ugc/effectmanager/EffectManager;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->getPanel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/utils/EffectCacheKeyGenerator;->generatePanelKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object v1, v1, Lcom/ss/android/ugc/effectmanager/EffectManager;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    invoke-interface {v1, v0}, Lcom/ss/android/ugc/effectmanager/common/listener/ICache;->queryToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object v2, v2, Lcom/ss/android/ugc/effectmanager/EffectManager;->mCache:Lcom/ss/android/ugc/effectmanager/common/listener/ICache;

    invoke-interface {v2, v0}, Lcom/ss/android/ugc/effectmanager/common/listener/ICache;->remove(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;->getAllCategoryEffects()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/ugc/effectmanager/EffectManager;->access$000(Lcom/ss/android/ugc/effectmanager/EffectManager;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    new-instance v4, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/ss/android/ugc/effectmanager/EffectManager$3$1;-><init>(Lcom/ss/android/ugc/effectmanager/EffectManager$3;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v2, v4}, Lcom/ss/android/ugc/effectmanager/EffectManager;->access$200(Lcom/ss/android/ugc/effectmanager/EffectManager;Ljava/util/List;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$3;->val$iFetchEffectChannelListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;)V

    :cond_1
    :goto_0
    return-void
.end method
