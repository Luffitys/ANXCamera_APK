.class public final synthetic Landroid/telecom/-$$Lambda$Connection$noXZvls4rxmO_SOjgkFMZLLrfSg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telecom/Connection;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Connection;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/-$$Lambda$Connection$noXZvls4rxmO_SOjgkFMZLLrfSg;->f$0:Landroid/telecom/Connection;

    iput p2, p0, Landroid/telecom/-$$Lambda$Connection$noXZvls4rxmO_SOjgkFMZLLrfSg;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/telecom/-$$Lambda$Connection$noXZvls4rxmO_SOjgkFMZLLrfSg;->f$0:Landroid/telecom/Connection;

    iget v1, p0, Landroid/telecom/-$$Lambda$Connection$noXZvls4rxmO_SOjgkFMZLLrfSg;->f$1:I

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection;->lambda$sendRttInitiationFailure$1$Connection(ILandroid/telecom/Connection$Listener;)V

    return-void
.end method
