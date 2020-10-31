.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/IAutoFillManager;

.field public final synthetic f$1:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;->f$0:Landroid/view/autofill/IAutoFillManager;

    iput-object p2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    iput p3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;->f$0:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;->f$1:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->lambda$ensureServiceClientAddedIfNeededLocked$1(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V

    return-void
.end method
