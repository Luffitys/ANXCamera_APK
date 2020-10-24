.class public Lcom/google/android/play/core/listener/StateUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mRegister:Lcom/google/android/play/core/listener/StateUpdateListenerRegister;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/listener/StateUpdateListenerRegister;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/listener/StateUpdatedReceiver;->mRegister:Lcom/google/android/play/core/listener/StateUpdateListenerRegister;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/listener/StateUpdatedReceiver;->mRegister:Lcom/google/android/play/core/listener/StateUpdateListenerRegister;

    invoke-virtual {p0, p2}, Lcom/google/android/play/core/listener/StateUpdateListenerRegister;->onReceived(Landroid/content/Intent;)V

    return-void
.end method
