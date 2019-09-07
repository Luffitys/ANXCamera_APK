.class Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;
.super Ljava/lang/Object;
.source "DownloadEffectListTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;->enqueueEffect(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;

.field final synthetic val$effect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->val$effect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->this$0:Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask$1;->val$effect:Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-static {v0, p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;->access$000(Lcom/ss/android/ugc/effectmanager/effect/task/task/DownloadEffectListTask;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V

    return-void
.end method
