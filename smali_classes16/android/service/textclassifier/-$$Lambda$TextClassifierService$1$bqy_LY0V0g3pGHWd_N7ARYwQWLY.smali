.class public final synthetic Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/textclassifier/TextClassifierService$1;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;

.field public final synthetic f$2:Landroid/view/textclassifier/TextClassifierEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p3, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;->f$2:Landroid/view/textclassifier/TextClassifierEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iget-object v1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v2, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$bqy_LY0V0g3pGHWd_N7ARYwQWLY;->f$2:Landroid/view/textclassifier/TextClassifierEvent;

    invoke-virtual {v0, v1, v2}, Landroid/service/textclassifier/TextClassifierService$1;->lambda$onTextClassifierEvent$4$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method
