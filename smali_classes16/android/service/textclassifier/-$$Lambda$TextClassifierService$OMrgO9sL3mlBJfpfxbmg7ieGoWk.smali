.class public final synthetic Landroid/service/textclassifier/-$$Lambda$TextClassifierService$OMrgO9sL3mlBJfpfxbmg7ieGoWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/textclassifier/TextClassifierService;

.field public final synthetic f$1:Landroid/service/textclassifier/TextClassifierService$Callback;

.field public final synthetic f$2:Landroid/view/textclassifier/ConversationActions$Request;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/TextClassifierService;Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/ConversationActions$Request;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$OMrgO9sL3mlBJfpfxbmg7ieGoWk;->f$0:Landroid/service/textclassifier/TextClassifierService;

    iput-object p2, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$OMrgO9sL3mlBJfpfxbmg7ieGoWk;->f$1:Landroid/service/textclassifier/TextClassifierService$Callback;

    iput-object p3, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$OMrgO9sL3mlBJfpfxbmg7ieGoWk;->f$2:Landroid/view/textclassifier/ConversationActions$Request;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$OMrgO9sL3mlBJfpfxbmg7ieGoWk;->f$0:Landroid/service/textclassifier/TextClassifierService;

    iget-object v1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$OMrgO9sL3mlBJfpfxbmg7ieGoWk;->f$1:Landroid/service/textclassifier/TextClassifierService$Callback;

    iget-object v2, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$OMrgO9sL3mlBJfpfxbmg7ieGoWk;->f$2:Landroid/view/textclassifier/ConversationActions$Request;

    invoke-virtual {v0, v1, v2}, Landroid/service/textclassifier/TextClassifierService;->lambda$onSuggestConversationActions$1$TextClassifierService(Landroid/service/textclassifier/TextClassifierService$Callback;Landroid/view/textclassifier/ConversationActions$Request;)V

    return-void
.end method
