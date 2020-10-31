.class public final synthetic Landroid/app/-$$Lambda$AppOpsManager$frSyqmhVUmNbhMckfMS3PSwTMlw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/app/AppOpsManager$HistoricalOps;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$AppOpsManager$frSyqmhVUmNbhMckfMS3PSwTMlw;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/app/-$$Lambda$AppOpsManager$frSyqmhVUmNbhMckfMS3PSwTMlw;->f$1:Landroid/app/AppOpsManager$HistoricalOps;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/-$$Lambda$AppOpsManager$frSyqmhVUmNbhMckfMS3PSwTMlw;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/app/-$$Lambda$AppOpsManager$frSyqmhVUmNbhMckfMS3PSwTMlw;->f$1:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->lambda$getHistoricalOps$0(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    return-void
.end method
