.class final Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;
.super Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.source "AutofillFieldClassificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutofillFieldClassificationServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/autofill/AutofillFieldClassificationService;


# direct methods
.method private constructor <init>(Landroid/service/autofill/AutofillFieldClassificationService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    invoke-direct {p0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/service/autofill/AutofillFieldClassificationService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;-><init>(Landroid/service/autofill/AutofillFieldClassificationService;)V

    return-void
.end method

.method static synthetic lambda$calculateScores$0(Ljava/lang/Object;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .registers 18

    move-object v0, p0

    check-cast v0, Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    # invokes: Landroid/service/autofill/AutofillFieldClassificationService;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    invoke-static/range {v0 .. v8}, Landroid/service/autofill/AutofillFieldClassificationService;->access$300(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallback;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    # getter for: Landroid/service/autofill/AutofillFieldClassificationService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/service/autofill/AutofillFieldClassificationService;->access$200(Landroid/service/autofill/AutofillFieldClassificationService;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$mUalgFt87R5lup2LhB9vW49Xixs;->INSTANCE:Landroid/service/autofill/-$$Lambda$AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$mUalgFt87R5lup2LhB9vW49Xixs;

    iget-object v3, v0, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->this$0:Landroid/service/autofill/AutofillFieldClassificationService;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/NonaConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
