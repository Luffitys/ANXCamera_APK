.class public final synthetic Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/service/textclassifier/TextClassifierService$1;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassificationContext;

.field public final synthetic f$2:Landroid/view/textclassifier/TextClassificationSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/service/textclassifier/TextClassifierService$1;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iput-object p2, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;->f$1:Landroid/view/textclassifier/TextClassificationContext;

    iput-object p3, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;->f$2:Landroid/view/textclassifier/TextClassificationSessionId;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;->f$0:Landroid/service/textclassifier/TextClassifierService$1;

    iget-object v1, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;->f$1:Landroid/view/textclassifier/TextClassificationContext;

    iget-object v2, p0, Landroid/service/textclassifier/-$$Lambda$TextClassifierService$1$oecuM3n2XJWuEPg_O0hSZtoF0ls;->f$2:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, v1, v2}, Landroid/service/textclassifier/TextClassifierService$1;->lambda$onCreateTextClassificationSession$7$TextClassifierService$1(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method
