.class Landroid/service/textclassifier/TextClassifierService$1;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "TextClassifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/TextClassifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic this$0:Landroid/service/textclassifier/TextClassifierService;


# direct methods
.method constructor <init>(Landroid/service/textclassifier/TextClassifierService;)V
    .registers 3

    iput-object p1, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClassifyText$1$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 8

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$1;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public synthetic lambda$onCreateTextClassificationSession$7$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 4

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public synthetic lambda$onDestroyTextClassificationSession$8$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 3

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1}, Landroid/service/textclassifier/TextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public synthetic lambda$onDetectLanguage$5$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 8

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$1;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public synthetic lambda$onGenerateLinks$2$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 8

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$1;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public synthetic lambda$onSelectionEvent$3$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method public synthetic lambda$onSuggestConversationActions$6$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 8

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$1;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public synthetic lambda$onSuggestSelection$0$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 8

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p3, v3}, Landroid/service/textclassifier/TextClassifierService$ProxyCallback;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;Landroid/service/textclassifier/TextClassifierService$1;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/os/CancellationSignal;Landroid/service/textclassifier/TextClassifierService$Callback;)V

    return-void
.end method

.method public synthetic lambda$onTextClassifierEvent$4$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    invoke-virtual {v0, p1, p2}, Landroid/service/textclassifier/TextClassifierService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method public onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$LziW7ahHkWlZlAFekrEQR96QofM;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$LziW7ahHkWlZlAFekrEQR96QofM;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onConnectedStateChanged(I)V
    .registers 5

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    if-nez p1, :cond_10

    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    new-instance v2, Landroid/service/textclassifier/-$$Lambda$uKcogIuTIdZyVutMMtkIe7_k8YE;

    invoke-direct {v2, v1}, Landroid/service/textclassifier/-$$Lambda$uKcogIuTIdZyVutMMtkIe7_k8YE;-><init>(Landroid/service/textclassifier/TextClassifierService;)V

    goto :goto_17

    :cond_10
    iget-object v1, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    new-instance v2, Landroid/service/textclassifier/-$$Lambda$7kiCIPNXdsOY6kUm9cdfxiUlQ3s;

    invoke-direct {v2, v1}, Landroid/service/textclassifier/-$$Lambda$7kiCIPNXdsOY6kUm9cdfxiUlQ3s;-><init>(Landroid/service/textclassifier/TextClassifierService;)V

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 4

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$fhIvecFpMXNthJWnvX-RvpNrPFA;

    invoke-direct {v1, p0, p1}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$fhIvecFpMXNthJWnvX-RvpNrPFA;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$lcpBFMoy_hRkYQ42cWViBMbNnMk;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$lcpBFMoy_hRkYQ42cWViBMbNnMk;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$suS99xMAl9SLES4WhRmaub16wIc;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$suS99xMAl9SLES4WhRmaub16wIc;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .registers 5

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$-Nsl56ysLPoVPJ4Gu0VUwYCh4wE;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$-Nsl56ysLPoVPJ4Gu0VUwYCh4wE;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$Xkudza2Bh6W4NodH1DO-FiRgfuM;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$Xkudza2Bh6W4NodH1DO-FiRgfuM;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 6

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$mKOXH9oGuUFyRz-Oo15GnAPhABs;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$mKOXH9oGuUFyRz-Oo15GnAPhABs;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 5

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/textclassifier/TextClassifierService$1;->this$0:Landroid/service/textclassifier/TextClassifierService;

    # getter for: Landroid/service/textclassifier/TextClassifierService;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/textclassifier/TextClassifierService;->access$000(Landroid/service/textclassifier/TextClassifierService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;-><init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
