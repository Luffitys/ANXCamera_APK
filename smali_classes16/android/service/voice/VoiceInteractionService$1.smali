.class Landroid/service/voice/VoiceInteractionService$1;
.super Landroid/service/voice/IVoiceInteractionService$Stub;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$getActiveServiceSupportedActions$2(Ljava/lang/Object;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/voice/VoiceInteractionService;

    # invokes: Landroid/service/voice/VoiceInteractionService;->onHandleVoiceActionCheck(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    invoke-static {v0, p1, p2}, Landroid/service/voice/VoiceInteractionService;->access$000(Landroid/service/voice/VoiceInteractionService;Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    return-void
.end method

.method static synthetic lambda$shutdown$0(Ljava/lang/Object;)V
    .registers 2

    move-object v0, p0

    check-cast v0, Landroid/service/voice/VoiceInteractionService;

    # invokes: Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->access$200(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method

.method static synthetic lambda$soundModelsChanged$1(Ljava/lang/Object;)V
    .registers 2

    move-object v0, p0

    check-cast v0, Landroid/service/voice/VoiceInteractionService;

    # invokes: Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->access$100(Landroid/service/voice/VoiceInteractionService;)V

    return-void
.end method


# virtual methods
.method public getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/voice/-$$Lambda$VoiceInteractionService$1$gKwKkiuvnPnBCMXtKcZDpBR3098;->INSTANCE:Landroid/service/voice/-$$Lambda$VoiceInteractionService$1$gKwKkiuvnPnBCMXtKcZDpBR3098;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;->INSTANCE:Landroid/service/voice/-$$Lambda$2vcT7tC5Khx2oNbQI6Zvwrft_YM;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public ready()V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;->INSTANCE:Landroid/service/voice/-$$Lambda$SpnCJ0NiI1Uo14qQ5iHFyV2F2mY;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public shutdown()V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/voice/-$$Lambda$VoiceInteractionService$1$ILMD_OnlN3EpU4AqKW9H-tgCoMg;->INSTANCE:Landroid/service/voice/-$$Lambda$VoiceInteractionService$1$ILMD_OnlN3EpU4AqKW9H-tgCoMg;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public soundModelsChanged()V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/voice/-$$Lambda$VoiceInteractionService$1$WnZueQJxACwCZWfYsmNtGrcNbEc;->INSTANCE:Landroid/service/voice/-$$Lambda$VoiceInteractionService$1$WnZueQJxACwCZWfYsmNtGrcNbEc;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method
