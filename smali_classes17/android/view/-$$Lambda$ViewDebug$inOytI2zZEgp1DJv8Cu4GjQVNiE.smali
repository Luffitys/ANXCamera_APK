.class public final synthetic Landroid/view/-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewDebug$ViewOperation;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$$Lambda$ViewDebug$inOytI2zZEgp1DJv8Cu4GjQVNiE;->f$0:Landroid/view/View;

    invoke-static {v0}, Landroid/view/ViewDebug;->lambda$profileViewLayout$0(Landroid/view/View;)V

    return-void
.end method
