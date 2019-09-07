.class Lcom/ss/android/ugc/effectmanager/EffectManager$4;
.super Ljava/lang/Object;
.source "EffectManager.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/EffectManager;->fetchEffectWithDownload(Ljava/lang/String;Ljava/util/Map;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

.field final synthetic val$iFetchEffectListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectManager;Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$4;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$4;->val$iFetchEffectListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 1

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$4;->val$iFetchEffectListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;->onFail(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$4;->val$iFetchEffectListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$4;->val$iFetchEffectListener:Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    const/4 p1, 0x0

    new-instance v0, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;-><init>(I)V

    invoke-interface {p0, p1, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;->onFail(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :goto_0
    return-void
.end method
