.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$1:I

    iput-object p3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$2:Ljava/util/List;

    iput-object p4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$3:Ljava/util/List;

    iput-boolean p5, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$1:I

    iget-object v2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$2:Ljava/util/List;

    iget-object v3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$3:Ljava/util/List;

    iget-boolean v4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$M5cIHWp4VjSrFSjWPhPkW66WcgE;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method
