.class final Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;
.super Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;
.source "AugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/AugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AugmentedAutofillServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;


# direct methods
.method private constructor <init>(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-direct {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/augmented/AugmentedAutofillService;Landroid/service/autofill/augmented/AugmentedAutofillService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method

.method static synthetic lambda$onConnected$0(Ljava/lang/Object;ZZ)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/AugmentedAutofillService;

    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnConnected(ZZ)V
    invoke-static {v0, p1, p2}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$400(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V

    return-void
.end method

.method static synthetic lambda$onDestroyAllFillWindowsRequest$3(Ljava/lang/Object;)V
    .registers 2

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/AugmentedAutofillService;

    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnDestroyAllFillWindowsRequest()V
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$100(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method

.method static synthetic lambda$onDisconnected$1(Ljava/lang/Object;)V
    .registers 2

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/AugmentedAutofillService;

    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnDisconnected()V
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$300(Landroid/service/autofill/augmented/AugmentedAutofillService;)V

    return-void
.end method

.method static synthetic lambda$onFillRequest$2(Ljava/lang/Object;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 22

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/augmented/AugmentedAutofillService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    invoke-static/range {v0 .. v10}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$200(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method


# virtual methods
.method public onConnected(ZZ)V
    .registers 8

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$000(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$kdJDZZ2SLN99XR4AY3dEKJDihBA;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$kdJDZZ2SLN99XR4AY3dEKJDihBA;

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDestroyAllFillWindowsRequest()V
    .registers 4

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$000(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$JqWwuwRmnQnULki-XknUXGtRGUo;

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisconnected()V
    .registers 4

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$000(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$md9t8PCNmy3FU4EVKPu5Tq_LzEI;

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 24

    move-object v0, p0

    iget-object v1, v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/service/autofill/augmented/AugmentedAutofillService;->access$000(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$rg4bgWPXG7Diy30M48ekR52l-AY;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$AugmentedAutofillServiceImpl$rg4bgWPXG7Diy30M48ekR52l-AY;

    iget-object v3, v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->this$0:Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-static/range {v2 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/DecConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
