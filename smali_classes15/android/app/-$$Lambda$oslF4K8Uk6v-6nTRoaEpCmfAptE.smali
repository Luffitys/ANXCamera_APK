.class public final synthetic Landroid/app/-$$Lambda$oslF4K8Uk6v-6nTRoaEpCmfAptE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$oslF4K8Uk6v-6nTRoaEpCmfAptE;->f$0:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/app/-$$Lambda$oslF4K8Uk6v-6nTRoaEpCmfAptE;->f$0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismissDialog()V

    return-void
.end method
