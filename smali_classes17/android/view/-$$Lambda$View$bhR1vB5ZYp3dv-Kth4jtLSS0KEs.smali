.class public final synthetic Landroid/view/-$$Lambda$View$bhR1vB5ZYp3dv-Kth4jtLSS0KEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$View$bhR1vB5ZYp3dv-Kth4jtLSS0KEs;->f$0:Landroid/view/View;

    iput-object p2, p0, Landroid/view/-$$Lambda$View$bhR1vB5ZYp3dv-Kth4jtLSS0KEs;->f$1:Landroid/view/View;

    iput-object p3, p0, Landroid/view/-$$Lambda$View$bhR1vB5ZYp3dv-Kth4jtLSS0KEs;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Landroid/view/-$$Lambda$View$bhR1vB5ZYp3dv-Kth4jtLSS0KEs;->f$0:Landroid/view/View;

    iget-object v1, p0, Landroid/view/-$$Lambda$View$bhR1vB5ZYp3dv-Kth4jtLSS0KEs;->f$1:Landroid/view/View;

    iget-object v2, p0, Landroid/view/-$$Lambda$View$bhR1vB5ZYp3dv-Kth4jtLSS0KEs;->f$2:Landroid/view/View;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/View;->lambda$findUserSetNextFocus$0$View(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
