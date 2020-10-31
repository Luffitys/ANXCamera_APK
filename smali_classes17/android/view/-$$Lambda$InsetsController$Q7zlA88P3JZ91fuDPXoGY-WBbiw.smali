.class public final synthetic Landroid/view/-$$Lambda$InsetsController$Q7zlA88P3JZ91fuDPXoGY-WBbiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsController;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsController;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$InsetsController$Q7zlA88P3JZ91fuDPXoGY-WBbiw;->f$0:Landroid/view/InsetsController;

    iput-object p2, p0, Landroid/view/-$$Lambda$InsetsController$Q7zlA88P3JZ91fuDPXoGY-WBbiw;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$InsetsController$Q7zlA88P3JZ91fuDPXoGY-WBbiw;->f$0:Landroid/view/InsetsController;

    iget-object v1, p0, Landroid/view/-$$Lambda$InsetsController$Q7zlA88P3JZ91fuDPXoGY-WBbiw;->f$1:[I

    invoke-virtual {v0, v1}, Landroid/view/InsetsController;->lambda$updateState$3$InsetsController([I)V

    return-void
.end method
