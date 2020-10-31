.class public final synthetic Landroid/app/-$$Lambda$AppOpsManager$HistoricalOp$DkVcBvqB32SMHlxw0sWQPh3GL1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/app/AppOpsManager$HistoricalOp;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$AppOpsManager$HistoricalOp$DkVcBvqB32SMHlxw0sWQPh3GL1A;->f$0:Landroid/app/AppOpsManager$HistoricalOp;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/app/-$$Lambda$AppOpsManager$HistoricalOp$DkVcBvqB32SMHlxw0sWQPh3GL1A;->f$0:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-static {v0}, Landroid/app/AppOpsManager$HistoricalOp;->lambda$DkVcBvqB32SMHlxw0sWQPh3GL1A(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method
