.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/view/ViewGroup;

.field public final synthetic f$2:Ljava/io/BufferedWriter;

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$0:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$1:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$2:Ljava/io/BufferedWriter;

    iput p4, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$3:I

    iput-boolean p5, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$4:Z

    iput-boolean p6, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$0:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$1:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$2:Ljava/io/BufferedWriter;

    iget v3, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$3:I

    iget-boolean v4, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$4:Z

    iget-boolean v5, p0, Landroid/view/-$$Lambda$ViewDebug$bTxz__vo-V1ixs-gVm1TKHAK8HQ;->f$5:Z

    invoke-static/range {v0 .. v5}, Landroid/view/ViewDebug;->lambda$dumpViewHierarchy$5(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;IZZ)V

    return-void
.end method
