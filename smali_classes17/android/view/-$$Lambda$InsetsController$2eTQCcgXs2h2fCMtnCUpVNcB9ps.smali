.class public final synthetic Landroid/view/-$$Lambda$InsetsController$2eTQCcgXs2h2fCMtnCUpVNcB9ps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsController;

.field public final synthetic f$1:Landroid/view/InsetsController$PendingControlRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsController;Landroid/view/InsetsController$PendingControlRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$InsetsController$2eTQCcgXs2h2fCMtnCUpVNcB9ps;->f$0:Landroid/view/InsetsController;

    iput-object p2, p0, Landroid/view/-$$Lambda$InsetsController$2eTQCcgXs2h2fCMtnCUpVNcB9ps;->f$1:Landroid/view/InsetsController$PendingControlRequest;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$InsetsController$2eTQCcgXs2h2fCMtnCUpVNcB9ps;->f$0:Landroid/view/InsetsController;

    iget-object v1, p0, Landroid/view/-$$Lambda$InsetsController$2eTQCcgXs2h2fCMtnCUpVNcB9ps;->f$1:Landroid/view/InsetsController$PendingControlRequest;

    invoke-virtual {v0, v1}, Landroid/view/InsetsController;->lambda$controlAnimationUnchecked$4$InsetsController(Landroid/view/InsetsController$PendingControlRequest;)V

    return-void
.end method
