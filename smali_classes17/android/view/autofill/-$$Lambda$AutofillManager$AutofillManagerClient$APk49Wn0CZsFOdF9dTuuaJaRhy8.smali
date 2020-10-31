.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;->f$1:I

    iput-boolean p3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;->f$1:I

    iget-boolean v2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$APk49Wn0CZsFOdF9dTuuaJaRhy8;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$setSaveUiState$12(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method
