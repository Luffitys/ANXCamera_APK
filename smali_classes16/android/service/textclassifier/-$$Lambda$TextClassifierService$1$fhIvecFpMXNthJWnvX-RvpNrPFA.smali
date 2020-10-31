.class public final synthetic Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$fhIvecFpMXNthJWnvX-RvpNrPFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/textclassifier/TextClassifierService$1;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$fhIvecFpMXNthJWnvX-RvpNrPFA;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$fhIvecFpMXNthJWnvX-RvpNrPFA;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$fhIvecFpMXNthJWnvX-RvpNrPFA;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iget-object v1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$fhIvecFpMXNthJWnvX-RvpNrPFA;->f$1:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1}, Landroid/service/textclassifier/TextClassifierService$1;->lambda$onDestroyTextClassificationSession$8$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method
