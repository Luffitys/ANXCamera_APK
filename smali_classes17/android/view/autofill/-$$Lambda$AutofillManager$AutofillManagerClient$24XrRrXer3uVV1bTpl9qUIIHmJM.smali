.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/IntentSender;

.field public final synthetic f$4:Landroid/content/Intent;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$1:I

    iput p3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$2:I

    iput-object p4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$3:Landroid/content/IntentSender;

    iput-object p5, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$4:Landroid/content/Intent;

    iput-boolean p6, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$1:I

    iget v2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$2:I

    iget-object v3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$3:Landroid/content/IntentSender;

    iget-object v4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$4:Landroid/content/Intent;

    iget-boolean v5, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$24XrRrXer3uVV1bTpl9qUIIHmJM;->f$5:Z

    invoke-static/range {v0 .. v5}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$authenticate$2(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method
