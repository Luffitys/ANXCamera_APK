.class Lcom/ss/android/ugc/effectmanager/EffectManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/effect/repository/EffectRepository$EffectListener;


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$2;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateEffectListStatus(Ljava/lang/String;Ljava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$2;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager;->mEffectStore:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->updateEffectListDownloadStatus(Ljava/lang/String;Ljava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    return-void
.end method

.method public updateEffectStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager$2;->this$0:Lcom/ss/android/ugc/effectmanager/EffectManager;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/EffectManager;->mEffectStore:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->updateEffectDownloadStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    return-void
.end method
