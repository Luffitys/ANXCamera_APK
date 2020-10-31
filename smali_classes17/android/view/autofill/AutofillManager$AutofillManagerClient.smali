.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    return-void
.end method

.method static synthetic lambda$authenticate$2(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 6

    # invokes: Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    invoke-static/range {p0 .. p5}, Landroid/view/autofill/AutofillManager;->access$2500(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .registers 5

    # invokes: Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;Z)V
    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->access$2600(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic lambda$dispatchUnhandledKey$9(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 4

    # invokes: Landroid/view/autofill/AutofillManager;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$1900(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic lambda$getAugmentedAutofillClient$14(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V
    .registers 2

    # invokes: Landroid/view/autofill/AutofillManager;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->access$1500(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method static synthetic lambda$notifyDisableAutofill$8(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V
    .registers 4

    # invokes: Landroid/view/autofill/AutofillManager;->notifyDisableAutofill(JLandroid/content/ComponentName;)V
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$2000(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$notifyFillUiHidden$7(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .registers 4

    const/4 v0, 0x2

    # invokes: Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V
    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->access$2100(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic lambda$notifyFillUiShown$6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V
    .registers 4

    const/4 v0, 0x1

    # invokes: Landroid/view/autofill/AutofillManager;->notifyCallback(ILandroid/view/autofill/AutofillId;I)V
    invoke-static {p0, p1, p2, v0}, Landroid/view/autofill/AutofillManager;->access$2100(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic lambda$notifyNoFillUi$5(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .registers 4

    # invokes: Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$2200(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic lambda$requestHideFillUi$4(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 3

    const/4 v0, 0x0

    # invokes: Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V
    invoke-static {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->access$2300(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic lambda$requestShowFillUi$3(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7

    # invokes: Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->access$2400(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic lambda$requestShowSoftInput$15(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 2

    # invokes: Landroid/view/autofill/AutofillManager;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->access$1400(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic lambda$setSaveUiState$12(Landroid/view/autofill/AutofillManager;IZ)V
    .registers 3

    # invokes: Landroid/view/autofill/AutofillManager;->setSaveUiState(IZ)V
    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->access$1700(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method static synthetic lambda$setSessionFinished$13(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V
    .registers 3

    # invokes: Landroid/view/autofill/AutofillManager;->setSessionFinished(ILjava/util/List;)V
    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->access$1600(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    return-void
.end method

.method static synthetic lambda$setState$0(Landroid/view/autofill/AutofillManager;I)V
    .registers 2

    # invokes: Landroid/view/autofill/AutofillManager;->setState(I)V
    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->access$2700(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method static synthetic lambda$setTrackedViews$11(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .registers 7

    # invokes: Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->access$1800(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic lambda$startIntentSender$10(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 9

    :try_start_0
    # getter for: Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->access$700(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_25

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIntentSender() failed for intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 15

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_19

    new-instance v8, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;

    move-object v1, v8

    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;-><init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v8}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method public autofill(ILjava/util/List;Ljava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_18

    new-instance v7, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;

    move-object v1, v7

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method

.method public dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .registers 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$diRhCbPquG9lbMilczZW3FIsRVQ;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$diRhCbPquG9lbMilczZW3FIsRVQ;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V
    .registers 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$hCkZWIIgnjguHBxIc5d7zi3IzQY;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$hCkZWIIgnjguHBxIc5d7zi3IzQY;-><init>(Landroid/view/autofill/AutofillManager;Lcom/android/internal/os/IResultReceiver;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public notifyDisableAutofill(JLandroid/content/ComponentName;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$nGHoEL-C5tEDrLAbg_3JSwDnikk;-><init>(Landroid/view/autofill/AutofillManager;JLandroid/content/ComponentName;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    .registers 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$tXABDazS-gnl4cSTqRq7xAnrZwo;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$tXABDazS-gnl4cSTqRq7xAnrZwo;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    .registers 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$C_N0TMarq3R8L6VkaEm7H_n1T7k;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$C_N0TMarq3R8L6VkaEm7H_n1T7k;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .registers 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$K79QnIPRaZuikYDQdsLcIUBhqiI;

    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$K79QnIPRaZuikYDQdsLcIUBhqiI;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .registers 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$dCTetwfU0gT1ZrSzZGZiGStXlOY;

    invoke-direct {v1, v0, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$dCTetwfU0gT1ZrSzZGZiGStXlOY;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_1d

    new-instance v10, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$kRL9XILLc2XNr90gxVDACLzcyqc;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$kRL9XILLc2XNr90gxVDACLzcyqc;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method public requestShowSoftInput(Landroid/view/autofill/AutofillId;)V
    .registers 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$5AR3XMrrRE8rxyNGRepInd-vCsE;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$5AR3XMrrRE8rxyNGRepInd-vCsE;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setSaveUiState(IZ)V
    .registers 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;-><init>(Landroid/view/autofill/AutofillManager;IZ)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setSessionFinished(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$6YlLUns4Jn3OXEyrRSzxW7pT0cE;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$6YlLUns4Jn3OXEyrRSzxW7pT0cE;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setState(I)V
    .registers 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qH36EJk2Hkdja9ZZmTxqYPyr0YA;

    invoke-direct {v1, v0, p1}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$qH36EJk2Hkdja9ZZmTxqYPyr0YA;-><init>(Landroid/view/autofill/AutofillManager;I)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    if-eqz v1, :cond_1d

    new-instance v10, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;

    move-object v2, v10

    move-object v3, v1

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;-><init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_12

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$5gqq5d05q4z8TAod0qB3s7DbGQ0;

    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$5gqq5d05q4z8TAod0qB3s7DbGQ0;-><init>(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    # invokes: Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method
