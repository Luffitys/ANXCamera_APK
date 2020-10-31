.class public final synthetic Landroid/view/-$$Lambda$kl-1KEyg7FwPQcg9XfREJM1iCiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsAnimationControlImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsAnimationControlImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$kl-1KEyg7FwPQcg9XfREJM1iCiM;->f$0:Landroid/view/InsetsAnimationControlImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$$Lambda$kl-1KEyg7FwPQcg9XfREJM1iCiM;->f$0:Landroid/view/InsetsAnimationControlImpl;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationControlImpl;->cancel()V

    return-void
.end method
