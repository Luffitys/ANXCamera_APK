.class public final synthetic Landroid/view/-$$Lambda$ScrollCaptureClient$Wx8q2o_h2xkFAIBvHcSi3uj-Sm0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureClient;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureClient;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$Wx8q2o_h2xkFAIBvHcSi3uj-Sm0;->f$0:Landroid/view/ScrollCaptureClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/-$$Lambda$ScrollCaptureClient$Wx8q2o_h2xkFAIBvHcSi3uj-Sm0;->f$0:Landroid/view/ScrollCaptureClient;

    invoke-virtual {v0}, Landroid/view/ScrollCaptureClient;->lambda$startCapture$0$ScrollCaptureClient()V

    return-void
.end method
