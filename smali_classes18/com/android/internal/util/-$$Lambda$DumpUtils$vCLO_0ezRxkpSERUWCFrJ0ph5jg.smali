.class public final synthetic Lcom/android/internal/util/-$$Lambda$DumpUtils$vCLO_0ezRxkpSERUWCFrJ0ph5jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/util/-$$Lambda$DumpUtils$vCLO_0ezRxkpSERUWCFrJ0ph5jg;->f$0:I

    iput-object p2, p0, Lcom/android/internal/util/-$$Lambda$DumpUtils$vCLO_0ezRxkpSERUWCFrJ0ph5jg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/internal/util/-$$Lambda$DumpUtils$vCLO_0ezRxkpSERUWCFrJ0ph5jg;->f$0:I

    iget-object v1, p0, Lcom/android/internal/util/-$$Lambda$DumpUtils$vCLO_0ezRxkpSERUWCFrJ0ph5jg;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/DumpUtils;->lambda$filterRecord$2(ILjava/lang/String;Landroid/content/ComponentName$WithComponentName;)Z

    move-result p1

    return p1
.end method
