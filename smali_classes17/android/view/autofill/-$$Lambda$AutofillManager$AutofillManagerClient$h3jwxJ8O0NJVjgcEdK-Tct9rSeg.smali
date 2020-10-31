.class public final synthetic Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/autofill/AutofillManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Landroid/view/autofill/AutofillId;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:[Landroid/view/autofill/AutofillId;

.field public final synthetic f$6:Landroid/view/autofill/AutofillId;


# direct methods
.method public synthetic constructor <init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$0:Landroid/view/autofill/AutofillManager;

    iput p2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$1:I

    iput-object p3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$2:[Landroid/view/autofill/AutofillId;

    iput-boolean p4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$3:Z

    iput-boolean p5, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$4:Z

    iput-object p6, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$5:[Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$6:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$0:Landroid/view/autofill/AutofillManager;

    iget v1, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$1:I

    iget-object v2, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$2:[Landroid/view/autofill/AutofillId;

    iget-boolean v3, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$3:Z

    iget-boolean v4, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$4:Z

    iget-object v5, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$5:[Landroid/view/autofill/AutofillId;

    iget-object v6, p0, Landroid/view/autofill/-$$Lambda$AutofillManager$AutofillManagerClient$h3jwxJ8O0NJVjgcEdK-Tct9rSeg;->f$6:Landroid/view/autofill/AutofillId;

    invoke-static/range {v0 .. v6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$setTrackedViews$11(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-void
.end method
