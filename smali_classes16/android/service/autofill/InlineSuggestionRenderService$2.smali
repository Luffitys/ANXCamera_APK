.class Landroid/service/autofill/InlineSuggestionRenderService$2;
.super Landroid/service/autofill/IInlineSuggestionRenderService$Stub;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/autofill/InlineSuggestionRenderService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/InlineSuggestionRenderService;


# direct methods
.method constructor <init>(Landroid/service/autofill/InlineSuggestionRenderService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/autofill/InlineSuggestionRenderService$2;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    invoke-direct {p0}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$destroySuggestionViews$2(Ljava/lang/Object;II)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService;

    # invokes: Landroid/service/autofill/InlineSuggestionRenderService;->handleDestroySuggestionViews(II)V
    invoke-static {v0, p1, p2}, Landroid/service/autofill/InlineSuggestionRenderService;->access$400(Landroid/service/autofill/InlineSuggestionRenderService;II)V

    return-void
.end method

.method static synthetic lambda$getInlineSuggestionsRendererInfo$1(Ljava/lang/Object;Landroid/os/RemoteCallback;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService;

    # invokes: Landroid/service/autofill/InlineSuggestionRenderService;->handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    invoke-static {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->access$500(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic lambda$renderSuggestion$0(Ljava/lang/Object;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .registers 18

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    # invokes: Landroid/service/autofill/InlineSuggestionRenderService;->handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    invoke-static/range {v0 .. v8}, Landroid/service/autofill/InlineSuggestionRenderService;->access$600(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method


# virtual methods
.method public destroySuggestionViews(II)V
    .registers 8

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$2;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    # getter for: Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/InlineSuggestionRenderService;->access$300(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;->INSTANCE:Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$HLyVtxm57XSuIYYPsfuwvD7CfU0;

    iget-object v2, p0, Landroid/service/autofill/InlineSuggestionRenderService$2;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService$2;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    # getter for: Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/InlineSuggestionRenderService;->access$300(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$P8kuVpV8xrQ2XumDOSp6OzENy78;->INSTANCE:Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$P8kuVpV8xrQ2XumDOSp6OzENy78;

    iget-object v2, p0, Landroid/service/autofill/InlineSuggestionRenderService$2;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .registers 21

    move-object v0, p0

    iget-object v1, v0, Landroid/service/autofill/InlineSuggestionRenderService$2;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    # getter for: Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/service/autofill/InlineSuggestionRenderService;->access$300(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$vd9fhWB_XiCZWrDarmJyqz4P8bk;->INSTANCE:Landroid/service/autofill/-$$Lambda$InlineSuggestionRenderService$2$vd9fhWB_XiCZWrDarmJyqz4P8bk;

    iget-object v3, v0, Landroid/service/autofill/InlineSuggestionRenderService$2;->this$0:Landroid/service/autofill/InlineSuggestionRenderService;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
